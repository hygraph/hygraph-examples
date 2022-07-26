import React from 'react';
import { GraphQLClient } from 'graphql-request';
import { RichText } from '@graphcms/rich-text-react-renderer';

const hygraph = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

export async function getStaticProps({ params }) {
  const { product } = await hygraph.request(
    `
    query ProductPageQuery($slug: String!) {
      product(where: { slug: $slug }) {
        name
        content {
          raw
        }
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

const ProductPage = ({ product }) => (
  <React.Fragment>
    <h1>{product.name}</h1>

    <RichText content={product.content.raw.children} />
  </React.Fragment>
);

export default ProductPage;
