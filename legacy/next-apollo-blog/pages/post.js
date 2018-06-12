import withData from '../lib/withData'
import App from '../components/App'
import Post from '../components/Post'

const AboutPage = withData(props => (
  <App pathname={props.url.pathname}>
    <Post slug={props.url.query.slug} />
  </App>
))

export default AboutPage
