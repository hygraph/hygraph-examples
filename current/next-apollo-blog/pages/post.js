import withData from '../lib/withData'
import App from '../components/App'
import Post from '../components/Post'

const PostPage = withData(props => (
  <App pathname={props.url.pathname}>
    <Post id={props.url.query.slug} />
  </App>
))

export default PostPage
