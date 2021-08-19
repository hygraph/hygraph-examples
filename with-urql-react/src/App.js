import { gql, useQuery } from 'urql';

const ProductsQuery = gql`
  {
    products {
      slug
      name
    }
  }
`;

function App() {
  const [result] = useQuery({ query: ProductsQuery });
  const { data, fetching, error } = result;

  if (fetching) return <p>Fetching products</p>;
  if (error) return <p>Oh no... {error.message}</p>;

  return (
    <ul>
      {data.products.map(({ slug, name }) => (
        <li key={slug}>{name}</li>
      ))}
    </ul>
  );
}

export default App;
