import { gql, GraphQLClient } from 'graphql-request';
import useSWR from 'swr';
import { useState } from 'react';
import useTimeout from 'use-timeout';

const hygraph = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

const GetExpensiveProduct = gql`
  query GetExpensiveProduct {
    products(orderBy: price_DESC, first: 1) {
      price
    }
  }
`;

const GetCheapestProduct = gql`
  query GetCheapestProduct {
    products(orderBy: price_ASC, first: 1) {
      price
    }
  }
`;

const GetProductsQuery = gql`
  query getProducts($priceGte: Int, $priceLte: Int) {
    productsConnection(
      where: { AND: [{ price_lte: $priceLte }, { price_gte: $priceGte }] }
    ) {
      edges {
        node {
          name
          price
        }
      }
      aggregate {
        count
      }
    }
  }
`;

export const getStaticProps = async () => {
  const initialData = await hygraph.request(GetProductsQuery);
  const {
    products: [{ price: initialPriceGte }],
  } = (await hygraph.request(GetCheapestProduct)) || 0;
  const {
    products: [{ price: initialPriceLte }],
  } = (await hygraph.request(GetExpensiveProduct)) || 5000;

  return {
    props: {
      initialData,
      initialPriceGte,
      initialPriceLte,
    },
    revalidate: 30,
  };
};

export default function IndexPage({
  initialData,
  initialPriceGte,
  initialPriceLte,
}) {
  const [priceGte, setPriceGte] = useState(initialPriceGte);
  const [priceLte, setPriceLte] = useState(initialPriceLte);

  const { data } = useSWR(
    [GetProductsQuery, priceGte, priceLte],
    (query, priceGte, priceLte) =>
      hygraph.request(query, { priceGte, priceLte }),
    {
      initialData,
      revalidateOnMount: true,
    }
  );

  useTimeout(() => setPriceGte(priceGte), 2000);
  useTimeout(() => setPriceLte(priceLte), 2000);

  return (
    <div>
      <fieldset>
        <legend>Price</legend>
        <label htmlFor="priceGte">
          Greater than
          <input
            id="priceGte"
            type="number"
            defaultValue={priceGte}
            placeholder={priceGte}
            onChange={(e) =>
              setPriceGte(parseInt(e.target.value, 10) || priceGte)
            }
          />
        </label>
        <label htmlFor="priceLte">
          Less than
          <input
            id="priceLte"
            type="number"
            defaultValue={priceLte}
            placeholder={priceLte}
            onChange={(e) =>
              setPriceLte(parseInt(e.target.value, 10) || priceLte)
            }
          />
        </label>
      </fieldset>

      {data ? <pre>{JSON.stringify(data, null, 2)}</pre> : 'Loading'}
    </div>
  );
}
