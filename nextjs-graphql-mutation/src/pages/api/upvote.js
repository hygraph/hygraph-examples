import { GraphQLClient } from 'graphql-request';

export default async ({ body }, res) => {
  const graphcms = new GraphQLClient(
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
    {
      headers: {
        authorization: `Bearer ${process.env.GRAPHCMS_MUTATION_TOKEN}`,
      },
    }
  );

  const { createVote } = await graphcms.request(
    `mutation upvoteProduct($id: ID!) {
      createVote(data: { product: { connect: { id: $id } } }) {
        id
      }
    }`,
    { id: body.id }
  );

  await graphcms.request(
    `mutation publishUpvote($id: ID!) {
      publishVote(where: { id: $id }, to: PUBLISHED) {
        id
      }
    }`,
    { id: createVote.id }
  );

  res.status(201).json({ id: createVote.id });
};
