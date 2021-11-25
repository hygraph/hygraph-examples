import NextAuth from 'next-auth';
import GitHubProvider from 'next-auth/providers/github';
import { GraphQLClient, gql } from 'graphql-request';

const NextAuthUserFragment = gql`
  fragment NextAuthUserFragment on NextAuthUser {
    email
    id
    image
    name
    emailVerified
  }
`;

const NextAuthSessionFragment = gql`
  fragment NextAuthSessionFragment on NextAuthSession {
    sessionToken
    expires
  }
`;

const CreateNextAuthUser = gql`
  mutation CreateNextAuthUser($data: NextAuthUserCreateInput!) {
    createNextAuthUser(data: $data) {
      ...NextAuthUserFragment
    }
  }
  ${NextAuthUserFragment}
`;

const GetNextAuthUserById = gql`
  query GetNextAuthUserById($id: ID!) {
    nextAuthUser(where: { id: $id }) {
      ...NextAuthUserFragment
    }
  }
  ${NextAuthUserFragment}
`;

const GetNextAuthUserByEmail = gql`
  query GetNextAuthUserByEmail($email: String!) {
    nextAuthUser(where: { email: $email }) {
      ...NextAuthUserFragment
    }
  }
  ${NextAuthUserFragment}
`;

const GetUserByProviderAccountId = gql`
  query GetUserByProviderAccountId(
    $provider: String!
    $providerAccountId: String!
  ) {
    nextAuthAccounts(
      where: {
        AND: [
          { provider: $provider }
          { providerAccountId: $providerAccountId }
        ]
      }
    ) {
      user {
        ...NextAuthUserFragment
      }
    }
  }
  ${NextAuthUserFragment}
`;

const UpdateNextAuthUser = gql`
  mutation UpdateNextAuthUser($id: ID!, $data: NextAuthUserUpdateInput!) {
    updateNextAuthUser(where: { id: $id }, data: $data) {
      ...NextAuthUserFragment
    }
  }
  ${NextAuthUserFragment}
`;

const DeleteNextAuthUser = gql`
  mutation DeleteNextAuthUser($id: ID!) {
    deleteNextAuthUser(where: { id: $id }) {
      id
    }
  }
`;

const CreateNextAuthAccount = gql`
  mutation CreateNextAuthAccount($data: NextAuthAccountCreateInput!) {
    createNextAuthAccount(data: $data) {
      id
      type
      provider
      providerAccountId
      expires_at
      token_type
      scope
      access_token
      refresh_token
      id_token
      session_state
    }
  }
`;

// Not currently possible in GraphCMS in a single mutation
// const UnlinkAccountByProviderAndProviderId = gql`
//   mutation UnlinkAccountByProviderAndProviderId($data: )
// `;

const CreateNextAuthSession = gql`
  mutation CreateNextAuthSession($data: NextAuthSessionCreateInput!) {
    createNextAuthSession(data: $data) {
      id
      ...NextAuthSessionFragment
      user {
        ...NextAuthUserFragment
      }
    }
  }
  ${NextAuthSessionFragment}
  ${NextAuthUserFragment}
`;

const GetNextAuthSession = gql`
  query GetNextAuthSession($sessionToken: String!) {
    nextAuthSession(where: { sessionToken: $sessionToken }) {
      ...NextAuthSessionFragment
      id
      user {
        ...NextAuthUserFragment
      }
    }
  }
  ${NextAuthUserFragment}
  ${NextAuthSessionFragment}
`;

export function GraphCMSAdapter(options) {
  const { endpoint, token } = options;

  if (!endpoint) {
    throw new Error('GraphCMS error: Please provide an endpoint');
  }

  if (!token) {
    throw new Error('GraphCMS error: Please provide a Permanent Auth Token');
  }

  const client = new GraphQLClient(endpoint, {
    headers: {
      Authorization: `Bearer ${token}`,
    },
  });

  return {
    createUser: async (data) => {
      const { createNextAuthUser } = await client.request(CreateNextAuthUser, {
        data,
      });

      return createNextAuthUser;
    },
    getUser: async (id) => {
      const { nextAuthUser } = await client.request(GetNextAuthUserById, {
        id,
      });

      return nextAuthUser;
    },

    getUserByEmail: async (email) => {
      const { nextAuthUser } = await client.request(GetNextAuthUserByEmail, {
        email,
      });

      return nextAuthUser;
    },
    getUserByAccount: async (variables) => {
      const { nextAuthAccounts } = await client.request(
        GetUserByProviderAccountId,
        variables
      );

      if (nextAuthAccounts.length === 0) return null;

      const [account] = nextAuthAccounts;

      return account?.user ?? null;
    },
    updateUser: async ({ id, ...data }) => {
      const { updateNextAuthUser } = await client.request(UpdateNextAuthUser, {
        id,
        data,
      });

      return updateNextAuthUser;
    },
    deleteUser: async (id) => {
      const { deleteNextAuthUser } = await client.request(DeleteNextAuthUser, {
        id,
      });

      return deleteNextAuthUser;
    },
    linkAccount: async ({ userId, ...data }) => {
      const { createNextAuthAccount } = await client.request(
        CreateNextAuthAccount,
        {
          data: {
            ...data,
            user: {
              connect: {
                id: userId,
              },
            },
          },
        }
      );

      return createNextAuthAccount;
    },
    // TODO: Implement
    // unlinkAccount: async (variables) =>
    //   client.request(UnlinkAccountByProviderAndProviderId, variables),
    getSessionAndUser: async (sessionToken) => {
      const { nextAuthSession } = await client.request(GetNextAuthSession, {
        sessionToken,
      });

      const { user, ...session } = nextAuthSession;

      return {
        user,
        session: {
          ...session,
          expires: new Date(session.expires),
          userId: user?.id || null,
        },
      };
    },
    createSession: async ({ userId, sessionToken, expires }) => {
      const { createNextAuthSession } = await client.request(
        CreateNextAuthSession,
        {
          data: {
            sessionToken,
            expires,
            user: {
              connect: {
                id: userId,
              },
            },
          },
        }
      );

      return {
        ...createNextAuthSession,
        expires: new Date(expires),
        userId,
      };
    },
    updateSession: async ({ sessionToken, ...data }) => {
      // TODO: Implement
      console.log('updating session');
    },
    deleteSession: async (sessionToken) => {
      // TODO: Implement
      console.log('delete session');
    },
    createVerificationToken: async (data) => {
      // TODO: Implement
      console.log('creating verification token');
    },
    useVerificationToken: async ({ identifier, token }) => {
      // TODO: Implement
      console.log('use verification token');
    },
  };
}

export default NextAuth({
  jwt: {
    secret: process.env.NEXTAUTH_SECRET,
  },
  adapter: GraphCMSAdapter({
    endpoint: process.env.GRAPHCMS_ENDPOINT,
    token: process.env.GRAPHCMS_TOKEN,
  }),
  providers: [
    GitHubProvider({
      clientId: process.env.GITHUB_CLIENT_ID,
      clientSecret: process.env.GITHUB_CLIENT_SECRET,
    }),
  ],
  callbacks: {
    async jwt({ token, account }) {
      if (account?.userId) {
        token.userId = account.userId;
      }

      return Promise.resolve(token);
    },
  },
});
