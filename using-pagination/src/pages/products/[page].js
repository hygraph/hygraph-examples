import Link from 'next/link';
import { gql } from 'graphql-request';

import { hygraph } from '../../../lib/_hyraph';

const limit = 1;

function ProductPage({
  currentPageNumber,
  hasNextPage,
  hasPreviousPage,
  products,
}) {
  return (
    <React.Fragment>
      <pre>{JSON.stringify(products, 2, null)}</pre>
      {hasPreviousPage ? (
        <Link href={`/products/${currentPageNumber - 1}`}>
          <a>Previous page</a>
        </Link>
      ) : null}
      {hasNextPage ? (
        <Link href={`/products/${currentPageNumber + 1}`}>
          <a>Next page</a>
        </Link>
      ) : null}
    </React.Fragment>
  );
}

export async function getStaticPaths() {
  const query = gql`
    {
      productsConnection {
        aggregate {
          count
        }
      }
    }
  `;
  const { productsConnection } = await hygraph.request(query);

  function* numberOfPages({ total, limit }) {
    let page = 1;
    let offset = 0;

    while (offset < total) {
      yield page;

      page++;
      offset += limit;
    }
  }

  const paths = [
    ...numberOfPages({
      total: productsConnection.aggregate.count,
      limit,
    }),
  ].map((page) => ({
    params: { page: String(page) },
  }));

  return {
    paths,
    fallback: false,
  };
}

export async function getStaticProps({ params }) {
  const query = gql`
    query productPageQuery($limit: Int!, $offset: Int!) {
      productsConnection(first: $limit, skip: $offset) {
        products: edges {
          node {
            id
            name
          }
        }
        pageInfo {
          hasNextPage
          hasPreviousPage
        }
      }
    }
  `;

  const {
    productsConnection: { products, pageInfo },
  } = await hygraph.request(query, {
    limit,
    offset: Number((params.page - 1) * limit),
  });

  return {
    props: {
      currentPageNumber: Number(params.page),
      products,
      ...pageInfo,
    },
  };
}

export default ProductPage;
