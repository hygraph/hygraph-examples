import { GraphQLClient, gql } from 'graphql-request'

const graphcmsClient = new GraphQLClient(
  'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
)

export default (_, inject) => {
  inject('graphcms', graphcmsClient)
  inject('gql', gql)
}
