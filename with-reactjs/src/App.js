import React, { useEffect, useState } from 'react';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';
import { request } from 'graphql-request';

import Product from './Product';

function App() {
  const [products, setProducts] = useState(null);

  useEffect(() => {
    const fetchProducts = async () => {
      const { products } = await request(
        'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
        `
      {
        products {
          id
          name
          slug
        }
      }
    `
      );

      setProducts(products);
    };

    fetchProducts();
  }, []);

  return (
    <div className="App">
      <Router>
        {!products ? (
          'Loading'
        ) : (
          <React.Fragment>
            <ul>
              {products.map(({ id, name, slug }) => (
                <li key={id}>
                  <Link to={`/products/${slug}`}>{name}</Link>
                </li>
              ))}
            </ul>
            <Switch>
              <Route path="/products/:slug">
                <Product products={products} />
              </Route>
            </Switch>
          </React.Fragment>
        )}
      </Router>
    </div>
  );
}

export default App;
