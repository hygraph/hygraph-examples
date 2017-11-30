import React from 'react'
import { NavLink } from 'react-router-dom'

export default () => (
  <header className='Header-header'>
    <h1 className='Header-h1'>GraphCMS Starter blog</h1>
    <nav className='Header-nav'>
      <NavLink
        exact to='/'
        className='Header-navLink'
        activeClassName='Header-isActive'
      >
        Home
      </NavLink>
      <NavLink
        to='/about'
        className='Header-navLink'
        activeClassName='Header-isActive'
      >
        About
      </NavLink>
    </nav>
  </header>
)
