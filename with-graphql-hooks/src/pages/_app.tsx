import type { AppProps } from "next/app";

import { GraphQLClient, ClientContext } from "graphql-hooks";

import "../styles/index.css";

export const client = new GraphQLClient({
  url: "https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master",
});

const MyApp = ({ Component, pageProps }: AppProps) => {
  return (
    <ClientContext.Provider value={client}>
      <Component {...pageProps} />;
    </ClientContext.Provider>
  );
};

export default MyApp;
