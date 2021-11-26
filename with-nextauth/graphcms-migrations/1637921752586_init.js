// npx graphcms-migrate

const {
  newMigration,
  FieldType,
  RelationType,
} = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const nextAuthAccount = migration.createModel({
  apiId: 'NextAuthAccount',
  apiIdPlural: 'NextAuthAccounts',
  displayName: 'Next Auth Account',
});

nextAuthAccount.addSimpleField({
  apiId: 'type',
  displayName: 'Type',
  type: FieldType.String,
  isRequired: true,
});

nextAuthAccount.addSimpleField({
  apiId: 'provider',
  displayName: 'Provider',
  type: FieldType.String,
  isRequired: true,
});

nextAuthAccount.addSimpleField({
  apiId: 'providerAccountId',
  displayName: 'Provider Account ID',
  type: FieldType.String,
  isRequired: true,
});

nextAuthAccount.addSimpleField({
  apiId: 'refresh_token',
  displayName: 'Refresh Token',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'access_token',
  displayName: 'Access Token',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'expires_at',
  displayName: 'Expires At',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'token_type',
  displayName: 'Token Type',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'scope',
  displayName: 'Scope',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'id_token',
  displayName: 'ID Token',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'session_state',
  displayName: 'Session State',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'oauth_token_secret',
  displayName: 'OAuth Token Secret',
  type: FieldType.String,
});

nextAuthAccount.addSimpleField({
  apiId: 'oauth_token',
  displayName: 'OAuth Token',
  type: FieldType.String,
});

const nextAuthSession = migration.createModel({
  apiId: 'NextAuthSession',
  apiIdPlural: 'NextAuthSessions',
  displayName: 'Next Auth Session',
});

nextAuthSession.addSimpleField({
  apiId: 'sessionToken',
  displayName: 'Session Token',
  type: FieldType.String,
  isRequired: true,
  isUnique: true,
});

nextAuthSession.addSimpleField({
  apiId: 'expires',
  displayName: 'Expires',
  type: FieldType.String,
  isRequired: true,
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
});

nextAuthUser.addSimpleField({
  apiId: 'image',
  displayName: 'Image',
  type: FieldType.String,
});

nextAuthUser.addSimpleField({
  apiId: 'emailVerified',
  displayName: 'Email Verified',
  type: FieldType.String, // TODO: add to/from formatter in adapter to allow Datetime type
});

const nextAuthVerificationToken = migration.createModel({
  apiId: 'NextAuthVerificationToken',
  apiIdPlural: 'NextAuthVerificationTokens',
  displayName: 'Next Auth Verification Token',
});

nextAuthVerificationToken.addSimpleField({
  apiId: 'token',
  displayName: 'Token',
  type: FieldType.String,
  isRequired: true,
  isUnique: true,
});

nextAuthVerificationToken.addSimpleField({
  apiId: 'expires',
  displayName: 'Expires',
  type: FieldType.String, // TODO: add to/from formatter in adapter to allow Datetime type
  isRequired: true,
});

module.exports = migration;
