import { Link } from 'preact-router/match'

export default () => (
  <header className='Header-header'>
    <h1 className='Header-h1'>GraphCMS Starter blog</h1>
    <nav className='Header-nav'>
      <Link
        href='/'
        className='Header-navLink'
        activeClassName='Header-isActive'
      >
        Home
      </Link>
      <Link
        href='/about'
        className='Header-navLink'
        activeClassName='Header-isActive'
      >
        About
      </Link>
    </nav>
  </header>
)
