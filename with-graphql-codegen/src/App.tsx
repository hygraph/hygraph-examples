import { useProductsHomeQuery } from './generated/graphcms-schema';

function App() {
  const { loading, error, data } = useProductsHomeQuery();

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error :(</p>;

  return (
    <ul>
      {data &&
        data.products.map((product) => (
          <li key={product.id}>{product.name}</li>
        ))}
    </ul>
  );
}

export default App;
