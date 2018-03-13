import Vue from 'vue'
import Router from 'vue-router'
import signup from '@/components/signup'
import login from '@/components/login'
import index from '@/components/index'
import currRequest from '@/components/currRequest'

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
    },
    {
      path: '/login',
      name: 'login',
      component: login
    },
    {
      path: '/currRequest',
      name: 'currRequest',
      component: currRequest
    }
  ]
})
