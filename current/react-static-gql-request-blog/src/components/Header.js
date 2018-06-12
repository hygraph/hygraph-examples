import React from 'react'
import { NavLink, withSiteData } from 'react-static'

export default withSiteData(({ title }) => (
  <header className='header-header'>
    <h1 className='header-h1'>{title}</h1>
    <nav className='header-nav'>
      <NavLink className='header-link' exact to='/'>
        Home
      </NavLink>
      <NavLink className='header-link' to='/about'>
        About
      </NavLink>
    </nav>
  </header>
))
