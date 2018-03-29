const Sequelize = require('sequelize')
const Op = Sequelize.Op
module.exports = {
  port: process.env.PORT || 8080,
  db: {
    database: process.env.DB_NAME || 'ense470',
    user: process.env.DB_USER || 'postgres',
    password: process.env.DB_PASS || 'ense470',
    options: {
      dialect: process.env.DIALECT || 'postgres',
      host: process.env.DB_HOST || 'localhost',
      // storage: './ense470.sqlite',
      operatorsAliases: Op
    }
  },
  authentication: {
    jwtSecret: process.env.JWT_SECRET || 'secret'
  }
}

