import Vue from 'vue'
import Router from 'vue-router'
import SignupPage from '@/components/signup'
import LoginPage from '@/components/login'
import IndexPage from '@/components/index'
import SoftwarePage from '@/components/software'
import NewRequestPage from '@/components/new-request'
import TicketDetailsPage from '@/components/ticket'

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
      path: '/software',
      name: 'RequestListPage',
      component: SoftwarePage
    },
    {
      path: '/new-request',
      name: 'NewRequestPage',
      component: NewRequestPage
    },
    {
      path: '/ticket',
      name: 'TicketDetailsPage',
      component: TicketDetailsPage
    }
  ]
})
