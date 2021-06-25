require('dotenv').config();

const {
  newMigration,
  FieldType,
  RelationType,
  Renderer,
} = require('@graphcms/management');

// Create a new `migration` instance
const migration = newMigration({
  authToken: process.env.GRAPHCMS_MIGRATION_TOKEN,
  endpoint: process.env.GRAPHCMS_URL,
});

// create model for blog
const blogModel = migration.createModel({
  apiId: 'Blog',
  apiIdPlural: 'Blogs',
  displayName: 'Blog',
});

// add blog fields
blogModel.addSimpleField({
  apiId: 'title',
  displayName: 'Title',
  type: FieldType.String,
});

blogModel.addSimpleField({
  apiId: 'excerpt',
  displayName: 'Excerpt',
  type: FieldType.String,
  formRenderer: Renderer.MultiLine,
});

blogModel.addSimpleField({
  apiId: 'content',
  displayName: 'Content',
  type: FieldType.Richtext,
});

// create model for author
const authorModel = migration.createModel({
  apiId: 'Author',
  apiIdPlural: 'Authors',
  displayName: 'Author',
});

// add author fields
authorModel.addSimpleField({
  apiId: 'name',
  displayName: 'Name',
  type: FieldType.String,
});

authorModel.addSimpleField({
  apiId: 'posts',
  displayName: 'Posts',
  type: FieldType.String,
});

// add relation to blog for author posts

// create model for author
const authorRelation = migration.updateModel({
  apiId: 'Author',
});

authorRelation.addRelationalField({
  apiId: 'authorPosts',
  displayName: 'Author Posts',
  relationType: RelationType.OneToMany,
  model: 'Blog',
});

migration.run();
