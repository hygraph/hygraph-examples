require('dotenv').config();

const {
  Client,
  SimpleFieldType,
  RelationalFieldType
} = require('@hygraph/management-sdk');

// Create a new `migration` instance
const client = new Client({
  authToken: process.env.HYGRAPH_MIGRATION_TOKEN,
  endpoint: process.env.HYGRAPH_ENDPOINT,
});

// create model for blog
client.createModel({
  apiId: 'Blog',
  apiIdPlural: 'Blogs',
  displayName: 'Blog',
});

// add blog fields
client.createSimpleField({
  apiId: 'title',
  displayName: 'Title',
  modelApiId: 'Blog',
  type: SimpleFieldType.String,
});

client.createSimpleField({
  apiId: 'excerpt',
  displayName: 'Excerpt',
  modelApiId: 'Blog',
  type: SimpleFieldType.String,
  formRenderer: "GCMS_MULTI_LINE",
});

client.createSimpleField({
  apiId: 'content',
  displayName: 'Content',
  modelApiId: 'Blog',
  type: SimpleFieldType.Richtext,
});

// create model for author
client.createModel({
  apiId: 'Author',
  apiIdPlural: 'Authors',
  displayName: 'Author',
});

// add author fields
client.createSimpleField({
  apiId: 'name',
  displayName: 'Name',
  modelApiId: 'Author',
  type: SimpleFieldType.String,
});

// add relation to blog for author posts


client.createRelationalField({
  parentApiId: 'Blog',
  apiId: 'author',
  displayName: 'Written By',
  type: RelationalFieldType.Relation,
  reverseField: {
    modelApiId: 'Author',
    apiId: 'posts',
    displayName: 'Posts',
    isList: true,
  },
});

client.run();
