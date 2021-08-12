import { Fragment } from 'react';
import { useRouter } from 'next/router';
import { gql, useQuery } from 'urql';

export default function ProductPage() {
  const router = useRouter();

  const ProductBySlugQuery = gql`
    query GetProductBySlug($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
      }
    }
  `;

  const [result] = useQuery({
    query: ProductBySlugQuery,
    variables: { slug: router.query.slug },
  });
  const { data, fetching, error } = result;

  if (fetching) return <p>Fetching product by slug</p>;
  if (error) return <p>Oh no... {error.message}</p>;

  return (
    <Fragment>
      <h1>{data.product.name}</h1>
      <p>{data.product.description}</p>
      <p>{data.product.price / 100}</p>
    </Fragment>
  );
}
