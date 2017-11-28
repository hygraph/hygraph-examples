import Head from 'next/head'
import Header from './Header'

const App = ({ children, pathname }) => [
  <Head key='next-head'>
    <meta name='viewport' content='initial-scale=1.0, width=device-width' key='viewport' />
  </Head>,

  <div key='app'>
    <Header pathname={pathname} />
    <main>
      {children}
    </main>
    <style jsx global>{`
      * {
        font-family: 'Source Sans Pro', sans-serif;
      }
      body {
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
  </div>
]

export default App
