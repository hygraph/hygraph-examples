// npx graphcms-migrate

const { newMigration, FieldType, Renderer } = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const product = migration.createModel({
  apiId: 'Product',
  apiIdPlural: 'Products',
  displayName: 'Product',
});

product.addSimpleField({
  apiId: 'name',
  displayName: 'Name',
  type: FieldType.String,
  isRequired: true,
  isLocalized: true,
  isTitle: true,
});

product.addSimpleField({
  apiId: 'slug',
  displayName: 'Slug',
  type: FieldType.String,
  isRequired: true,
  isUnique: true,
});

product.addSimpleField({
  apiId: 'description',
  displayName: 'Description',
  type: FieldType.String,
  formRenderer: Renderer.MultiLine,
});

product.addSimpleField({
  apiId: 'price',
  displayName: 'Price',
  type: FieldType.Int,
  isRequired: true,
});

product.addSimpleField({
  apiId: 'content',
  displayName: 'Content',
  type: FieldType.Richtext,
});

product.addRelationalField({
  apiId: 'image',
  displayName: 'Image',
  type: FieldType.Int,
});

nextAuthAccount.addSimpleField({
  apiId: 'token_type',
  displayName: 'Token Type',
  model: 'Asset',
});

module.exports = migration;
