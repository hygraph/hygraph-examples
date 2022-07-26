import { gql } from 'graphql-request';

import hygraphClient from '../lib/hygraphClient';

function ProductPage({ product }) {
  return <pre>{JSON.stringify(product, null, 2)}</pre>;
}

export async function getStaticPaths({ locales }) {
  let paths = [];

  const { products } = await hygraphClient.request(gql`
    {
      products {
        id
      }
    }
  `);

  for (const locale of locales) {
    paths = [
      ...paths,
      ...products.map((product) => ({ params: { id: product.id }, locale })),
    ];
  }

  return {
    paths,
    fallback: false,
  };
}

export async function getStaticProps({ locale, params }) {
  const { product } = await hygraphClient.request(
    gql`
      query ProductPageQuery($id: ID!, $locale: Locale!) {
        product(where: { id: $id }, locales: [$locale]) {
          id
          locale
          name
          slug
        }
      }
    `,
    { id: params.id, locale }
  );

  return {
    props: {
      product,
    },
  };
}

export default ProductPage;
