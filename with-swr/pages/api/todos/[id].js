import { gql } from 'graphql-request';
import { getSession } from 'next-auth/react';

import { graphcmsClient } from '../../../lib/graphcms';

const UpdateTodoById = gql`
  mutation UpdateTodoById(
    $id: ID!
    $description: String
    $completed: Boolean
    $userId: ID!
  ) {
    todo: updateTodo(
      where: { id: $id }
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

const DeleteTodoById = gql`
  mutation DeleteTodoById($id: ID!) {
    deleteTodo(where: { id: $id }) {
      id
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
    case 'patch': {
      const { id } = req.query;
      const { description, completed } = req.body;

      // Check is owner?

      const { todo } = await graphcmsClient.request(UpdateTodoById, {
        id,
        description,
        completed,
        userId: session.userId,
      });

      res.status(200).json(todo);
      break;
    }

    case 'delete': {
      const { id } = req.query;

      // Check is owner?

      await graphcmsClient.request(DeleteTodoById, {
        id,
      });

      res.status(204).send();
      break;
    }

    default: {
      res.status(405).send();
    }
  }
};
