const Joi = require('joi')


module.exports = {
  signup(req, res, next){
    const schema = {
      first__name: Joi.string().regex(/^[a-zA-Z]{3,30}$/),
      last__name: Joi.string().regex(/^[a-zA-Z]{3,30}$/),
      email: Joi.string().email(),
      password: Joi.string().regex(/^[a-zA-Z0-9]{3,30}$/),
      account__type: [Joi.string(), Joi.number()]
    }
  const{error, value} = Joi.validate(req.body, schema)

  if(error){
    switch(error.details[0].context.key){
      case 'first__name' :
        res.status(400).send({
          error: `The first name provided failed to match the following rules:
          <br>
          1. It must contain only the following characters: lower case, upper case
          <br>
          2. it must be at least 3 characters in length and not greater than 30 characters
          `
        })
        break
      case 'last__name':
      res.status(400).send({
        error: `The last name provided failed to match the following rules:
        <br>
        1. It must contain only the following characters: lower case, upper case
        <br>
        2. it must be at least 3 characters in length and not greater than 30 characters
        `
      })
        break
      case 'email':
        res.status(400).send({
            error: 'You must provide a valid email address'
        })
        break
      case 'password':
        res.status(400).send({
          error: `The password provided failed to match the following rules:
          <br>
          1. It must contain only the following characters: lower case, upper case, numerics
          <br>
          2. it must be at least 3 characters in length and not greater than 30
          `
        })
        break
      case 'account__type:':
        res.status(400).send({
          error: `The invitation code to match the following rules:
          <br>
          1. It must contain only the following characters: lower case, upper case, numerics
          `
        })
        break
      default:
        res.status(400).send({
            error: `invalid registration information`
        })
    }
  }
  else{
    next()
    }
  }
}
