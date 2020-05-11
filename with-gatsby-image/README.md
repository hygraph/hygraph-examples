# GraphCMS ⨯ Gatsby Image

[Join our Slack](https://slack.graphcms.com)

This example demonstrates how to use `gatsby-image` with GraphCMS assets.

• [Demo](https://graphcms-with-gatsby-image.now.sh)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/GraphCMS/graphcms-examples/tree/master/with-gatsby-image)

## Why?

Gatsby nodes are **not** automatically created for GraphCMS assets when using [`gatsby-source-graphql`](https://www.gatsbyjs.org/packages/gatsby-source-graphql/). This limitation will prevent you from using [`gatsby-image`](https://www.gatsbyjs.org/packages/gatsby-image/) with your GraphCMS project out of the box.

We're able to work around this by combining the [`createReolvers`](https://www.gatsbyjs.org/docs/node-apis/#createResolvers) API and [`gaby-source-filesyetem`](https://www.gatsbyjs.org/packages/gatsby-source-filesystem/) library.

This will enable us to manually create local nodes for our GraphCMS assets at build time.

## How?

We need to extend the base `GraphCMS_Asset` type to include a new `node` field. This field will resolve to a newly created local file node, built from [`createRemoteFileNode()`](https://www.gatsbyjs.org/packages/gatsby-source-filesystem/#createremotefilenode) by passing the URL of the GraphCMS asset.

```js
// gatsby-node.js
const { createRemoteFileNode } = require('gatsby-source-filesystem');

exports.createResolvers = ({
  actions: { createNode },
  cache,
  createNodeId,
  createResolvers,
  store,
  reporter,
}) => {
  const resolvers = {
    GraphCMS_Asset: {
      node: {
        type: `File`,
        resolve: ({ url }, args, context, info) => {
          return createRemoteFileNode({
            url,
            store,
            cache,
            createNode,
            createNodeId,
            reporter,
          });
        },
      },
    },
  };

  createResolvers(resolvers);
};
```

We can now query for the `node` field and use the available [`gatsby-transformer-sharp`](https://www.gatsbyjs.org/packages/gatsby-image/#gatsby-transformer-sharp) fragments to achieve the desired effects.

> **Note:** Our query **must** also include the `url` field as this is used in our `createResolvers()` function to fetch and build the local asset node.

Combine this with the `<Img />` component and we can utilise all the benefits of `gatsby-image` with our remote GraphCMS assets!

```js
import React from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import Img from 'gatsby-image';

const pageQuery = graphql`
  {
    gcms {
      products {
        image {
          url
          node {
            childImageSharp {
              fluid(maxWidth: 560) {
                ...GatsbyImageSharpFluid
              }
            }
          }
        }
      }
    }
  }
`;

const IndexPage = () => {
  const {
    gcms: { products },
  } = useStaticQuery(pageQuery);

  return products.map((product) => (
    <Img fluid={product.image.node.childImageSharp.fluid} />
  ));
};

export default IndexPage;
```

## How to Use

### Download Manually

```bash
npx create-gcms-app with-gatsby-image
```

Install & Run:

```bash
cd with-gatsby-image
npm install
npm run dev
# or
cd with-gatsby-image
yarn
yarn dev
```

### Run on Codesandbox

[![Develop with Codesandbox](https://codesandbox.io/static/img/play-codesandbox.svg)](https://codesandbox.io/s/github/GraphCMS/graphcms-examples/tree/master/with-gatsby-image)
