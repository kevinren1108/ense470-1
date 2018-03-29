const {ApproverList} = require('../models')

module.exports = {
  async getAllApprovers (req, res) {
  try{
    const ApproverList = await ApproverList.findAll({
    })
    res.send(ApproverList)
  }catch (err){
    res.status(500).send({
        error: 'An error has occured while retrieving the Approver list'
    })
    }
  },
  async createNewSoftware (req, res) {
    try{
      const software = await SoftwareList.create(req.body)
      const softwareJson = software.toJSON()
      res.send({
        software: softwareJson,
      })
    }catch (err){
      res.status(500).send({
        error: 'An error has occured while creating new software'
      })
      }
    }
}
