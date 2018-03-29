const {SoftwareList} = require('../models')

module.exports = {
  async getAllSoftware (req, res) {
  try{
    const softwareName = await SoftwareList.findAll({
    })
    res.send(softwareName)
  }catch (err){
    res.status(500).send({
        error: 'An error has occured while retrieving the software list'
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
        error: 'An error has occured while creating software'
      })
      }
    }
}
