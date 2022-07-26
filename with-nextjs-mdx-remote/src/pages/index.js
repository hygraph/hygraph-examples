import Link from 'next/link';
import { GraphQLClient } from 'graphql-request';

export async function getStaticProps() {
  const hygraph = new GraphQLClient(
    'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
  );

  const { products } = await hygraph.request(
    `
      {
        products {
          slug
          name
        }
      }
    `
  );

  return {
    props: {
      products,
    },
  };
}

const IndexPage = ({ products }) => {
  return products.map(({ slug, name }) => (
    <Link key={slug} href={`/products/${slug}`}>
      <a>{name}</a>
    </Link>
  ));
};

export default IndexPage;
