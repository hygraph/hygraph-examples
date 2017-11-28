import withData from '../lib/withData'
import App from '../components/App'
import PostContent from '../components/PostContent'

const AboutPage = withData(props => (
  <App pathname={props.url.pathname}>
    <PostContent slug={props.url.query.slug} />
  </App>
))

export default AboutPage
