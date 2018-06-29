import withData from '../lib/withData'
import App from '../components/App'
import AuthorInfo from '../components/AuthorInfo'

const AboutPage = withData(props => (
  <App pathname={props.url.pathname}>
    <AuthorInfo />
  </App>
))

export default AboutPage
