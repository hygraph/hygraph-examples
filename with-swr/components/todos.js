import { useState } from 'react';
import useSWR, { mutate } from 'swr';
import { XIcon } from '@heroicons/react/solid';
import cc from 'classcat';

async function jsonFetcher(url) {
  const res = await fetch(url);
  return res.json();
}

function UpdateItemForm({ todo, onSubmit }) {
  const [currentTodoCompleted, setCurrentTodoCompleted] = useState(
    todo.completed
  );
  const [currentTodoDescription, setCurrentTodoDescription] = useState(
    todo.description
  );

  const handleSubmit = (e) => {
    e.preventDefault();

    onSubmit({
      completed: currentTodoCompleted,
      description: currentTodoDescription,
    });
  };

  return (
    <form onSubmit={handleSubmit} className="flex items-center space-x-3">
      <input
        name="completed"
        type="checkbox"
        className="border-gray-400 group-hover:border-gray-800 shadow-sm rounded w-5 h-5"
        checked={currentTodoCompleted}
        onChange={(e) => setCurrentTodoCompleted(e.target.checked)}
      />

      <input
        autoFocus
        required
        type="text"
        placeholder="Enter todo description"
        value={currentTodoDescription}
        onChange={(e) => setCurrentTodoDescription(e.target.value)}
        className="border-gray-200 rounded shadow-sm w-full"
      />
    </form>
  );
}

function TodoItem({ id, description, completed, onUpdateTodo, onDeleteTodo }) {
  const [isEditing, setIsEditing] = useState(false);

  const handleToggle = () => {
    onUpdateTodo({ id, completed: !completed });
  };

  const handleUpdate = (data) => {
    onUpdateTodo({ id, ...data });
    setIsEditing(false);
  };

  const handleDelete = () => onDeleteTodo({ id });

  return (
    <li className="px-6 py-3 group transition hover:bg-gray-50">
      {isEditing ? (
        <UpdateItemForm
          todo={{ id, completed, description }}
          onSubmit={handleUpdate}
        />
      ) : (
        <div className="flex items-center space-x-3">
          <input
            type="checkbox"
            className="border-gray-400 group-hover:border-gray-800 shadow-sm rounded w-5 h-5"
            checked={completed}
            onChange={handleToggle}
          />

          <div className="flex-1">
            <p
              className={cc([
                'text-sm text-gray-600',
                {
                  'line-through opacity-50': completed,
                  'group-hover:text-gray-800': !completed,
                },
              ])}
              onClick={() => setIsEditing(true)}
            >
              {description}
            </p>
          </div>

          <div>
            <button className="appearance-none p-1" onClick={handleDelete}>
              <XIcon className="w-5 h-5 fill-current text-gray-200 group-hover:text-gray-500 transition-colors" />
            </button>
          </div>
        </div>
      )}
    </li>
  );
}

function TodoList({ items = [], onNewTodo, onUpdateTodo, onDeleteTodo }) {
  const [newTodoDescription, setnewTodoDescription] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    onNewTodo({ description: newTodoDescription });
    setnewTodoDescription('');
  };

  return (
    <div className="bg-white rounded">
      <ul className="rounded divide-y divide-gray-200 border border-gray-200 overflow-hidden">
        {items.map((todo) => (
          <TodoItem
            key={todo.id}
            {...todo}
            onUpdateTodo={onUpdateTodo}
            onDeleteTodo={onDeleteTodo}
          />
        ))}
        <div className="px-6 py-3">
          <form onSubmit={handleSubmit} className="flex items-center space-x-3">
            <input
              disabled
              type="checkbox"
              className="border-gray-400 group-hover:border-gray-800 shadow-sm rounded w-5 h-5"
            />
            <input
              autoFocus
              required
              type="text"
              placeholder="Add a new todo"
              value={newTodoDescription}
              onChange={(e) => setnewTodoDescription(e.target.value)}
              className="border-gray-200 rounded shadow-sm w-full"
            />
          </form>
        </div>
      </ul>
    </div>
  );
}

export default function Todos() {
  const { data } = useSWR('/api/todos', jsonFetcher);

  if (!data) {
    return <p>Fetching todos from GraphCMS...</p>;
  }

  const addTodo = async ({ description }) => {
    const optimisticItem = {
      id: Math.random(),
      description,
      completed: false,
    };

    mutate('/api/todos', [...data, optimisticItem], false);

    const response = await fetch('/api/todos', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ description, completed: false }),
    });

    if (!response.ok) {
      const { error } = await response.json();
      throw new Error(error);
    }

    const newItem = await response.json();

    await mutate(
      '/api/todos',
      (existingData) => {
        const newData = [];

        for (const item of existingData) {
          if (item.id === optimisticItem.id) {
            newData.push(newItem);
            continue;
          }

          newData.push(item);
        }

        return newData;
      },
      false
    );
  };

  const updateTodo = async ({ id, ...todo }) => {
    const optimisticData = data.map((item) =>
      item.id === id ? { ...item, ...todo } : item
    );

    mutate('/api/todos', optimisticData, false);

    const response = await fetch(`/api/todos/${id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(todo),
    });

    if (!response.ok) {
      const { error } = await response.json();
      throw new Error(error);
    }

    const updatedItem = await response.json();

    await mutate(
      '/api/todos',
      (existingData) =>
        existingData.map((item) => (item.id === id ? updatedItem : item)),
      false
    );
  };

  const removeTodo = async ({ id }) => {
    const optimisticData = data.filter((item) => item.id !== id);

    mutate('/api/todos', optimisticData, false);

    const response = await fetch(`/api/todos/${id}`, {
      method: 'DELETE',
    });

    if (!response.ok) {
      const { error } = await response.json();
      throw new Error(error);
    }
  };

  return (
    <TodoList
      items={data}
      onNewTodo={addTodo}
      onDeleteTodo={removeTodo}
      onUpdateTodo={updateTodo}
    />
  );
}
