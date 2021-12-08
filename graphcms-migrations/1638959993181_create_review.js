// npx graphcms-migrate

const { newMigration, Renderer } = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const review = migration.createModel({
  apiId: 'Review',
  apiIdPlural: 'Reviews',
  displayName: 'Review',
});

review.addSimpleField({
  apiId: 'name',
  displayName: 'Name',
  type: FieldType.String,
});

review.addSimpleField({
  apiId: 'comment',
  displayName: 'Comment',
  type: FieldType.String,
  formRenderer: Renderer.MultiLine,
  isRequired: true,
});

module.exports = migration;
