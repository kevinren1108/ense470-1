import Api from '@/services/Api'

export default {
  GetAllTickets () {
    return Api().get('tickets')
  }
}
