import Vue from 'vue'
import Router from 'vue-router'
import signup from '@/components/signup'
import login from '@/components/login'
import index from '@/components/index'
import currRequest from '@/components/currRequest'
import newRequest from '@/components/newRequest'
import ticket from '@/components/ticket'

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
    },
    {
      path: '/newRequest',
      name: 'newRequest',
      component: newRequest
    },
    {
      path: '/ticket',
      name: 'ticket',
      component: ticket
    }
  ]
})
