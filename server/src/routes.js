const AuthenticationController = require('./controllers/AuthenticationController')
const AuthenticationControllerPolicy = require('./policies/AuthenticationControllerPolicy')
const TicketController = require('./controllers/TicketController')
const SoftwareListController = require('./controllers/SoftwareListController')
const UserController = require('./controllers/UserController')
const ApproverListController = require('./controllers/ApproverListController')

module.exports = (app) => {
  app.post('/signup',
  AuthenticationControllerPolicy.signup,
  AuthenticationController.signup)

  app.post('/login',
  AuthenticationController.login)

  app.get('/allTickets',
  TicketController.getAllTickets)

  app.post('/createNewTicket',
  TicketController.createNewTicket)

  app.post('/approveTicket',
  TicketController.approveTicket)

  app.post('/denyTicket',
  TicketController.denyTicket)

  app.get('/getAllSoftware',
  SoftwareListController.getAllSoftware)

  app.get('/getApprovedTickets',
  TicketController.getApprovedTickets)

  app.post('/createNewSoftware',
  SoftwareListController.createNewSoftware)

  app.post('/getID',
  UserController.getID)

  app.post('/createNewApprover',
  ApproverListController.createNewApprover)

  app.post('/getMyRequests',
  TicketController.getMyRequests)

  app.post('/getMyPendingTickets',
  TicketController.getMyPendingTickets)

}


