const Sequelize = require('sequelize')
const Op = Sequelize.Op
module.exports = {
  port: process.env.PORT || 3000,
  db: {
    database: process.env.DB_NAME || 'ense470',
    user: process.env.DB_USER || 'ense470',
    password: process.env.DB_PASS || 'ense470',
    options: {
      dialect: process.env.DIALECT || 'sqlite',
      host: process.env.HOST || 'localhost',
      // storage: './ense470.sqlite',
      operatorsAliases: Op
    }
  },
  authentication: {
    jwtSecret: process.env.JWT_SECRET || 'secret'
  }
}

