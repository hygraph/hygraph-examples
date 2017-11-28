import withData from '../lib/withData'
import App from '../components/App'
import AuthorInfo from '../components/AuthorInfo'

const AboutPage = withData(props => (
  <App pathname={props.url.pathname}>
    <AuthorInfo authorId='cjajfxawnh2i10112hbcn9hqv' />
  </App>
))

export default AboutPage
