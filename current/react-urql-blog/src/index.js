import React from 'react'
import ReactDOM from 'react-dom'

import { Provider, Client} from 'urql'

import App from './components/App'
import './index.css'

import registerServiceWorker from './registerServiceWorker'

const client = new Client({
  url: 'https://api-useast.graphcms.com/v1/cjiacyow100ob01eqwnghonw2/master'
})

ReactDOM.render(
  <Provider client={client}>
    <App />
  </Provider>,
  document.getElementById('root')
)
registerServiceWorker()
