import Vue from 'vue'
import Router from 'vue-router'
import HomePage from '../components/HomePage.vue'
import AboutPage from '../components/AboutPage.vue'
import PostPage from '../components/PostPage.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomePage
    },
    {
      path: '/about',
      name: 'about',
      component: AboutPage
    },
    {
      path: '/post/:slug',
      name: 'post',
      component: PostPage
    }
  ]
})
