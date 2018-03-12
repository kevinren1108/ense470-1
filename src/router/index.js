import Vue from 'vue'
import Router from 'vue-router'
import signup from '@/components/signup'
import index from '@/components/index'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: '',
      component: index
    },
    {
      path: '/signup',
      name: 'signup',
      component: signup
    }
  ]
})
