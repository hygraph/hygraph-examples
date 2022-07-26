import Image from 'next/image';
import { GraphQLClient, gql } from 'graphql-request';

function HygraphImageLoader({ src, width }) {
  const relativeSrc = (src) => src.split('/').pop();

  return `https://media.graphassets.com/resize=width:${width}/${relativeSrc(
    src
  )}`;
}

function IndexPage({ products }) {
  return (
    <div className="gap-6 grid grid-cols-1 md:grid-cols-3">
      {products.map((product) => (
        <div key={product.id}>
          <Image
            loader={HygraphImageLoader}
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
  const hygraph = new GraphQLClient(
    'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
  );

  const { products } = await hygraph.request(
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
