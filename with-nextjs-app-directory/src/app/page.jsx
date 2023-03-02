import { GraphQLClient } from 'graphql-request';
import Link from 'next/link';
const getProducts = async () => {
  const hygraph = new GraphQLClient(
    'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
  );

  const { products } = await hygraph.request(
    `{
      products {
        slug
        name
        id
      }
    }`
  );

  return products;
};

export function generateMetadata() {
  return { title: 'Products' };
}

export default async function Page() {
  const products = await getProducts();
  console.log(products);
  return (
    <div>
      <h1>Products</h1>
      <ul>
        {products.map(({ slug, name, id }) => (
          <li key={id}>
            <Link key={slug} href={`/products/${slug}`}>
              {name}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
}
