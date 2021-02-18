import { useQuery, gql } from '@apollo/client';

import { ProductsHomeQuery } from './generated/graphcms-schema';

const QUERY = gql`
  query ProductsHome {
    products {
      id
      name
      slug
      description
    }
  }
`;

function App() {
  const { loading, error, data } = useQuery<ProductsHomeQuery>(QUERY);

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
