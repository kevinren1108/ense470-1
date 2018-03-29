const {Ticket} = require('../models')

module.exports = {
  async getAllTickets (req, res) {
  try{
    const ticket = await Ticket.findAll({
        limit:10
    })
    res.send(ticket)
  }catch (err){
    res.status(500).send({
        error: 'An error has occured while retrieving tickets'
    })
    }
  },
  async createNewTicket (req, res) {
    try{
      console.log(req.body)
      const ticket = await Ticket.create(req.body)
      res.status(204).send()
    }catch (err){
      res.status(500).send({
         error: 'An error has occured while creating a ticket'
      })
    }
  },
  async getApprovedTickets(req, res) {
    try {
      const ticket = await Ticket.findAll({
          where: {
            user_id: req.user_id,
            approval_status: 'Approved'
          }
        })
      res.status(200).send(ticket)
    } catch (err) {
      res.status(500).send({error: "Error fetching approved software"})
    }
  }
}
