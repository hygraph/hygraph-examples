const express = require('express');
const { AwesomeGraphQLClient } = require('awesome-graphql-client');
const fetch = require('node-fetch');

const client = new AwesomeGraphQLClient({
  endpoint:
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
  fetch,
});

const app = express();

app.set('view engine', 'ejs');

app.get('/', async function (_, res) {
  const query = `
    { 
      products {
        name
        slug
      }
    }
  `;

  const { products } = await client.request(query);

  res.render('index', { products });
});

app.get('/products/:slug', async function (req, res) {
  const query = `
    query ProductPageQuery($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
      }
    }
  `;

  const { slug } = req.params;

  const { product } = await client.request(query, { slug });

  res.render('product', { product });
});

app.listen(3000, () => console.log(`🚀 Running on http://localhost:3000`));
