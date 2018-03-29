import Api from '@/services/Api'

export default {
  GetAllTickets () {
    return Api().get('allTickets')
  },
  CreateNewTicket (credentials) {
    return Api().post('createNewTicket', credentials)
  }

}
