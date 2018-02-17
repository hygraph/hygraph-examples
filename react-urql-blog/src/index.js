import React from 'react'
import ReactDOM from 'react-dom'

import { Provider, Client} from 'urql'

import App from './components/App'
import './index.css'

import registerServiceWorker from './registerServiceWorker'

// Replace this with your project's endpoint
const GRAPHCMS_API = 'https://api.graphcms.com/simple/v1/starterBlog'

const client = new Client({
  url: 'https://api.graphcms.com/simple/v1/starterBlog'
})

ReactDOM.render(
  <Provider client={client}>
    <App />
  </Provider>,
  document.getElementById('root')
)
registerServiceWorker()
