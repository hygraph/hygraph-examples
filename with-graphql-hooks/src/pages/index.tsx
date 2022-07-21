import { Loader } from "components/Loader";
import { ProductQuery, useQueryProducts } from "graphql/queries/products";
import Link from "next/link";

const Home = (): JSX.Element => {
  const { data, loading } = useQueryProducts();

  return (
    <div className="container">
      <h1>All Products</h1>

      {loading ? (
        <Loader />
      ) : (
        <ul>
          {data.products.map((product: ProductQuery) => (
            <li key={product.id}>
              <Link href={`/product/${product.slug}`}>
                <a>{product.name}</a>
              </Link>
            </li>
          ))}
        </ul>
      )}

      <p>This example is using graphql-hooks, typescript and next.js</p>
    </div>
  );
};

export default Home;
