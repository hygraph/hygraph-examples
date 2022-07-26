import { Fragment } from 'react';

import { createClient } from '../../generated';

const client = createClient({
  url: 'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
});

export async function getStaticProps({ params }) {
  const { slug } = params;

  const { product } = await client.query({
    product: [
      {
        where: {
          slug,
        },
      },

      {
        name: true,
        description: true,
        price: true,
      },
    ],
  });

  return {
    props: {
      product,
    },
  };
}

export async function getStaticPaths() {
  const { products } = await client.query({
    products: {
      slug: true,
    },
  });

  return {
    paths: products.map(({ slug }) => ({
      params: { slug },
    })),
    fallback: false,
  };
}

export default function ProductPage({ product }) {
  return (
    <Fragment>
      <h1>{product.name}</h1>
      <p>{product.description}</p>
      <p>{product.price / 100}</p>
    </Fragment>
  );
}
