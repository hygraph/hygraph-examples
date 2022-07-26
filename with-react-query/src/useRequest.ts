import { useQuery } from 'react-query';
import { GraphQLClient, gql } from 'graphql-request';

const API_URL =
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master';

const graphQLClient = new GraphQLClient(API_URL);

type Product = {
  id: string;
  name: string;
  description: string;
  price: string;
};

export function useGetProducts() {
  return useQuery<Product[]>('get-products', async () => {
    const { products } = await graphQLClient.request(gql`
      query {
        products {
          id
          name
          description
          price
        }
      }
    `);
    return products;
  });
}
