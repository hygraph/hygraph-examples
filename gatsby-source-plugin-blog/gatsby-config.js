module.exports = {
  siteMetadata: {
    title: `GraphCMS Starter blog`
  },
  plugins: [
    {
      resolve: `gatsby-source-graphcms`,
      options: {
        endpoint: `https://api.graphcms.com/simple/v1/starterBlog`,
        query: `{
          allPosts {
            id
            slug
            title
            content
            dateAndTime
            coverImage {
              handle
            }
          },
          allAuthors {
            id
            name
            bibliography
            avatar {
              handle
            }
          }
        }`
      }
    }
  ]
}
