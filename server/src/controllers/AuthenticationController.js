const {User} = require('../models')
const jwt = require('jsonwebtoken')
const config = require('../config/config')

function jwtSignUser (user){
  const ONE_WEEK = 60 * 60 * 24 * 7
  return jwt.sign(user, config.authentication.jwtSecret, {
    expiresIn: ONE_WEEK
  })
}

module.exports = {
  async signup (req, res) {
    try {
      const user = await User.create(req.body)
      const userJson = user.toJSON()
      res.send({
        user: userJson,
        token: jwtSignUser(userJson)

      })
    } catch (err) {
      console.log('wtf', err)
      //res.status(400).send({
      //  error: 'this email account(and or) invite code are already in use'
      //})
    }
  },
  async login (req, res) {
    try {
      const {email, password} = req.body
      const user = await User.findOne({
        where: {
          email: email
        }
      })

      if(!user){
        return res.status(403).send({

          error: 'The login info was incorrect1'
        })
      }

      const isPasswordValid = await user.comparePassword(password)

      //console.log(isPasswordValid)
      //console.log(password, user.password)
      if(!isPasswordValid){
        return res.status(403).send({
          error: 'The login info was incorrect2'
        })
      }
      const userJson = user.toJSON()
      res.send({
        user: userJson,
        token: jwtSignUser(userJson)
      })
    } catch (err) {
      console.log("now whats the problem", err)
      //res.status(500).send({
      //error: 'An error has occured in trying to login '
      //})
    }
  }
}
