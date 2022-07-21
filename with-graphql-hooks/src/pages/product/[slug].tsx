import type { GetStaticProps } from "next";
import { useRouter } from "next/router";
import Link from "next/link";

import { client } from "pages/_app";
import {
  GET_PRODUCT,
  GET_PRODUCTS,
  ProductQuery,
  ProductsQuery,
} from "graphql/queries/products";

import { Loader } from "components/Loader";

interface ProductProps {
  product: ProductQuery;
}

export default function Product(props: ProductQuery) {
  const router = useRouter();

  if (router.isFallback) return <Loader />;

  return (
    <div className="container">
      <h1>Product</h1>

      <p>
        This is the product page: <strong>{props.name}</strong>
      </p>

      <Link href="/">
        <a>Go back to the homepage</a>
      </Link>

      <div className="product">
        <span>
          <strong>ID:</strong> {props.id}
        </span>

        <span>
          <strong>Name:</strong> {props.name}
        </span>

        <span>
          <strong>Slug:</strong> {props.slug}
        </span>

        <span>
          <strong>Description:</strong> {props.description}
        </span>

        <span>
          <strong>Price:</strong> ${props.price}
        </span>
      </div>
    </div>
  );
}

export async function getStaticPaths() {
  const { data } = await client?.request<ProductsQuery>({
    query: GET_PRODUCTS,
  });

  const paths = data?.products?.map(({ slug }) => ({
    params: { slug },
  }));

  return { paths, fallback: true };
}

export const getStaticProps: GetStaticProps = async ({ params }) => {
  const { data } = await client?.request<ProductProps>({
    query: GET_PRODUCT,
    variables: {
      slug: params.slug,
    },
  });

  return {
    revalidate: 60,
    props: data.product,
  };
};
