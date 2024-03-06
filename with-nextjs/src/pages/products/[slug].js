import { GraphQLClient } from 'graphql-request';
import React from "react";

const hygraph = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

export async function getStaticProps({ params }) {
  const { product } = await hygraph.request(
    `
    query ProductPageQuery($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
      }
    }
  `,
    {
      slug: params.slug,
    }
  );

  return {
    props: {
      product,
    },
  };
}

export async function getStaticPaths() {
  const { products } = await hygraph.request(`
    {
      products {
        slug
        name
      }
    }
  `);

  return {
    paths: products.map(({ slug }) => ({
      params: { slug },
    })),
    fallback: false,
  };
}

export default ({ product }) => (
  <React.Fragment>
    <h1>{product.name}</h1>
    <p>{product.description}</p>
    <p>{product.price / 100}</p>
  </React.Fragment>
);
