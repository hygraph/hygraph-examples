module.exports = async () => {
  const { GraphQLClient } = require('graphql-request');
  const client = new GraphQLClient(
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
  );

  const { gql } = require('graphql-request');

  const query = gql`
    query Products {
      products {
        slug
        name
        description
        price
        image {
          url
        }
      }
    }
  `;

  const { products } = await client.request(query);

  return products;
};
