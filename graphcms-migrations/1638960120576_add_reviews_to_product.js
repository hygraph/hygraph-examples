// npx graphcms-migrate

const { newMigration, RelationType } = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const product = migration.model('Product');

product.addRelationalField({
  apiId: 'reviews',
  displayName: 'Reviews',
  relationType: RelationType.OneToMany,
  model: 'Review',
  reverseField: {
    api: 'product',
    displayName: 'Product',
  },
});

module.exports = migration;
