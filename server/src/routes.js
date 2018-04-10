const AuthenticationController = require('./controllers/AuthenticationController')
const AuthenticationControllerPolicy = require('./policies/AuthenticationControllerPolicy')
const TicketController = require('./controllers/TicketController')
const SoftwareListController = require('./controllers/SoftwareListController')
const ApproverListController = require('./controllers/ApproverListController')

module.exports = (app) => {
  app.post('/signup',
  AuthenticationControllerPolicy.signup,
  AuthenticationController.signup)

  app.post('/login',
  AuthenticationController.login)

  app.get('/allTickets',
  TicketController.getAllTickets)

  app.get('/getTicketDetails/:TicketId',
  TicketController.getTicketDetails)

  app.post('/createNewTicket',
  TicketController.createNewTicket)

  app.post('/approveTicket',
  TicketController.approveTicket)

  app.post('/denyTicket',
  TicketController.denyTicket)

  app.get('/getAllSoftware',
  SoftwareListController.getAllSoftware)

  app.get('/getApprovedTickets/:UserId',
  TicketController.getApprovedTickets)

  app.post('/createNewSoftware',
  SoftwareListController.createNewSoftware)

  app.post('/createNewApprover',
  ApproverListController.createNewApprover)

  app.get('/getMyRequests/:UserId',
  TicketController.getMyRequests)

  app.get('/getMyPendingTickets/:UserId',
  TicketController.getMyPendingTickets)

  app.get('/getManagedSoftware/:UserId',
  ApproverListController.getManagedSoftware)

}


