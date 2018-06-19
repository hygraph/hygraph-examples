import React from 'react'
import { View } from 'react-native'

import { NativeRouter, Route } from 'react-router-native'

import { ApolloClient } from 'apollo-client'
import { HttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'
import { ApolloProvider } from 'react-apollo'

import Header from './components/Header'
import Home from './components/Home'
import About from './components/About'
import Post from './components/Post'

// Replace this with your project's endpoint
const GRAPHCMS_API = 'https://api-useast.graphcms.com/v1/cjiacyow100ob01eqwnghonw2/master'

const client = new ApolloClient({
  link: new HttpLink({ uri: GRAPHCMS_API }),
  cache: new InMemoryCache()
})

export default class App extends React.Component {
  render () {
    return (
      <ApolloProvider client={client}>
        <NativeRouter>
          <View style={{flex: 1}}>
            <Header />
            <Route exact path='/' component={Home} />
            <Route path='/about' component={About} />
            <Route path='/post/:slug' component={Post} />
          </View>
        </NativeRouter>
      </ApolloProvider>
    )
  }
}
