import { request } from 'graphql-request'

const GRAPHCMS_API = 'https://api-useast.graphcms.com/v1/cjiacyow100ob01eqwnghonw2/master'

const query = `{
  posts {
    id
    slug
    title
    coverImage {
      handle
    }
    content
  }
  authors {
    id
    name
    avatar {
      handle
    }
    bibliography
  }
}`

export default {
  getSiteData: () => ({
    title: 'GraphCMS Starter blog'
  }),
  getRoutes: async () => {
    const {
      posts,
      authors
     } = await request(GRAPHCMS_API, query)

    return [
      {
        path: '/',
        component: 'src/pages/Home',
        getData: () => ({
          posts
        }),
        children: posts.map(post => ({
          path: `/post/${post.id}`,
          component: 'src/pages/Post',
          getData: () => ({
            post
          })
        }))
      },
      {
        path: '/about',
        component: 'src/pages/About',
        getData: () => ({
          authors
        })
      },
      {
        path: '404',
        component: 'src/pages/404'
      }
    ]
  }
}
