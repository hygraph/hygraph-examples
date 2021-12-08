// npx graphcms-migrate

const {
  newMigration,
  RelationType,
  VisibilityTypes,
} = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const product = migration.model('Product');

product.addRelationalField({
  apiId: 'votes',
  displayName: 'Votes',
  relationType: RelationType.OneToMany,
  visibility: VisibilityTypes.ApiOnly,
  model: 'Vote',
  reverseField: {
    apiId: 'product',
    displayName: 'Product',
    visibility: VisibilityTypes.ApiOnly,
  },
});

module.exports = migration;
