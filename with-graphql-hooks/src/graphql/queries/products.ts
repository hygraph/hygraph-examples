import { useQuery, UseQueryOptions } from "graphql-hooks";

export type ProductQuery = {
  id: string;
  name: string;
  slug: string;
  price: number;
  description: string;
};

export type ProductsQuery = {
  products: {
    id: string;
    name: string;
    slug: string;
    price: number;
    description: string;
  }[];
};

export const GET_PRODUCTS = `
  query GetProducts {
    products {
      id
      name
      slug
      description
      price
    }
}`;

export const GET_PRODUCT = `
  query GetProduct($slug: String!) {
    product(where: { slug: $slug }) {
      id
      name
      slug
      description
      price
    }
}`;

export function useQueryProducts(options?: UseQueryOptions) {
  return useQuery(GET_PRODUCTS, options);
}
