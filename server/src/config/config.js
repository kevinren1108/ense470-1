const Sequelize = require('sequelize')
const Op = Sequelize.Op
module.exports = {
  port: process.env.PORT || 3000,
  db: {
    database: process.env.DB_NAME || 'ense470',
    user: process.env.DB_USER || 'postgres',
    password: process.env.DB_PASS || 'ense470',
    options: {
      dialect: process.env.DIALECT || 'postgres', //was sqlite
      host: process.env.HOST || 'localhost',
      //storage: './ense470.sequelize',
      //storage: 'sequelize',
      operatorsAliases: Op
    }
  },
  authentication: {
    jwtSecret: process.env.JWT_SECRET || 'secret'
  }
}

