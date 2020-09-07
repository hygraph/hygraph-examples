const algoliasearch = require('algoliasearch');

const algolia = algoliasearch('HOUK2JPM8O', 'YOUR_ALGOLIA_ADMIN_API_KEY'); // You'll need to provide your own API key!

const index = algolia.initIndex('products');

export default async (req, res) => {
  if (req.method !== 'POST') return res.send();

  const {
    data: { PUBLISHED },
  } = req.body;

  const { id: objectID, ...data } = PUBLISHED;

  await index.saveObject({ objectID, ...data });

  res.send(201);
};
