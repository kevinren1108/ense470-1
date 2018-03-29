import Api from '@/services/Api'

export default {
  GetUserInfo (search) {
    return Api().get('getID', search)
  }
}
