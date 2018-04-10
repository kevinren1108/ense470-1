import Api from '@/services/Api'

export default {
  GetManagedSoftware (userId) {
    return Api().get('getManagedSoftware/' + userId)
  }
}
