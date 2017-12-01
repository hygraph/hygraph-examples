import './style'
import App from './components/App'

import { ApolloClient } from 'apollo-client'
import { HttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'
import { ApolloProvider } from 'react-apollo'

// Replace this with your project's endpoint
const GRAPHCMS_API = 'https://api.graphcms.com/simple/v1/starterBlog'

const client = new ApolloClient({
  link: new HttpLink({ uri: GRAPHCMS_API }),
  cache: new InMemoryCache(),
  ssr: false
})

export default () => (
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>
)
