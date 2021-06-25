<h3 align="center">
  GraphCMS Examples
</h3>

<p align="center">
  Example projects to help you get started with GraphCMS
</p>

## Links

[Join our Slack]</li> &middot; [Read the Docs] &middot; [Learn more
about GraphCMS]

## Examples

### GraphCMS Features & Recipes

Examples demonstrating how to use GraphCMS features.

| Features               | Description                                                                                                                                           | Demo                                         |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| [Using Asset Upload]   | Programmatically upload assets using the [Asset Upload endpoint]                                                                                      |                                              |
| [Using Management SDK] | Basic [Management SDK] script to create a schema.                                    |                                              |
| [Using Remote Fields] | Basic [Management SDK] script to create a schema with [Remote Fields] to query data directly from the [Stripe API]                                    |                                              |
| [Using Mutations]      | [Next.js] app demonstrating how to use GraphCMS mutations with [`graphql-request`], [`SWR`] and API routes                                            | https://graphcms-using-mutations.now.sh      |
| [Using Pagination]     | [Next.js] app demonstrating how to paginate GraphCMS queries with [`graphql-request`]                                                                 | https://graphcms-using-pagination.vercel.app |
| [Using Rich Text Renderer]     | [Next.js] app demonstrating how to render Rich Text with [`@graphcms/rich-text-react-renderer`]                                                                 | https://graphcms-using-rich-text-react-renderer.vercel.app |
| [Using Union Types]    | A basic product marketing site using union types to compose UI 'blocks' with components. Built with [Next.js], [`graphql-request`] and [Tailwind CSS] | https://graphcms-using-union-types.now.sh    |

### Frameworks & Libraries

Examples demonstrating how to use GraphCMS with popular application
frameworks.

| Frameworks & Libraries             | Description                                                                                                              | Demo                                                       |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------- |
| [Algolia]                          | Sync content to Algolia via webhooks on publish using Next.js API routes.                                                | https://graphcms-with-algolia.vercel.app                   |
| [Apollo Client 3][1]               | Using [Apollo Client 3] to query data from GraphCMS.                                                                     | https://graphcms-with-apollo-client-3.vercel.app           |
| [Apollo Server]                    | Using [`apollo-datasource-graphql`] to pull a GraphCMS schema into an existing [Apollo Server][2]                        | https://graphcms-with-apollo-server.herokuapp.com          |
| [Express][3]                       | A simple [Express] app using `ejs` templating and [`awesome-graphql-client`]                                             | https://graphcms-with-express.herokuapp.com                | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages with data from GraphCMS |
| [Gatsby][4]                        | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages with data from GraphCMS                | https://graphcms-with-gatsby.now.sh                        |
| [Gatsby (File System Route API)]   | A basic [Gatsby] site that uses [`gatsby-source-graphcms`] to build product pages using Gatsby's [File System Route API] | https://graphcms-with-gatsby-filesystem-routing.vercel.app |
| [Gatsby Image]                     | How to use [`gatsby-image`] with GraphCMS assets                                                                         | https://graphcms-with-gatsby-image.now.sh                  |
| [GraphCMS Image]                   | How to use [`graphcms-image`] with Gatsby                                                                                | https://graphcms-with-graphcms-image.now.sh                |
| [GraphQL Codegen]                  | Automatically generated types for your GraphCMS project with [GraphQL Code Generator]                                    | https://graphcms-with-graphql-codegen.vercel.app           |
| [Gridsome]                         | A basic example using `gridsome create` CLI and [`@gridsome/source-graphql`]                                             | https://graphcms-with-gridsome.now.sh                      |
| [MDX (with Gatsby)]                | How to use [`gatsby-plugin-mdx`] with `RichText` fields from GraphCMS.                                                   | https://graphcms-with-gatsby-mdx.vercel.app                |
| [MDX (with Next.js)]               | This example demonstrates how to use markdown fields from GraphCMS with `MDX` in Next.js                                 | https://graphcms-with-nextjs-mdx-remote.vercel.app         |
| [Next.js][5]                       | A basic [Next.js] application, featuring `getStaticProps` and `getStaticPaths` to build static product pages             | https://graphcms-with-nextjs.now.sh                        |
| [Next.js i18n Routing]             | How to use [Next.js Internationalized Routing] with GraphCMS content                                                     | https://graphcms-with-nextjs-i18n-routing.vercel.app       |
| [Next.js Image]                    | How to use [Next.js Image Component] with GraphCMS assets                                                                | https://graphcms-with-nextjs-image.vercel.app              |
| [Next.js Image with Custom Loader] | How to use a [custom loader] function with [Next.js Image Component] and GraphCMS assets                                 | https://graphcms-with-nextjs-image-loader.vercel.app       |
| [Nuxt.js]                          | A simple Nuxt.js starter using `create-nuxt-app` CLI with Tailwind and Axios added                                       | https://graphcms-with-nuxtjs.now.sh                        |
| [React.js]                         | This example demonstrates how to query from GraphCMS with graphql-request in React.js                                    | https://graphcms-with-reactjs.now.sh                       |
| [Vue.js]                           | A vanilla Vue.js starter using `vue create` CLI with Vue Router                                                          | https://graphcms-with-vuejs.now.sh                         |
| [Sapper]                           | A Svelte example using Sapper                                                                                          | https://graphcms-with-sapper.now.sh                        |
| [SvelteKit]                        | A Svelte example using SvelteKit and `graphql-request` to fetch data                                                     | https://graphcms-with-sveltekit.now.sh                     |

<!-- Links -->

[join our slack]: https://slack.graphcms.com
[read the docs]: https://graphcms.com/docs
[learn more about graphcms]: https://graphcms.com

<!-- GraphCMS Features & Recipes -->

[using asset upload]: using-asset-upload
[asset upload endpoint]:
  https://graphcms.com/docs/content-api/assets#uploading-assets
[using remote fields]: using-remote-fields
[using management sdk]: using-management-sdk
[management sdk]: https://www.npmjs.com/package/@graphcms/management
[remote fields]: https://graphcms.com/docs/schema/field-types#remote
[stripe api]: https://stripe.com/docs/api
[using mutations]: using-mutations
[next.js]: https://nextjs.org
[`graphql-request`]: https://github.com/prisma-labs/graphql-request
[`swr`]: https://github.com/zeit/swr
[using pagination]: using-pagintion
[using rich text renderer]: using-rich-text-react-renderer
[`@graphcms/rich-text-react-renderer`]: https://npmjs.com/package/@graphcms/rich-text-react-renderer
[using union types]: using-union-types
[tailwind css]: https://tailwindcss.com

<!-- Frameworks & Libraries -->

[algolia]: with-algolia
[1]: with-apollo-client-3
[apollo client 3]: https://www.apollographql.com/docs/react
[apollo server]: with-apollo-server
[`apollo-datasource-graphql`]:
  https://github.com/poetic/apollo-datasource-graphql
[2]: https://www.apollographql.com/docs/apollo-server/
[3]: with-express
[express]: https://expressjs.com/
[`awesome-graphql-client`]:
  https://github.com/lynxtaa/awesome-graphql-client
[4]: with-gatsby
[gatsby]: https://www.gatsbyjs.org/
[`gatsby-source-graphcms`]:
  https://github.com/GraphCMS/gatsby-source-graphcms
[gatsby (file system route api)]: with-gatsby-filesystem-routing
[file system route api]:
  https://www.gatsbyjs.com/docs/file-system-page-creation
[gatsby image]: with-gatsby-image
[`gatsby-image`]: https://www.gatsbyjs.org/packages/gatsby-image/
[graphcms image]: with-graphcms-image
[`graphcms-image`]: https://github.com/GraphCMS/graphcms-image
[graphql codegen]: with-graphql-codegen
[graphql code generator]:
  https://graphql-code-generator.com/docs/getting-started/index
[gridsome]: with-gridsome
[`@gridsome/source-graphql`]:
  https://www.npmjs.com/package/@gridsome/source-graphql
[mdx (with gatsby)]: with-gatsby-mdx
[`gatsby-plugin-mdx`]:
  https://www.gatsbyjs.com/plugins/gatsby-plugin-mdx
[mdx (with next.js)]: with-nextjs-mdx-remote
[5]: with-nextjs
[next.js i18n routing]: with-nextjs-i18n-routing
[next.js internationalized routing]:
  https://nextjs.org/docs/advanced-features/i18n-routing
[next.js image]: with-nextjs-image
[next.js image component]:
  https://nextjs.org/docs/api-reference/next/image
[next.js image with custom loader]: with-nextjs-image-loader
[custom loader]:
  https://nextjs.org/docs/api-reference/next/image#loader
[nuxt.js]: with-nuxtjs
[react.js]: with-reactjs
[vue.js]: with-vuejs
[sapper]: with-sapper
[sveltekit]: with-sveltekit
