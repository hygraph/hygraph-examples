import Link from 'next/link'

export default ({ pathname }) => (
  <header>
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
    <style jsx>{`
      header {
        margin-bottom: 24px;
      }
      a {
        font-size: 18px;
        margin-right: 16px;
      }
      .is-active {
        color: midnightblue;
      }
    `}</style>
  </header>
)
