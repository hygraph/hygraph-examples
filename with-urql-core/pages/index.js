import Link from 'next/link';
import { createClient, gql } from 'urql';

const client = createClient({
  url: 'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
});

export const getStaticProps = async () => {
  const ProductsQuery = gql`
    {
      products {
        slug
        name
      }
    }
  `;

  const {
    data: { products },
  } = await client.query(ProductsQuery).toPromise();

  return {
    props: {
      products,
    },
  };
};

export default function IndexPage({ products }) {
  return (
    <ul>
      {products.map(({ slug, name }) => (
        <li key={slug}>
          <Link href={`/products/${slug}`}>
            <a>{name}</a>
          </Link>
        </li>
      ))}
    </ul>
  );
}
