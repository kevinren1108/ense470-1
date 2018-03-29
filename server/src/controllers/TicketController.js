const {Ticket} = require('../models')

module.exports = {
  async getAllTickets (req, res) {
  try{
    const ticket = await Ticket.findAll()
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
  },
  async approveTicket(req, res) {
    try {
      await Ticket.findOne(
        {where: { id: req.body.TicketId } }
      ).then(ticket => {
        ticket.updateAttributes({
          approval_status: 'Approved'
        })
      })
      res.status(200).send()
      // await Ticket.update(
      //   { approval_status: 'Approved' },
      //   { id: req.body.TicketId }
      // ).then(() => res.status(204).send())
    } catch (err) {
      res.status(500).send(err)
    }
  },
  async denyTicket(req, res) {
    try {
      await Ticket.findOne(
        {where: { id: req.body.TicketId } }
      ).then(ticket => {
        ticket.updateAttributes({
          approval_status: 'Denied'
        })
      })
      res.status(200).send()
      // await Ticket.update(
      //   { approval_status: 'Denied' },
      //   { id: req.body.TicketId }
      // ).then(() => res.status(204).send())
    } catch (err) {
      res.status(500).send(err)
    }
  }
}
