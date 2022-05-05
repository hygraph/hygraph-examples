import { useGetProducts } from "./useRequest";

function App() {
  const { data, status } = useGetProducts();

  return (
    <div className="App">
      <h1>List All Products</h1>

      {status === "loading" ? (
        <p>Loading...</p>
      ) : (
        data?.map((product) => (
          <div key={product.id} className="product">
            <h2>{product.name}</h2>
            <p>{product.description}</p>
            <span>$ {product.price}</span>
          </div>
        ))
      )}
    </div>
  );
}

export default App;
