import Link from 'next/link';
import { gql, useQuery } from 'urql';

export default function IndexPage() {
  const ProductsQuery = gql`
    {
      products {
        slug
        name
      }
    }
  `;

  const [result] = useQuery({ query: ProductsQuery });
  const { data, fetching, error } = result;

  if (fetching) return <p>Fetching products</p>;
  if (error) return <p>Oh no... {error.message}</p>;

  return (
    <ul>
      {data.products.map(({ slug, name }) => (
        <li key={slug}>
          <Link href={`/products/${slug}`}>
            <a>{name}</a>
          </Link>
        </li>
      ))}
    </ul>
  );
}
