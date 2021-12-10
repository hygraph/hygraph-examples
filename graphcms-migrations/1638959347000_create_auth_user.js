// npx graphcms-migrate

const {
  newMigration,
  FieldType,
  VisibilityTypes,
  Renderer,
} = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const nextAuthUser = migration.createModel({
  apiId: 'NextAuthUser',
  apiIdPlural: 'NextAuthUsers',
  displayName: 'Next Auth User',
});

nextAuthUser.addSimpleField({
  apiId: 'name',
  displayName: 'Name',
  type: FieldType.String,
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

nextAuthUser.addSimpleField({
  apiId: 'bio',
  displayName: 'Bio',
  type: FieldType.String,
  formRenderer: Renderer.MultiLine,
});

nextAuthUser.addSimpleField({
  apiId: 'auth0Id',
  displayName: 'Auth0 ID',
  type: FieldType.String,
  isUnique: true,
  visibility: VisibilityTypes.ReadOnly,
});

module.exports = migration;
