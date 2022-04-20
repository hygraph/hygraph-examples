import Link from 'next/link';
import { gql } from 'graphql-request';

import { graphcms } from '../../../lib/_graphcms';

const limit = 1;

const singleProductStyle = {
  display: 'flex',
  flexDirection: 'column',
  width: '200px',
  margin: '10px',
  color: '#000',
};

function SingleProduct({product}) {
  return (
    <div style={singleProductStyle} key={product.id}>
      <h3>{product.name}</h3>
    </div>
  )
}

const navStyle = {
  display: 'inline-block',
  backgroundColor: '#ccc',
  color: '#111',
  textDecoration: 'none',
  padding: '2px 6px',
  marginRight: '5px',
}

function ProductPage({
  currentPageNumber,
  hasNextPage,
  hasPreviousPage,
  products,
}) {
  return (
    <React.Fragment>
      <Link href={'/'}>
        <a>Home</a>
      </Link>
      <p>Page {currentPageNumber}</p>
      <SingleProduct product={products[0].node} />
      {hasPreviousPage ? (
        <Link href={`/products/${currentPageNumber - 1}`}>
          <a style={navStyle}>Previous page</a>
        </Link>
      ) : null}
      {hasNextPage ? (
        <Link href={`/products/${currentPageNumber + 1}`}>
          <a style={navStyle}>Next page</a>
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
  const { productsConnection } = await graphcms.request(query);

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
  } = await graphcms.request(query, {
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
