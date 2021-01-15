import { useQuery, gql } from '@apollo/client';
import React from 'react';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';

import Product from './components/Product';

const QUERY = gql`
  {
    products {
      id
      name
      slug
      description
    }
  }
`;

function App() {
  const { loading, error, data } = useQuery(QUERY);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error :(</p>;

  return (
    <Router>
      <React.Fragment>
        <ul>
          {data.products.map(({ id, name, slug }) => (
            <li key={id}>
              <Link to={`/products/${slug}`}>{name}</Link>
            </li>
          ))}
        </ul>
        <Switch>
          <Route path="/products/:slug">
            <Product products={data.products} />
          </Route>
        </Switch>
      </React.Fragment>
    </Router>
  );
}

export default App;
