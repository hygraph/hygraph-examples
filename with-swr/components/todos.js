import { useState } from 'react';
import useSWR, { mutate } from 'swr';

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
    <form onSubmit={handleSubmit}>
      <input
        name="completed"
        type="checkbox"
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
    <li>
      {isEditing ? (
        <UpdateItemForm
          todo={{ id, completed, description }}
          onSubmit={handleUpdate}
        />
      ) : (
        <>
          <input type="checkbox" checked={completed} onChange={handleToggle} />

          <span
            style={{
              textDecoration: completed ? 'line-through' : 'none',
            }}
            onClick={() => setIsEditing(true)}
          >
            {description}
          </span>

          <button onClick={handleDelete}>&times;</button>
        </>
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
    <div>
      <ul>
        {items.map((todo) => (
          <TodoItem
            key={todo.id}
            {...todo}
            onUpdateTodo={onUpdateTodo}
            onDeleteTodo={onDeleteTodo}
          />
        ))}
        <li>
          <form onSubmit={handleSubmit}>
            <input disabled type="checkbox" />
            <input
              autoFocus
              required
              type="text"
              placeholder="Add a new todo"
              value={newTodoDescription}
              onChange={(e) => setnewTodoDescription(e.target.value)}
            />
          </form>
        </li>
      </ul>
    </div>
  );
}

export default function Todos() {
  const { data } = useSWR('/api/todos', jsonFetcher);

  if (!data) {
    return 'loading...';
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
