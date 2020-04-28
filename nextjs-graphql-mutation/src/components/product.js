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
      ),
    { revalidateOnFocus: false }
  );

  async function handleClick() {
    const newCount = data.productVotes.aggregate.count + 1;

    mutate(
      { ...data, productVotes: { aggregate: { count: newCount } } },
      false
    );

    await fetch('/api/upvote', {
      method: 'POST',
      headers: {
        'Content-type': 'application/json',
      },
      body: JSON.stringify({ id }),
    });
  }

  return (
    <React.Fragment>
      <h1>{name}</h1>
      <button onClick={handleClick} disabled={!data}>
        {data ? data.productVotes.aggregate.count : 'Loading'}
      </button>
    </React.Fragment>
  );
}

export default Product;
