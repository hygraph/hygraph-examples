const path = require('path')
const slash = require('slash')
const crypto = require('crypto')

exports.createPages = ({ graphql, boundActionCreators }) => {
  const { createPage } = boundActionCreators
  return new Promise((resolve, reject) => {
    const postTemplate = path.resolve(`src/templates/post.js`)

    graphql(`
      {
        allPosts {
          edges {
            node {
              id
              title
              slug
              coverImage {
                handle
              }
              content
            }
          }
        }
      }
    `
    ).then(result => {
      if (result.errors) {
        console.log(result.errors)
      }
      result.data.allPosts.edges.map(({ node }) => {
        createPage({
          path: `/post/${node.slug}`,
          component: slash(postTemplate),
          context: {
            slug: node.slug
          }
        })
      })
      resolve()
    })
  })
}

// we create markdown nodes here so transformer-remark can process them
exports.onCreateNode = ({ node, boundActionCreators }) => {
  const { createNode } = boundActionCreators
  if (node.internal.type === `Posts`) {
    createNode({
      id: `md-${node.id}`,
      parent: node.id,
      children: [],
      internal: {
        type: `${node.internal.type}Markdown`,
        mediaType: `text/markdown`,
        content: node.internal.content,
        contentDigest: crypto
          .createHash(`md5`)
          .update(JSON.stringify(node.internal.content))
          .digest(`hex`)
      }
    })
  }
}
