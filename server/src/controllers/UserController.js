const {User} = require('../models')

module.exports = {
  async getID (req, res) {
  try{
    const {email, id} = req.body
    const user = await User.findOne({
        where: {
          email:email
        }
    })
    res.send(user)
  }catch (err){
    console.log(err)
    //res.status(500).send({
    //    error: 'An error has occured while retrieving userID'
    //})
    }
  }
}
