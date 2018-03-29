import Api from '@/services/Api'

export default {
  GetAllTickets () {
    return Api().get('allTickets')
  },
  GetApprovedTickets () {
    return Api().get('getApprovedTickets')
  },
  CreateNewTicket (credentials) {
    return Api().post('createNewTicket', credentials)
  },
  ApproveTicket (ticketId) {
    return Api().post('approveTicket', { TicketId: ticketId })
  },
  DenyTicket (ticketId) {
    return Api().post('denyTicket', { TicketId: ticketId })
  }
}
