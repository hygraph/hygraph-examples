import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import withData from '../lib/withData'
import App from '../components/App'
import ErrorMessage from '../components/ErrorMessage'

const AboutPage = ({ data: { loading, error, Author }, url }) => {
  if (error) return <ErrorMessage message='Error loading author.' />
  if (!loading) {
    return (
      <App pathname={url.pathname}>
        <div className='info-header'>
          <img src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${Author.authorImage.handle}`} />
          <h1>Hello! My name is {Author.authorName}</h1>
        </div>
        <p>{Author.authorBibliography}</p>
        <style jsx>{`
          .info-header {
            text-align: center;
          }
          img {
            height: 120px;
            width: auto;
          }
        `}</style>
      </App>
    )
  }
  return <h2>Loading author...</h2>
}

export const Author = gql`
  query Author {
    Author(id: "cjajfxawnh2i10112hbcn9hqv") {
      authorName
      authorBibliography
      authorImage {
        handle
      }
    }
  }
`

export default withData(graphql(Author)(AboutPage))
