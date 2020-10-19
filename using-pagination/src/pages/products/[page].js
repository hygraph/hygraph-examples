import Link from 'next/link';
import { gql } from 'graphql-request';

import { graphcms } from '../../../lib/_graphcms';

const perPage = 1;

function IndexPage({
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
      products: productsConnection {
        aggregate {
          count
        }
      }
    }
  `;
  const { products } = await graphcms.request(query);

  function* numberOfPages({ total, limit }) {
    let page = 1;
    let offset = 0;

    while (offset < total) {
      yield page;

      page++;
      offset += limit;
    }
  }

  const paths = Array.from(
    numberOfPages({
      total: products.aggregate.count,
      limit: perPage,
    })
  ).map((page) => ({
    params: { page: String(page) },
  }));

  return {
    paths,
    fallback: false,
  };
}

export async function getStaticProps({ params }) {
  const query = gql`
    query indexPageQuery($limit: Int!, $offset: Int!) {
      products: productsConnection(first: $limit, skip: $offset) {
        edges {
          node {
            id
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
    products: {
      edges: products,
      pageInfo: { hasNextPage, hasPreviousPage },
    },
  } = await graphcms.request(query, {
    limit: perPage,
    offset: Number((params.page - 1) * perPage),
  });

  return {
    props: {
      currentPageNumber: Number(params.page),
      hasNextPage,
      hasPreviousPage,
      products,
    },
  };
}

export default IndexPage;
