import { request } from 'graphql-request';
import useSWR from 'swr';

function Product({ id, name }) {
  const { data, mutate } = useSWR(
    [
      `query productVotesCount($id: ID!) {
        productVotes: votesConnection(where: {product: {id: $id}}) {
          aggregate {
            count
          }
        }
      }`,
      id,
    ],
    (query, id) =>
      request(
        'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
        query,
        { id }
      )
  );

  return (
    <React.Fragment>
      <h1>{name}</h1>
      {data ? data.productVotes.aggregate.count : 'Loading'}
    </React.Fragment>
  );
}

export default Product;
