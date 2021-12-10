import { gql } from 'graphql-request';
import { withApiAuthRequired, getSession } from '@auth0/nextjs-auth0';

import { graphcmsClient } from '../../lib/graphcms';

const UpdateAuthUser = gql`
  mutation updateAuthUser($auth0Id: String!, $name: String, $bio: String) {
    updateAuthUser(
      data: { name: $name, bio: $bio }
      where: { auth0Id: $auth0Id }
    ) {
      id
      name
      email
      bio
      auth0Id
    }
  }
`;

export default withApiAuthRequired(async (req, res) => {
  const { user } = getSession(req, res);

  if (user) {
    const { name, bio } = JSON.parse(req.body);

    const { updateAuthUser } = await graphcmsClient.request(UpdateAuthUser, {
      auth0Id: user.sub,
      name,
      bio,
    });

    res.json(updateAuthUser);
  } else {
    res.send({
      error: 'You must be sign in to update your account.',
    });
  }
});
