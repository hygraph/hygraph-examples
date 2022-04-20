import Link from 'next/link';
import { gql } from 'graphql-request';

import { graphcms } from '../../lib/_graphcms';

const limit = 1;

const singleProductStyle = {
  display: 'flex',
  flexDirection: 'column',
  width: '200px',
  margin: '10px',
};

function SingleProduct({product, index}) {
  const { image } = product;
  return (
    <div style={singleProductStyle}>
      <img src={image.url} width={200} height={200} alt={product.name} title={product.name} /> 
      <Link href={`/products/${index+1}`}>
        <a>{product.name}</a>
      </Link>
    </div>
  )
}

const productListStyle = {
  display: 'flex'
};

function IndexPage({ products }) {
  return (
    <div style={productListStyle}>
      {products.map(({ node: product }, index) => {
        return <SingleProduct key={product.id} product={product} index={index} />
      })}
    </div>
  );
}

export async function getStaticProps() {
  const query = gql`
    query indexPageQuery($limit: Int!, $offset: Int!) {
      productsConnection(first: $limit, skip: $offset) {
        products: edges {
          node {
            id
            name
            image {
              id
              url(transformation: {
                image: {
                  resize: {
                    width: 200,
                    height: 200
                  }
                }
              })
            }
          }
        }
        pageInfo {
          hasNextPage
        }
      }
    }
  `;

  async function* fetchData(query) {
    let offset = 0;
    let hasNextPage = true;

    while (hasNextPage) {
      const {
        productsConnection: { products, pageInfo },
      } = await graphcms.request(query, { limit, offset });

      hasNextPage = pageInfo.hasNextPage;
      offset += limit;

      yield products;
    }
  }

  async function paginatedQuery({ query }) {
    const iterator = fetchData(query);

    let data = [];

    for await (const products of iterator) data = [...data, ...products];

    return data;
  }

  const products = await paginatedQuery({ query });

  return {
    props: {
      products,
    },
  };
}

export default IndexPage;
