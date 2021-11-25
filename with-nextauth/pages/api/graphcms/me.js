import { getSession } from 'next-auth/react';
import { gql } from 'graphql-request';

import { client } from '../../../lib/graphcms';

const GetUserByEmail = gql`
  query GetNextAuthUserByEmail($email: String!) {
    user: nextAuthUser(where: { email: $email }, stage: DRAFT) {
      id
      email
      createdAt
    }
  }
`;

export default async (req, res) => {
  const session = await getSession({ req });

  if (!session) {
    res.json({ message: 'You need to be logged in to do that.' });
  }

  try {
    const { user } = await client.request(GetUserByEmail, {
      email: session.user.email,
    });

    res.json(user);
  } catch (err) {
    res
      .status(500)
      .json({ message: 'There was an error getting your user profile.' });
  }
};
