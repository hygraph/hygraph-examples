// npx graphcms-migrate

const { newMigration } = require('@graphcms/management');

const migration = newMigration({
  endpoint: process.env.GRAPHCMS_ENDPOINT,
  authToken: process.env.GRAPHCMS_TOKEN,
});

migration.createModel({
  apiId: 'Vote',
  apiIdPlural: 'Votes',
  displayName: 'Vote',
});

module.exports = migration;
