import withData from '../lib/withData'
import App from '../components/App'
import PostList from '../components/PostList'

const IndexPage = withData(props => (
  <App pathname={props.url.pathname}>
    <PostList />
  </App>
))

export default IndexPage
