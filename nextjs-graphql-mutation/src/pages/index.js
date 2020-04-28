import { request } from 'graphql-request';

import Product from '../components/product';

function Index({ products }) {
  const Component = (product, index) => <Product key={index} {...product} />;

  return products.map(Component);
}

export async function getStaticProps() {
  const { products } = await request(
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
    `{
      products {
        id
        name
      }
    }`
  );

  return {
    props: {
      products,
    },
  };
}

export default Index;
