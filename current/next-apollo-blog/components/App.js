import { Fragment } from 'react'
import Header from './Header'

const App = ({ children, pathname }) => (
  <Fragment>
    <Header pathname={pathname} />
    <main>
      {children}
    </main>
    <style jsx global>{`
      body {
        font-family: 'Source Sans Pro', sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin: 0;
        font-size: 16px;
        line-height: 1.5;
      }
      main {
        max-width: 650px;
        margin: 32px auto;
        padding: 0 24px;
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
  </Fragment>
)

export default App
