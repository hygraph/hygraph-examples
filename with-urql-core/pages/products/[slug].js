import { Fragment } from 'react';
import { createClient, gql } from 'urql';

const client = createClient({
  url: 'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
});

export async function getStaticProps({ params }) {
  const { slug } = params;

  const ProductBySlugQuery = gql`
    query GetProductBySlug($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
      }
    }
  `;

  const {
    data: { product },
  } = await client
    .query(ProductBySlugQuery, {
      slug,
    })
    .toPromise();

  return {
    props: {
      product,
    },
  };
}

export async function getStaticPaths() {
  const ProductSlugsQuery = gql`
    {
      products {
        slug
      }
    }
  `;

  const {
    data: { products },
  } = await client.query(ProductSlugsQuery).toPromise();

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
