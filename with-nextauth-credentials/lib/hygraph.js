import { GraphQLClient } from 'graphql-request';

export const hygraphClient = new GraphQLClient(process.env.HYGRAPH_ENDPOINT, {
  headers: {
    Authorization: `Bearer ${process.env.HYGRAPH_TOKEN}`,
  },
});
