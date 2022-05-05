<h3 align="center">
  GraphCMS Examples
</h3>

<p align="center">
  Example projects to help you get started with GraphCMS
</p>

## Using this repo

All examples in this repo use the same GraphCMS project. Clone it to get started:

[![Clone project](https://graphcms.com/button)](https://app.graphcms.com/clone/0ff23f7a41ce4da69a366ab299cc24d8)

When working with this repo locally with your own GraphCMS project, you'll need to add the following to your `.env`:

```dosini
GRAPHCMS_ENDPOINT=
GRAPHCMS_TOKEN=
```

Examples where we only query the data will hardcode the `GRAPHCMS_ENDPOINT` to get you going using the example locally, or on Codesandbox.

## Examples

### GraphCMS Content API Features & Recipes

Examples demonstrating how to use GraphCMS features.

| Features                                                      | Description                                                                                                                                           |
| ------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Using Asset Upload]                                          | Programmatically upload assets using the [Asset Upload endpoint]                                                                                      |
| [Using Management SDK] ([Video][video2])                      | Basic [Management SDK] script to create a schema.                                                                                                     |
| [Using Remote Fields] ([Video][video3])                       | Basic [Management SDK] script to create a schema with [Remote Fields] to query data directly from the [Stripe API]                                    |
| [Using Mutations] ([Demo][demo4], [Video][video4])            | [Next.js] app demonstrating how to use GraphCMS mutations with [`graphql-request`], [`SWR`] and API routes                                            |
| [Using Pagination] ([Demo][demo5], [Video][video5])           | [Next.js] app demonstrating how to paginate GraphCMS queries with [`graphql-request`]                                                                 |
| [Using Rich Text Renderer] ([Demo][demo27], [Video][video27]) | [Next.js] app demonstrating how to render Rich Text with [`@graphcms/rich-text-react-renderer`]                                                       |
| [Using Union Types]                                           | A basic product marketing site using union types to compose UI 'blocks' with components. Built with [Next.js], [`graphql-request`] and [Tailwind CSS] |

### Frameworks & Libraries

Examples demonstrating how to use GraphCMS with popular application
frameworks.

| Frameworks & Libraries                                                | Description                                                                                                              |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [Algolia] ([Demo][demo6], [Video][video6])                            | Sync content to Algolia via webhooks on publish using Next.js API routes.                                                |
| [Apollo Client 3][1] ([Demo][demo7], [Video][video7])                 | Using [Apollo Client 3] to query data from GraphCMS.                                                                     |
| [Apollo Server] ([Demo][demo8], [Video][video8])                      | Using [`apollo-datasource-graphql`] to pull a GraphCMS schema into an existing [Apollo Server][2]                        |
| [Express][3] ([Demo][demo9], [Video][video9])                         | A simple [Express] app using `ejs` templating and [`awesome-graphql-client`]                                             |
| [Gatsby][4] ([Demo][demo10])                                          | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages with data from GraphCMS                |
| [Gatsby (File System Route API)] ([Demo][demo11], [Video][video11])   | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages using Gatsby's [File System Route API] |
| [Gatsby Image] ([Demo][demo12], [Video][video12])                     | How to use [`gatsby-image`] with GraphCMS assets                                                                         |
| [GraphCMS Image] ([Demo][demo13], [Video][video13])                   | How to use [`graphcms-image`] with Gatsby                                                                                |
| [GraphQL Codegen] ([Demo][demo26])                                    | Automatically generate26 types for your GraphCMS project with [GraphQL Code Generator]                                   |
| [Schema Stitching (with GraphQL Mesh)]                                | Stitch 3 GraphQL APIs into one with [GraphQL Mesh]                                                                       |
| [Gridsome] ([Demo][demo15], [Video][video15])                         | A basic example using `gridsome create` CLI and [`@gridsome/source-graphql`]                                             |
| [MDX (with Gatsby)] ([Demo][demo16], [Video][video16])                | How to use [`gatsby-plugin-mdx`] with `RichText` fields from GraphCMS.                                                   |
| [MDX (with Next.js)] ([Demo][demo17], [Video][video17])               | This example demonstrates how to use markdown fields from GraphCMS with `MDX` in Next.js                                 |
| [Next.js][5] ([Demo][demo18], [Video][video18])                       | A basic [Next.js] application, featuring `getStaticProps` and `getStaticPaths` to build static product pages             |
| [Next.js i18n Routing] ([Demo][demo19], [Video][video19])             | How to use [Next.js Internationalized Routing] with GraphCMS content                                                     |
| [Next.js Image] ([Demo][demo20], [Video][video20])                    | How to use [Next.js Image Component] with GraphCMS assets                                                                |
| [Next.js Image with Custom Loader] ([Demo][demo21], [Video][video21]) | How to use a [custom loader] function with [Next.js Image Component] and GraphCMS assets                                 |
| [Nuxt.js] ([Demo][demo22], [Video][video22])                          | A simple Nuxt.js starter using `create-nuxt-app` CLI with Tailwind and Axios added                                       |
| [React.js] ([Demo][demo23], [Video][video23])                         | This example demonstrates how to query from GraphCMS with graphql-request in React.js                                    |
| [React.js with React Query]                                           | This example demonstrates how to query from GraphCMS with React Query in React.js                                        |
| [Vue.js] ([Demo][demo24], [Video][video24])                           | A vanilla Vue.js starter using `vue create` CLI with Vue Router                                                          |
| [SvelteKit] ([Demo][demo26], [Video][video26])                        | A Svelte example using SvelteKit and `graphql-request` to fetch data                                                     |
| [SvelteKit with URQL] ([Demo][demo27])                                | A SvelteKit example URQL to fetch data                                                                                   |
| [Eleventy] ([Demo][demo28])                                           | An Eleventy example using `graphql-request` to fetch data.                                                               |
| [Astro] ([Demo][demo29])                                              | An Astro example using `graphql-request` to fetch data.                                                                  |
| [Vanilla JS] ([Demo][demo30])                                         | Query in the browser with no frameworks, just use the Fetch API.                                                         |
| [NextAuth] ([Demo][demo31])                                           | Authenticate with NextAuth.js and update account info with GraphCMS.                                                     |
| [Houdini] ([Demo][demo32])                                            | An Houdini example with SvelteKit.                                                                                       |
| [Swift]                                                               | A native Swift (iOS & Mac) example.                                                                                      |
| [Swift with `swift-graphql`]                                          | A native Swift (iOS & Mac) example using [swift-graphql](swift-graphql).                                                 |

### UI Extensions

We've crafted a few example [UI extensions](https://graphcms.com/docs/ui-extensions) for you to get started with. These should show how to extend the GraphCMS UI with your own custom components.

| Name                                        | Type  | SDK        | Description                                                                         |
| ------------------------------------------- | ----- | ---------- | ----------------------------------------------------------------------------------- |
| [Quickstart](uix-basic-input)               | Input | React      | A basic `<input />` showing how to use UI extensions.                               |
| [Cloudinary](uix-cloudinary-input)          | Input | React      | A custom Cloudinary asset picker.                                                   |
| [Focal Point](uix-focal-point-input)        | Input | JavaScript | A custom focal point picker.                                                        |
| [Bynder](uix-bynder-input)                  | Input | JavaScript | Browse assets from Bynder using the Compact View V2 component.                      |
| [Conditional Fields](uix-conditional-field) | Input | TypeScript | UI extension to show how to change visibility for other fields and use fieldConfig. |

<!-- Links -->

[join our slack]: https://slack.graphcms.com
[read the docs]: https://graphcms.com/docs
[learn more about graphcms]: https://graphcms.com

<!-- GraphCMS Features & Recipes -->

[using asset upload]: using-asset-upload
[video1]: #
[demo26]: #
[asset upload endpoint]: https://graphcms.com/docs/content-api/assets#uploading-assets
[using management sdk]: using-management-sdk
[video2]: https://youtu.be/MLJCKsxcxEo
[demo2]: #
[using remote fields]: using-remote-fields
[video3]: https://youtu.be/cu3ZAAgPC20
[demo3]: #
[management sdk]: https://www.npmjs.com/package/@graphcms/management
[remote fields]: https://graphcms.com/docs/schema/field-types#remote
[stripe api]: https://stripe.com/docs/api
[using mutations]: using-mutations
[video4]: https://youtu.be/KPwMaPmaoS0
[demo4]: https://graphcms-using-mutations.now.sh
[next.js]: https://nextjs.org
[`graphql-request`]: https://github.com/prisma-labs/graphql-request
[`swr`]: https://github.com/zeit/swr
[using pagination]: using-pagination
[video5]: https://youtu.be/QTdPzdXyY40
[demo5]: https://graphcms-using-pagination.vercel.app/
[using rich text renderer]: using-rich-text-react-renderer
[video27]: https://youtu.be/4rYbSlE6m6A
[demo27]: https://graphcms-using-rich-text-react-renderer.vercel.app/
[`@graphcms/rich-text-react-renderer`]: https://npmjs.com/package/@graphcms/rich-text-react-renderer
[using union types]: using-union-types
[video5]: #
[demo5]: #
[tailwind css]: https://tailwindcss.com

<!-- Frameworks & Libraries -->

[algolia]: with-algolia
[demo6]: https://graphcms-with-algolia.vercel.app/
[1]: with-apollo-client-3
[apollo client 3]: https://www.apollographql.com/docs/react
[video7]: https://youtu.be/xyCj2zyBzyw
[demo7]: https://graphcms-with-apollo-client-3.vercel.app/
[apollo server]: with-apollo-server
[video8]: https://youtu.be/-taoQzDdJto
[demo8]: https://graphcms-with-apollo-server.herokuapp.com/
[`apollo-datasource-graphql`]: https://github.com/poetic/apollo-datasource-graphql
[2]: https://www.apollographql.com/docs/apollo-server/
[3]: with-express
[express]: https://expressjs.com/
[video9]: https://youtu.be/Uz0uRVttUaE
[demo9]: https://graphcms-with-express.herokuapp.com/
[`awesome-graphql-client`]: https://github.com/lynxtaa/awesome-graphql-client
[4]: with-gatsby
[gatsby]: https://www.gatsbyjs.org/
[demo10]: https://graphcms-with-gatsby.now.sh/
[`gatsby-source-graphcms`]: https://github.com/GraphCMS/gatsby-source-graphcms
[gatsby (file system route api)]: with-gatsby-filesystem-routing
[video11]: https://youtu.be/vFF-C_FXQHI
[demo11]: https://graphcms-with-gatsby-filesystem-routing.vercel.app/
[file system route api]: https://www.gatsbyjs.com/docs/file-system-page-creation
[gatsby image]: with-gatsby-image
[video12]: https://youtu.be/v4MlWu5ujUA
[demo12]: https://graphcms-with-gatsby-image.now.sh/
[`gatsby-image`]: https://www.gatsbyjs.org/packages/gatsby-image/
[graphcms image]: with-graphcms-image
[video13]: https://youtu.be/v4MlWu5ujUA
[demo13]: https://graphcms-with-graphcms-image.now.sh/
[`graphcms-image`]: https://github.com/GraphCMS/graphcms-image
[graphql codegen]: with-graphql-codegen
[demo14]: https://graphcms-with-graphql-codegen.vercel.app/
[graphql code generator]: https://graphql-code-generator.com/docs/getting-started/index
[schema stitching (with graphql mesh)]: with-graphql-mesh
[graphql mesh]: https://www.graphql-mesh.com
[gridsome]: with-gridsome
[video15]: https://youtu.be/XOxhA938c20
[demo15]: https://graphcms-with-gridsome.now.sh/
[`@gridsome/source-graphql`]: https://www.npmjs.com/package/@gridsome/source-graphql
[mdx (with gatsby)]: with-gatsby-mdx
[`gatsby-plugin-mdx`]: https://www.gatsbyjs.com/plugins/gatsby-plugin-mdx
[video16]: https://youtu.be/fXv4ryR-t0A
[demo16]: https://graphcms-with-gatsby-mdx.vercel.app/
[mdx (with next.js)]: with-nextjs-mdx-remote
[video17]: https://youtu.be/mJSY4IfAG7o
[demo17]: https://graphcms-with-nextjs-mdx-remote.vercel.app/
[5]: with-nextjs
[video18]: https://youtu.be/fRqGq6aHUKE
[demo18]: https://graphcms-with-nextjs.now.sh/
[next.js i18n routing]: with-nextjs-i18n-routing
[next.js internationalized routing]: https://nextjs.org/docs/advanced-features/i18n-routing
[video19]: https://youtu.be/lCr8e4SkbUk
[demo19]: https://graphcms-with-nextjs-i18n-routing.vercel.app/
[next.js image]: with-nextjs-image
[video20]: https://youtu.be/nuRa2Gh41Ck
[demo20]: https://graphcms-with-nextjs-image.vercel.app/
[next.js image component]: https://nextjs.org/docs/api-reference/next/image
[next.js image with custom loader]: with-nextjs-image-loader
[video21]: https://youtu.be/loatYRYGLUI
[demo21]: https://graphcms-with-nextjs-image-loader.vercel.app/
[custom loader]: https://nextjs.org/docs/api-reference/next/image#loader
[nuxt.js]: with-nuxtjs
[video22]: https://youtu.be/kTdsFYonNQ4
[demo22]: https://graphcms-with-nuxtjs.now.sh/
[react.js]: with-reactjs
[react.js with react query]: with-react-query
[video23]: https://youtu.be/QXgtDR9VIWc
[demo23]: https://graphcms-with-reactjs.now.sh/
[vue.js]: with-vuejs
[video24]: https://youtu.be/CVM-BFLWwro
[demo24]: https://graphcms-with-vuejs.now.sh/
[sveltekit]: with-sveltekit
[video26]: https://youtu.be/RHorjtLq1LY
[demo26]: https://graphcms-with-sveltekit.now.sh/
[sveltekit with urql]: with-sveltekit-and-urql
[demo27]: https://with-sveltekit-and-urql-xi.vercel.app/
[eleventy]: with-eleventy
[demo28]: https://graphcms-with-eleventy.vercel.app/
[astro]: with-astro
[demo29]: https://graphcms-with-astro.vercel.app/
[vanilla js]: with-vanilla-javascript
[demo30]: https://graphcms-with-vanilla-js.vercel.app
[nextauth]: with-nextauth-credentials
[demo31]: https://graphcms-with-nextauth-credentials.vercel.app
[houdini]: with-houdini
[demo32]: https://graphcms-with-houdini.vercel.app
[swift]: with-swift
[swift with `swift-graphql`]: with-swift-graphql
[swift-graphql]: https://github.com/maticzav/swift-graphql
[houdini]: with-houdini
[demo32]: https://graphcms-with-houdini.vercel.app

<!-- UIX -->

[uix-basic-input]: uix-basic-input
[uix-cloudinary-input]: uix-cloudinary-input

## Links

[Join our Slack] &middot; [Read the Docs] &middot; [Learn more
about GraphCMS]

## Contributing

Do you see something missing above that you're working with? Open a Pull Request with your example, and get it featured in our newsletter! [Learn more](https://graphcms.com/community).
