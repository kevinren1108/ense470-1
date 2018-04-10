const {ApproverList} = require('../models')

module.exports = {
  async getAllApprovers (req, res) {
    try {
      const ApproverList = await ApproverList.findAll({
      })
      res.send(ApproverList)
    } catch (err){
      res.status(500).send({
          error: 'An error has occured while retrieving the Approver list'
      })
    }
  },
  async createNewApprover (req, res) {
    try {
      const approver = await ApproverList.create(req.body)
      const approverJson = approver.toJSON()
      res.send({approver})
    } catch (err){
      res.status(500).send({
        error: 'An error has occured while creating new approver'
      })
    }
  },
  async getManagedSoftware (req, res) {
    try {
      const software = await ApproverList.findAll({
        attributes: ['SoftwareId'],
        where: {
          UserId: req.params.UserId
        }
      })
      res.send(software)
    } catch (err){
      res.status(500).send({
        error: 'An error has occured while retrieving managed software: ' + err
      })
    }
  }
}
