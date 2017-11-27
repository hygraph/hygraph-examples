import withData from '../lib/withData'
import App from '../components/App'

export default withData(props => (
  <App pathname={props.url.pathname}>
    <h1>I'm an about page!</h1>
  </App>
))
