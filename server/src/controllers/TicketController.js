const {Ticket, SoftwareList, ApproverList} = require('../models')
const Sequelize = require('sequelize')
// const Op = Sequelize.Op

module.exports = {
  async getAllTickets (req, res) {
    try {
      const ticket = await Ticket.findAll({
        include: [{
          model: SoftwareList,
          as: 'Software'
        }]
      })
      res.send(ticket)
    } catch (err){
      res.status(500).send({
          error: 'An error has occured while retrieving all tickets: ' + err
      })
    }
  },
  async getMyRequests(req,res){
    try {
      const ticket = await Ticket.findAll({
        where: {
          UserId: req.params.UserId,
          approval_status: "Pending"
        },
        include: [{
          model: SoftwareList,
          as: 'Software'
        }]
      })
      res.send(ticket)
    } catch (err) {
      res.status(500).send({
        error: "An error has occurred while retrieving user's requests: " + err
      })
    }
  },
  async getMyPendingTickets(req, res) {
    try {
      console.log("USER ID ================ ", req.params.UserId)
      const softwareIds = await ApproverList.findAll({
        attributes: ['SoftwareId'],
        where: {
          UserId: req.params.UserId
        },
        raw: true
      }).then(async managedSoftwareIds => {
        let ids = []
        for (item of managedSoftwareIds) {
          ids.push(item.SoftwareId)
        }
        await Ticket.findAll({
          where: {
            SoftwareId: {
              [Sequelize.Op.or]: ids
            },
            approval_status: "Pending"
          },
          include: [{
            model: SoftwareList,
            as: 'Software'
          }]
        }).then(tickets => {
          res.send(tickets)
        })
      })
    } catch(err) {
      res.status(500).send({
        error: "An error has occurred while retrieving user's pending tickets: " + err
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
          UserId: req.params.UserId,
          approval_status: "Approved"
        },
        include: [{
          model: SoftwareList,
          as: 'Software'
        }]
      })
      res.send(ticket)
    } catch (err) {
      res.status(500).send({
        error: "An error has occurred while retrieving user's requests: " + err
      })
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
  },
  async getTicketDetails(req,res){
    console.log("HHEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECK")
    try {
      const ticket = await Ticket.findOne({
        where: {
          id: req.params.TicketId
        },
        include: [{
          model: SoftwareList,
          as: 'Software'
        }]
      })
      res.send(ticket)
    } catch (err) {
      res.status(500).send({
        error: "An error has occurred while retrieving ticket: " + err
      })
    }
  }
}

