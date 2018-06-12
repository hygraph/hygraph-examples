import Link from 'next/link'

const Header = ({ pathname }) => (
  <header>
    <h1>GraphCMS Starter blog</h1>
    <nav>
      <Link prefetch href='/'>
        <a className={pathname === '/' && 'is-active'}>
          Home
        </a>
      </Link>
      <Link prefetch href='/about'>
        <a className={pathname === '/about' && 'is-active'}>
          About
        </a>
      </Link>
    </nav>
    <style jsx>{`
      header {
        padding: 24px 32px;
        margin-bottom: 32px;
        text-align: center;
      }
      h1 {
        font-weight: 100;
      }
      nav {
        max-width: 650px;
        margin: 0 auto;
      }
      a {
        font-size: 18px;
        margin-right: 16px;
      }
      .is-active {
        font-weight: bold;
        text-decoration: underline;
      }
    `}</style>
  </header>
)

export default Header
