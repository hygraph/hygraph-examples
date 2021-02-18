import {
  useAllProductsQuery,
  ProductOrderByInput,
  ProductSummaryFragment,
} from './generated/graphcms-schema';

function App() {
  const { loading, error, data } = useAllProductsQuery({
    variables: { orderBy: ProductOrderByInput.PublishedAtDesc },
  });

  const aProductWithoutVote = useOneProductWithoutVote();

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error :(</p>;

  return (
    <>
      <h2>Our products</h2>
      <ul>
        {data &&
          data.products.map((product) => (
            <li key={product.id}>{product.name}</li>
          ))}
      </ul>
      {aProductWithoutVote && (
        <>
          <h2>Don't forget to vote on: </h2>
          <p>{aProductWithoutVote.name}</p>
        </>
      )}
    </>
  );
}

function useOneProductWithoutVote(): ProductSummaryFragment | undefined {
  const { data } = useAllProductsQuery({
    variables: { where: { votes_none: {} }, first: 1 },
  });
  return data?.products[0];
}

export default App;
