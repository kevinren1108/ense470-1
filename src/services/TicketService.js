import Api from '@/services/Api'

export default {
  GetAllTickets () {
    return Api().get('allTickets')
  },
  GetApprovedTickets () {
    return Api().get('getApprovedTickets')
  }
}
