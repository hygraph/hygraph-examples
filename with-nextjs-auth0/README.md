# GraphCMS ⨯ Next.js ⨯ Auth0

[Join our Slack](https://slack.graphcms.com)

<details>
  <summary>Auth0 Custom Flow Action</summary>

```js
const { GraphQLClient, gql } = require('graphql-request');

const CreateAuthUserMutation = gql`
  mutation CreateAuthUser($auth0Id: String!, $name: String, $email: String) {
    createAuthUser(data: { auth0Id: $auth0Id, name: $name, email: $email }) {
      id
    }
  }
`;

exports.onExecutePostUserRegistration = async (event) => {
  const client = new GraphQLClient(event.secrets.GRAPHCMS_ENDPOINT, {
    headers: {
      Authorization: `Bearer ${event.secrets.GRAPHCMS_TOKEN}`,
    },
  });

  await client.request(CreateAuthUserMutation, {
    auth0Id: event.user.user_id,
    name: event.user.email,
    email: event.user.email,
  });
};
```

</details>
