const path = require('path');
const slash = require('slash');

exports.createPages = ({ graphql, actions }) => {
  const { createPage } = actions;
  return new Promise((resolve, reject) => {
    const postTemplate = path.resolve(`src/templates/post.js`);

    graphql(`
      {
        gcms {
          allPosts: postsConnection {
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
      }
    `).then(result => {
      if (result.errors) {
        console.log(result.errors);
      }
      result.data.gcms.allPosts.edges.map(({ node }) => {
        createPage({
          path: `/post/${node.slug}`,
          component: slash(postTemplate),
          context: {
            slug: node.slug,
          },
        });
      });
      resolve();
    });
  });
};
