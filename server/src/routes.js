const AuthenticationController = require('./controllers/AuthenticationController')

const AuthenticationControllerPolicy = require('./policies/AuthenticationControllerPolicy')
const TicketController = require('./controllers/TicketController')

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
}
