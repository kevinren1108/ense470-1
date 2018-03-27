import Vue from 'vue'
import Router from 'vue-router'
import SignupPage from '@/components/signup'
import LoginPage from '@/components/login'
import IndexPage from '@/components/index'
import MyRequestsPage from '@/components/my-requests'
import NewRequestPage from '@/components/new-request'
import RequestDetailsPage from '@/components/request-details'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: '',
      component: IndexPage
    },
    {
      path: '/signup',
      name: 'SignupPage',
      component: SignupPage
    },
    {
      path: '/login',
      name: 'LoginPage',
      component: LoginPage
    },
    {
      path: '/my-requests',
      name: 'MyRequestsPage',
      component: MyRequestsPage
    },
    {
      path: '/new-request',
      name: 'NewRequestPage',
      component: NewRequestPage
    },
    {
      path: '/request/:id',
      name: 'RequestDetailsPage',
      component: RequestDetailsPage
    }
  ]
})
