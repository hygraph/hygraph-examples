import Link from 'next/link';

import { createClient } from '../generated';

const client = createClient({
  url: 'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
});

export const getStaticProps = async () => {
  const { products } = await client.query({
    products: {
      slug: true,
      name: true,
    },
  });

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
