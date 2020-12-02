import { gql } from 'graphql-request';

import graphCmsClient from '../lib/graphCmsClient';

function IndexPage({ products }) {
  return <pre>{JSON.stringify(products, null, 2)}</pre>;
}

export async function getStaticProps({ locale }) {
  const { products } = await graphCmsClient.request(
    gql`
      query IndexPageQuery($locale: Locale!) {
        products(locales: [$locale]) {
          id
          name
          slug
        }
      }
    `,
    { locale }
  );

  return {
    props: {
      products,
    },
  };
}

export default IndexPage;
