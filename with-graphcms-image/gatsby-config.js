module.exports = {
  plugins: [
    {
      resolve: `gatsby-source-graphql`,
      options: {
        typeName: `Hygraph`,
        fieldName: `hygraph`,
        url: `https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master`,
      },
    },
  ],
};
