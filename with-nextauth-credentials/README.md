# Hygraph ⨯ NextAuth.js

[Join our Slack](https://slack.hygraph.com)

This example demonstrates how to query from Hygraph [NextAuth.js](https://next-auth.js.org).

Users can login or register using the same form (for the purposes of this demo), and update their profile name/bio.

NextAuth.js has a [REST API](https://next-auth.js.org/getting-started/rest-api) you should use to create custom login pages.

• [Demo](https://hygraph-with-nextauth-credentials.vercel.app/)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/hygraph/hygraph-examples/tree/master/with-nextauth-credentials) [![Clone project](https://hygraph.com/button)](https://app.hygraph.com/clone/0ff23f7a41ce4da69a366ab299cc24d8)

## How to Use

You will need to create a Permanent Auth Token to use this example locally.

Inside of `.env` add the following:

```dosini
HYGRAPH_ENDPOINT=
HYGRAPH_TOKEN=
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=somethingsupersecret
```

You will need to set `NEXTAUTH_URL` as your actual URL if deploying.

You will also need to follow instructions [here](https://github.com/hygraph/hygraph-examples#using-this-repo) to configure the models this project needs to work.

### Download Manually

```bash
npx degit hygraph/hygraph-examples/with-nextauth-credentials with-nextauth-credentials
```

Install & Run:

```bash
cd with-nextauth-credentials
npm install
npm run dev
# or
cd with-nextauth-credentials
yarn
yarn dev
```

### Run on Codesandbox

[![Develop with Codesandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/hygraph/hygraph-examples/tree/master/with-nextauth-credentials)
