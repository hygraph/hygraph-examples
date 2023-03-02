import { GraphQLClient } from 'graphql-request';
import Link from 'next/link';

const hygraph = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

const getProduct = async (params) => {
  const { product } = await hygraph.request(
    `
    query ProductPageQuery($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
      }
    }
  `,
    {
      slug: params.slug,
    }
  );

  return product
}

export default async function Product({ params }) {
  const product = await getProduct(params)
  return (
    <>
      <Link href="/">Home</Link>
      <h1>{product.name}</h1>
      <p>{product.description}</p>
      <p>{product.price / 100}</p>
    </>
  )
}
