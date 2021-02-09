import '../styles/tailwind.css';

function App({ Component, pageProps }) {
  return (
    <div className="max-w-5xl mx-auto p-6">
      <Component {...pageProps} />
    </div>
  );
}

export default App;
