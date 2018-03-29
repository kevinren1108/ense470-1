const express= require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const {sequelize} = require('./models')
const config = require('./config/config')

var serveStatic = require('serve-static')

const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())  // allows any host or client to access this, use if hosting on another domain 
<<<<<<< HEAD
app.use(serveStatic(__dirname + "/../../dist"))
=======

app.use(serveStatic(__dirname+ "/../../dist"))

>>>>>>> 6a2c4ad6a03c44132d022d8ad0cf49731a98c0c2

require('./routes')(app)

sequelize.sync()
  .then(() => {
    app.listen(config.port)
    console.log(`server started on port ${config.port}`)
  })


