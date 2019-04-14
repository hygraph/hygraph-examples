import React from 'react'
import Header from './Header'

import './index.css'

export default ({ children }) => (
  <div>
    <Header />
    <main>
      {children}
    </main>
  </div>
)
