import { GraphQLClient } from 'graphql-request';

const hygraph = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

export { hygraph };
