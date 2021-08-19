import React from 'react';
import ReactDOM from 'react-dom';
import { createClient, Provider } from 'urql';

import App from './App';

const client = createClient({
  url: 'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
});

ReactDOM.render(
  <React.StrictMode>
    <Provider value={client}>
      <App />
    </Provider>
  </React.StrictMode>,
  document.getElementById('root')
);
