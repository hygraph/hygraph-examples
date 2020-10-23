# Working with pagination in GraphCMS

[Join our Slack](https://slack.graphcms.com)

This example demonstrates ways you can paginate GraphCMS queries.

* [Generate numbered pages](/using-pagination/src/pages/products/[page].js). This example generates a number of static pages based on a total count and a 'per page' limit.
* [Larger result sets](/using-pagination/src/pages/index.js). GraphCMS has a default [result set size](https://graphcms.com/docs/guides/migrating#result-set-size) of 100 entries, which can be increased up to 1000 entries. This example using a [`for await`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for-await...of) statement to 'loop' requests until all data matching the desired query is returned.

This example is built with [Next.js](https://nextjs.org) and [`graphql-request`](https://github.com/prisma-labs/graphql-request).

• [Demo](https://graphcms-using-pagination.vercel.app)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/GraphCMS/graphcms-examples/tree/master/using-pagination)

## How to Use

### Download Manually

```bash
npx degit graphcms/graphcms-examples/using-pagination using-pagination
```

Install & Run:

```bash
cd using-pagination
npm install
npm run dev
# or
cd using-pagination
yarn
yarn dev
```

### Run on Codesandbox

[![Develop with Codesandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/GraphCMS/graphcms-examples/tree/master/using-pagination)
