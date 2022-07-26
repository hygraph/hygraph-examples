import { gql } from 'graphql-request';
import { getSession } from 'next-auth/react';

import { hygraphClient } from '../../../lib/hygraph';

export const GetAllTodosByUser = gql`
  query GetAllTodosByUser($userId: ID!) {
    todos(where: { nextAuthUser: { id: $userId } }, orderBy: createdAt_ASC) {
      id
      description
      completed
    }
  }
`;

const CreateNewTodoForUser = gql`
  mutation CreateNewTodoForUser(
    $description: String!
    $completed: Boolean
    $userId: ID!
  ) {
    todo: createTodo(
      data: {
        description: $description
        completed: $completed
        nextAuthUser: { connect: { id: $userId } }
      }
    ) {
      id
      description
      completed
    }
  }
`;

export default async (req, res) => {
  const session = await getSession({ req });

  if (!session) {
    res.status(401).send({
      error: 'Unauthorized',
    });
  }

  switch (req.method.toLowerCase()) {
    case 'get': {
      const { todos } = await hygraphClient.request(GetAllTodosByUser, {
        userId: session.userId,
      });

      res.status(200).json(todos);
      break;
    }

    case 'post': {
      const { description, completed } = req.body;

      const { todo } = await hygraphClient.request(CreateNewTodoForUser, {
        description,
        completed,
        userId: session.userId,
      });

      res.status(201).json(todo);
      break;
    }

    default: {
      res.status(405).send();
    }
  }
};
