import Image from 'next/image';
import { GraphQLClient, gql } from 'graphql-request';

function GraphCMSImageLoader({ src, width }) {
  const relativeSrc = (src) => src.split('/').pop();

  return `https://media.graphcms.com/resize=width:${width}/${relativeSrc(src)}`;
}

function IndexPage({ products }) {
  return (
    <div className="gap-6 grid grid-cols-1 md:grid-cols-3">
      {products.map((product) => (
        <div key={product.id}>
          <Image
            loader={GraphCMSImageLoader}
            src={product.image.url}
            width={400}
            height={400}
          />
          <h2 className="font-semibold text-lg">{product.name}</h2>
        </div>
      ))}
    </div>
  );
}

export async function getStaticProps() {
  const graphcms = new GraphQLClient(
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
  );

  const { products } = await graphcms.request(
    gql`
      {
        products {
          id
          image {
            height
            url
            width
          }
          name
        }
      }
    `
  );

  return {
    props: {
      products,
    },
  };
}

export default IndexPage;
