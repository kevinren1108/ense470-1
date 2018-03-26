import Api from '@/services/Api'

export default {
  sign__up (credentials) {
    return Api().post('signup', credentials)
  },
  login (credentials) {
    return Api().post('login', credentials)
  }
}