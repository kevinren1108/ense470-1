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
    login(state, payload) {
      if (payload.token) {
        state.user = payload.user
        state.token = payload.token
        state.isUserLoggedIn = true
      }
      else {
        state.isUserLoggedIn = false
      }
    },
    logout(state) {
      state.user = null
      state.token = null
      state.isUserLoggedIn = false
    }
  },
  actions: {
    login ({commit}, payload) {
      commit('login', payload)
    },
    logout({commit}) {
      commit('logout')
    }
  }
})
