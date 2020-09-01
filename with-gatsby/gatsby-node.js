exports.createPages = async ({ graphql, actions: { createPage } }) => {
  const {
    data: { products },
  } = await graphql(`
    {
      products: allGraphCmsProduct {
        nodes {
          id
          slug
        }
      }
    }
  `);

  products.nodes.forEach(({ id, slug }) =>
    createPage({
      path: `/products/${slug}`,
      component: require.resolve(`./src/templates/ProductPage.js`),
      context: {
        id,
      },
    })
  );
};
