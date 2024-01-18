# Working with the Hygraph Management SDK

[Join our Slack](https://slack.hygraph.com)

This example demonstrates how to programmatically build a project schema using the [Hygraph Management SDK](https://www.npmjs.com/package/@hygraph/management-sdk).

It creates the following models and field types:

**Blog Post**

- Title
- Excerpt (with multi line form renderer)
- Content as Rich Text
- Author (Linked to Author)

**Author**

- Name
- Posts (one to many)

## How to Use

### Download Manually

```bash
npx degit hygraph/hygraph-examples/using-management-sdk using-management-sdk
```

Add .env:

```bash
cp .env.sample .env
```

Provide values for `HYGRAPH_MIGRATION_TOKEN` and `HYGRAPH_ENDPOINT`.

Install & Run:

```bash
cd using-management-sdk
npm install
npm run start
# or
cd using-management-sdk
yarn
yarn start
```
