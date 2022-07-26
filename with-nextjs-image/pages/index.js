import Image from 'next/image';
import { GraphQLClient, gql } from 'graphql-request';

function IndexPage({ products }) {
  return (
    <div className="gap-6 grid grid-cols-1 md:grid-cols-3">
      {products.map((product) => (
        <div key={product.id}>
          <Image
            src={product.image.url}
            width={product.image.width}
            height={product.image.height}
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
