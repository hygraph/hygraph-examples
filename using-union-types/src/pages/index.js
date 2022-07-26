import { request } from 'graphql-request';

import * as Blocks from '../components';

function Index({ page }) {
  return (
    <>
      {page.blocks.map((block, index) => {
        const Component = Blocks[block.__typename];

        if (!Component) return null;

        return <Component key={index} {...block} />;
      })}
    </>
  );
}

export async function getStaticProps() {
  const { page } = await request(
    'https://api-eu-central-1.hygraph.com/v2/ck9e0p6nh1fby01yyfvww984d/master',
    `query PageQuery($slug: String!) {
      page(where: { slug: $slug }) {
        blocks {
          __typename
          ... on Cta {
            content
            title
          }
          ... on Grid {
            columns {
              __typename
              ... on Feature {
                content
                title
              }
            }
          }
          ... on Hero {
            subtitle
            title
          }
        }
      }
    }`,
    {
      slug: 'home',
    }
  );

  return {
    props: {
      page,
    },
  };
}

export default Index;
