import Api from '@/services/Api'

export default {
  GetAllSoftware () {
    return Api().get('getAllSoftware')
  }
}
