import React from 'react'
import { BrowserRouter as Router, Route } from 'react-router-dom'

import Header from './Header'
import HomePage from './HomePage'
import AboutPage from './AboutPage'
import PostPage from './PostPage'

const App = () => (
  <Router>
    <div>
      <Header />
      <main>
        <Route exact path='/' component={HomePage} />
        <Route path='/about' component={AboutPage} />
        <Route path='/post/:slug' component={PostPage} />
      </main>
    </div>
  </Router>
)

export default App
