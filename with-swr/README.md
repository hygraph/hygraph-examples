# GraphCMS ⨯ NextAuth.js ⨯ Todos ⨯ SWR

[Join our Slack](https://slack.graphcms.com)

This example uses SWR to fetch, and mutate user todos using Next.js API Routes, backed by GraphQL. Users can login using [NextAuth.js](https://next-auth.js.org).

Users can login or register using the same form (for the purposes of this demo), and update their profile bio, and set their own todos.

NextAuth.js has a [REST API](https://next-auth.js.org/getting-started/rest-api) you should use to create custom login pages.

• [Demo](https://graphcms-with-swr.vercel.app/)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/GraphCMS/graphcms-examples/tree/master/with-swr)

## How to Use

You will need to create a Permanent Auth Token to use this example locally.

Inside of `.env` add the following:

```dosini
GRAPHCMS_ENDPOINT=
GRAPHCMS_TOKEN=
NEXTAUTH_URL=http://localhost:3000
NEXTAUTH_SECRET=somethingsupersecret
```

You will need to set `NEXTAUTH_URL` as your actual URL if deploying.

You'll need to create the models `NextAuthUser`, and `Todo` with a relation between them.

<details>
  <summary>Models</summary>

## `NextAuthUser` model

- Display name: Next Auth User
- API ID: NextAuthUser
- Plural API ID: NextAuthUsers

### Fields

- Email (String, Single line text, Required, Title)
- Password (String, Single line text, Required, Read only)
- Bio (String, Multi line text)
- Todos (Reference: Todos, One to Many, Multiple Values, Two-way reference)

## `Todo` model

- Display name: Todo
- API ID: Todo
- Plural API ID: Todos

### Fields

- Description (String, Multi line text, Required, Title)
- Completed (Boolean, Boolean)

</details>

### Download Manually

```bash
npx degit graphcms/graphcms-examples/with-swr with-swr
```

Install & Run:

```bash
cd with-swr
npm install
npm run dev
# or
cd with-swr
yarn
yarn dev
```

### Run on Codesandbox

[![Develop with Codesandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/GraphCMS/graphcms-examples/tree/master/with-swr)
