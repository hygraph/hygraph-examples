module.exports = {
  siteMetadata: {
    title: `GraphCMS Starter blog`,
  },
  plugins: [
    {
      resolve: 'gatsby-source-graphql',
      options: {
        // This type will contain remote schema Query type
        typeName: 'GCMS',
        // This is field under which it's accessible
        fieldName: 'gcms',
        // Url to query from
        url:
          'https://api-useast.graphcms.com/v1/cjiacyow100ob01eqwnghonw2/master',
      },
    },
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: 'GraphCMS Starter blog',
        short_name: 'GCMS blog',
        start_url: '/',
        background_color: '#fff',
        theme_color: '#61045f',
        display: 'minimal-ui',
        icons: [
          {
            src: `/favicons/chrome-192.png`,
            sizes: `192x192`,
            type: `image/png`,
          },
          {
            src: `/favicons/chrome-512.png`,
            sizes: `512x512`,
            type: `image/png`,
          },
        ],
      },
    },
    `gatsby-plugin-offline`,
  ],
};
