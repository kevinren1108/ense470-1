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
app.use(serveStatic(__dirname + "/../../dist"))

require('./routes')(app)

sequelize.sync()
  .then(() => {
    app.listen(config.port)
    console.log(`server started on port ${config.port}`)
  })


