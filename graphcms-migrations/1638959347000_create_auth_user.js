// npx graphcms-migrate

const {
  newMigration,
  FieldType,
  VisibilityTypes,
} = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const nextAuthUser = migration.createModel({
  apiId: 'NextAuthUser',
  apiIdPlural: 'NextAuthUsers',
  displayName: 'Next Auth USer',
});

nextAuthUser.addSimpleField({
  apiId: 'email',
  displayName: 'Email',
  type: FieldType.String,
  isRequired: true,
  isUnique: true,
});

nextAuthUser.addSimpleField({
  apiId: 'password',
  displayName: 'Password',
  type: FieldType.String,
  isRequired: true,
  visibility: VisibilityTypes.ReadOnly,
});

module.exports = migration;
