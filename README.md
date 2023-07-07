<h3 align="center">
  Hygraph Examples
</h3>

<p align="center">
  Example projects to help you get started with Hygraph
</p>

## Using this repo

All examples in this repo use the same Hygraph project. Clone it to get started:

[![Clone project](https://hygraph.com/button)](https://app.hygraph.com/clone/0ff23f7a41ce4da69a366ab299cc24d8)

When working with this repo locally with your own Hygraph project, you'll need to add the following to your `.env`:

```dosini
HYGRAPH_ENDPOINT=
HYGRAPH_TOKEN=
```

Examples where we only query the data will hardcode the `HYGRAPH_ENDPOINT` to get you going using the example locally, or on Codesandbox.

## Examples

### Hygraph Content API Features & Recipes

Examples demonstrating how to use Hygraph features.

| Features                                                      | Description                                                                                                                                           |
| ------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Using Asset Upload]                                          | Programmatically upload assets using the [Asset Upload endpoint]                                                                                      |
| [Using Management SDK] ([Video][video2])                      | Basic [Management SDK] script to create a schema.                                                                                                     |
| [Using Remote Fields] ([Video][video3])                       | Basic [Management SDK] script to create a schema with [Remote Fields] to query data directly from the [Stripe API]                                    |
| [Using Mutations] ([Demo][demo4], [Video][video4])            | [Next.js] app demonstrating how to use Hygraph mutations with [`graphql-request`], [`SWR`] and API routes                                             |
| [Using Pagination] ([Demo][demo5], [Video][video5])           | [Next.js] app demonstrating how to paginate Hygraph queries with [`graphql-request`]                                                                  |
| [Using Rich Text Renderer] ([Demo][demo27], [Video][video27]) | [Next.js] app demonstrating how to render Rich Text with [`@graphcms/rich-text-react-renderer`]                                                       |
| [Using Union Types]                                           | A basic product marketing site using union types to compose UI 'blocks' with components. Built with [Next.js], [`graphql-request`] and [Tailwind CSS] |

### Frameworks & Libraries

Examples demonstrating how to use Hygraph with popular application
frameworks.

| Frameworks & Libraries                                                | Description                                                                                                              |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [Algolia] ([Demo][demo6], [Video][video6])                            | Sync content to Algolia via webhooks on publish using Next.js API routes.                                                |
| [Apollo Client 3][1] ([Demo][demo7], [Video][video7])                 | Using [Apollo Client 3] to query data from Hygraph.                                                                      |
| [Apollo Server] ([Demo][demo8], [Video][video8])                      | Using [`apollo-datasource-graphql`] to pull a Hygraph schema into an existing [Apollo Server][2]                         |
| [Express][3] ([Demo][demo9], [Video][video9])                         | A simple [Express] app using `ejs` templating and [`awesome-graphql-client`]                                             |
| [Gatsby][4] ([Demo][demo10])                                          | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages with data from Hygraph                 |
| [Gatsby (File System Route API)] ([Demo][demo11], [Video][video11])   | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages using Gatsby's [File System Route API] |
| [Gatsby Image] ([Demo][demo12], [Video][video12])                     | How to use [`gatsby-image`] with Hygraph assets                                                                          |
| [Hygraph Image] ([Demo][demo13], [Video][video13])                    | How to use [`@graphcms/react-image`] with Gatsby                                                                         |
| [GraphQL Codegen] ([Demo][demo26])                                    | Automatically generate26 types for your Hygraph project with [GraphQL Code Generator]                                    |
| [Schema Stitching (with GraphQL Mesh)]                                | Stitch 3 GraphQL APIs into one with [GraphQL Mesh]                                                                       |
| [Gridsome] ([Demo][demo15], [Video][video15])                         | A basic example using `gridsome create` CLI and [`@gridsome/source-graphql`]                                             |
| [MDX (with Gatsby)] ([Demo][demo16], [Video][video16])                | How to use [`gatsby-plugin-mdx`] with `RichText` fields from Hygraph.                                                    |
| [MDX (with Next.js)] ([Demo][demo17], [Video][video17])               | This example demonstrates how to use markdown fields from Hygraph with `MDX` in Next.js                                  |
| [Next.js][5] ([Demo][demo18], [Video][video18])                       | A basic [Next.js] application, featuring `getStaticProps` and `getStaticPaths` to build static product pages             |
| [Next.js i18n Routing] ([Demo][demo19], [Video][video19])             | How to use [Next.js Internationalized Routing] with Hygraph content                                                      |
| [Next.js Image] ([Demo][demo20], [Video][video20])                    | How to use [Next.js Image Component] with Hygraph assets                                                                 |
| [Next.js Image with Custom Loader] ([Demo][demo21], [Video][video21]) | How to use a [custom loader] function with [Next.js Image Component] and Hygraph assets                                  |
| [Nuxt.js] ([Demo][demo22], [Video][video22])                          | A simple Nuxt.js starter using `create-nuxt-app` CLI with Tailwind and Axios added                                       |
| [Nuxt3 + nuxt-graphql-client] ([Demo][demoNuxt])                      | A simple Nuxt.js starter using the `nuxt-graphql-client` module                                                          |
| [React.js] ([Demo][demo23], [Video][video23])                         | This example demonstrates how to query from Hygraph with graphql-request in React.js                                     |
| [React.js with React Query]                                           | This example demonstrates how to query from Hygraph with React Query in React.js                                         |
| [Vue.js] ([Demo][demo24], [Video][video24])                           | A vanilla Vue.js starter using `vue create` CLI with Vue Router                                                          |
| [SvelteKit] ([Demo][demo26], [Video][video26])                        | A Svelte example using SvelteKit and `graphql-request` to fetch data                                                     |
| [SvelteKit with URQL] ([Demo][demo27])                                | A SvelteKit example URQL to fetch data                                                                                   |
| [Eleventy] ([Demo][demo28])                                           | An Eleventy example using `graphql-request` to fetch data.                                                               |
| [Astro] ([Demo][demo29])                                              | An Astro example using `graphql-request` to fetch data.                                                                  |
| [Vanilla JS] ([Demo][demo30])                                         | Query in the browser with no frameworks, just use the Fetch API.                                                         |
| [NextAuth] ([Demo][demo31])                                           | Authenticate with NextAuth.js and update account info with Hygraph.                                                      |
| [Houdini] ([Demo][demo32])                                            | An Houdini example with SvelteKit.                                                                                       |
| [Swift]                                                               | A native Swift (iOS & Mac) example.                                                                                      |
| [Swift with `swift-graphql`]                                          | A native Swift (iOS & Mac) example using [swift-graphql](swift-graphql).                                                 |

### UI Extensions

We've crafted a few example [UI extensions](https://hygraph.com/docs/ui-extensions) for you to get started with. These should show how to extend the Hygraph UI with your own custom components.

| Name                                        | Type  | SDK        | Description                                                                         |
| ------------------------------------------- | ----- | ---------- | ----------------------------------------------------------------------------------- |
| [Quickstart](uix-basic-input)               | Input | React      | A basic `<input />` showing how to use UI extensions.                               |
| [Cloudinary](uix-cloudinary-input)          | Input | React      | A custom Cloudinary asset picker.                                                   |
| [Focal Point](uix-focal-point-input)        | Input | JavaScript | A custom focal point picker.                                                        |
| [Bynder](uix-bynder-input)                  | Input | JavaScript | Browse assets from Bynder using the Compact View V2 component.                      |
| [Conditional Fields](uix-conditional-field) | Input | TypeScript | UI extension to show how to change visibility for other fields and use fieldConfig. |

<!-- Links -->

[join our slack]: https://slack.hygraph.com
[read the docs]: https://hygraph.com/docs
[learn more about hygraph]: https://hygraph.com

<!-- Hygraph Features & Recipes -->

[using asset upload]: using-asset-upload
[video1]: #
[demo26]: #
[asset upload endpoint]: https://hygraph.com/docs/content-api/assets#uploading-assets
[using management sdk]: using-management-sdk
[video2]: https://youtu.be/MLJCKsxcxEo
[demo2]: #
[using remote fields]: using-remote-fields
[video3]: https://youtu.be/cu3ZAAgPC20
[demo3]: #
[management sdk]: https://www.npmjs.com/package/@graphcms/management
[remote fields]: https://hygraph.com/docs/schema/field-types#remote
[stripe api]: https://stripe.com/docs/api
[using mutations]: using-mutations
[video4]: https://youtu.be/KPwMaPmaoS0
[demo4]: https://hygraph-using-mutations.vercel.app
[next.js]: https://nextjs.org
[`graphql-request`]: https://github.com/prisma-labs/graphql-request
[`swr`]: https://github.com/zeit/swr
[using pagination]: using-pagination
[video5]: https://youtu.be/QTdPzdXyY40
[demo5]: https://hygraph-using-pagination.vercel.app/
[using rich text renderer]: using-rich-text-react-renderer
[video27]: https://youtu.be/4rYbSlE6m6A
[demo27]: https://hygraph-using-rich-text-react-renderer.vercel.app/
[`@graphcms/rich-text-react-renderer`]: https://npmjs.com/package/@graphcms/rich-text-react-renderer
[using union types]: using-union-types
[video5]: #
[demo5]: #
[tailwind css]: https://tailwindcss.com

<!-- Frameworks & Libraries -->

[algolia]: with-algolia
[demo6]: https://hygraph-with-algolia.vercel.app/
[1]: with-apollo-client-3
[apollo client 3]: https://www.apollographql.com/docs/react
[video7]: https://youtu.be/xyCj2zyBzyw
[demo7]: https://hygraph-with-apollo-client-3.vercel.app/
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
[demo10]: https://hygraph-with-gatsby.vercel.app/
[`gatsby-source-graphcms`]: https://github.com/hygraph/gatsby-source-graphcms
[gatsby (file system route api)]: with-gatsby-filesystem-routing
[video11]: https://youtu.be/vFF-C_FXQHI
[demo11]: https://hygraph-with-gatsby-filesystem-routing.vercel.app/
[file system route api]: https://www.gatsbyjs.com/docs/file-system-page-creation
[gatsby image]: with-gatsby-image
[video12]: https://youtu.be/v4MlWu5ujUA
[demo12]: https://hygraph-with-gatsby-image.vercel.app/
[`gatsby-image`]: https://www.gatsbyjs.org/packages/gatsby-image/
[graphcms image]: with-graphcms-image
[video13]: https://youtu.be/v4MlWu5ujUA
[demo13]: https://hygraph-with-graphcms-image.vercel.app/
[`graphcms-image`]: https://github.com/hygraph/react-image
[graphql codegen]: with-graphql-codegen
[demo14]: https://hygraph-with-graphql-codegen.vercel.app/
[graphql code generator]: https://graphql-code-generator.com/docs/getting-started/index
[schema stitching (with graphql mesh)]: with-graphql-mesh
[graphql mesh]: https://www.graphql-mesh.com
[gridsome]: with-gridsome
[video15]: https://youtu.be/XOxhA938c20
[demo15]: https://hygraph-with-gridsome.vercel.app/
[`@gridsome/source-graphql`]: https://www.npmjs.com/package/@gridsome/source-graphql
[mdx (with gatsby)]: with-gatsby-mdx
[`gatsby-plugin-mdx`]: https://www.gatsbyjs.com/plugins/gatsby-plugin-mdx
[video16]: https://youtu.be/fXv4ryR-t0A
[demo16]: https://hygraph-with-gatsby-mdx.vercel.app/
[mdx (with next.js)]: with-nextjs-mdx-remote
[video17]: https://youtu.be/mJSY4IfAG7o
[demo17]: https://hygraph-with-nextjs-mdx-remote.vercel.app/
[5]: with-nextjs
[video18]: https://youtu.be/fRqGq6aHUKE
[demo18]: https://hygraph-with-nextjs.vercel.app/
[next.js i18n routing]: with-nextjs-i18n-routing
[next.js internationalized routing]: https://nextjs.org/docs/advanced-features/i18n-routing
[video19]: https://youtu.be/lCr8e4SkbUk
[demo19]: https://hygraph-with-nextjs-i18n-routing.vercel.app/
[next.js image]: with-nextjs-image
[video20]: https://youtu.be/nuRa2Gh41Ck
[demo20]: https://hygraph-with-nextjs-image.vercel.app/
[next.js image component]: https://nextjs.org/docs/api-reference/next/image
[next.js image with custom loader]: with-nextjs-image-loader
[video21]: https://youtu.be/loatYRYGLUI
[demo21]: https://hygraph-with-nextjs-image-loader.vercel.app/
[custom loader]: https://nextjs.org/docs/api-reference/next/image#loader
[nuxt.js]: with-nuxtjs
[video22]: https://youtu.be/kTdsFYonNQ4
[demo22]: https://hygraph-with-nuxtjs.vercel.app/
[demoNuxt]: https://hygraph-with-nuxtjs-nuxt-graphql-client.vercel.app/
[Nuxt3 + nuxt-graphql-client]: with-nuxt-graphql
[react.js]: with-reactjs
[react.js with react query]: with-react-query
[video23]: https://youtu.be/QXgtDR9VIWc
[demo23]: https://hygraph-with-reactjs.vercel.app/
[vue.js]: with-vuejs
[video24]: https://youtu.be/CVM-BFLWwro
[demo24]: https://hygraph-with-vuejs.vercel.app/
[sveltekit]: with-sveltekit
[video26]: https://youtu.be/RHorjtLq1LY
[demo26]: https://hygraph-with-sveltekit.vercel.app/
[sveltekit with urql]: with-sveltekit-and-urql
[demo27]: https://with-sveltekit-and-urql-xi.vercel.app/
[eleventy]: with-eleventy
[demo28]: https://hygraph-with-eleventy.vercel.app/
[astro]: with-astro
[demo29]: https://hygraph-with-astro.vercel.app/
[vanilla js]: with-vanilla-javascript
[demo30]: https://hygraph-with-vanilla-js.vercel.app
[nextauth]: with-nextauth-credentials
[demo31]: https://hygraph-with-nextauth-credentials.vercel.app
[houdini]: with-houdini
[demo32]: https://hygraph-with-houdini.vercel.app
[swift]: with-swift
[swift with `swift-graphql`]: with-swift-graphql
[swift-graphql]: https://github.com/maticzav/swift-graphql
[houdini]: with-houdini

<!-- UIX -->

[uix-basic-input]: uix-basic-input
[uix-cloudinary-input]: uix-cloudinary-input

## Links

[Join our Slack] &middot; [Read the Docs] &middot; [Learn more
about Hygraph]

## Contributing

Do you see something missing above that you're working with? Open a Pull Request with your example, and get it featured in our newsletter! [Learn more](https://hygraph.com/community).
