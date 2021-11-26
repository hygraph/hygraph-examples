// npx graphcms-migrate

const { newMigration, RelationType } = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

const nextAuthAccount = migration.model('NextAuthAccount');

nextAuthAccount.addRelationalField({
  apiId: 'user',
  displayName: 'User',
  relationType: RelationType.ManyToOne,
  model: 'NextAuthUser',
  reverseField: {
    apiId: 'accounts',
    displayName: 'Accounts',
  },
});

const nextAuthSession = migration.model('NextAuthSession');

nextAuthSession.addRelationalField({
  apiId: 'user',
  displayName: 'User',
  relationType: RelationType.ManyToOne,
  model: 'NextAuthUser',
  reverseField: {
    apiId: 'sessions',
    displayName: 'Sessions',
  },
});

module.exports = migration;
