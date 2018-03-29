import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  strict: true,
  state: {
    token: null,
    user: null,
    isUserLoggedIn: false
  },
  mutations: {
    login(state, user, token) {
      if (token) {
        state.user = user
        state.token = token
        state.isUserLoggedIn = true
      }
      else {
        state.isUserLoggedIn = false
      }
    }
  },
  actions: {
    login ({commit}, user, token) {
      commit('login', user, token)
    }
  }
})
