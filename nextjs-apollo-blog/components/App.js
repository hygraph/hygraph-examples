import Header from './Header'

export default ({ children, pathname }) => (
  <main>
    <Header pathname={pathname} />
    {children}
    <style jsx global>{`
      * {
        font-family: 'Source Sans Pro', sans-serif;
      }
      body {
        margin: 0;
        padding: 32px 64px;
        font-size: 16px;
        line-height: 1.5;
      }
      a {
        color: deepskyblue;
        text-decoration: none;
      }
      article {
        margin: 0 auto;
        max-width: 650px;
      }
    `}</style>
  </main>
)
