# Hygraph ⨯ Algolia

[Join our Slack](https://slack.hygraph.com)

Using [Hygraph webhooks](https://hygraph.com/webhooks) to sync data to [Algolia](https://algolia.com) on new published content.

• [Demo](https://hygraph-with-algolia.vercel.app)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/hygraph/hygraph-examples/tree/master/with-algolia) [![Clone project](https://hygraph.com/button)](https://app.hygraph.com/clone/0ff23f7a41ce4da69a366ab299cc24d8)

## How to Use

- Create Algolia account
- Insert an Algolia index called `products`
- Enter your Algolia admin API key into `.env` as `ALGOLIA_ADMIN_API_KEY`
- Edit `/pages/index.js` and replace the Algolia App ID and Search Only API key with your own

### Download Manually

```bash
npx degit hygraph/hygraph-examples/with-algolia with-algolia
```

Install & Run:

```bash
cd with-algolia
npm install
npm run start
# or
cd with-algolia
yarn
yarn start
```

### Run on Codesandbox

[![Develop with Codesandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/hygraph/hygraph-examples/tree/master/with-algolia)
