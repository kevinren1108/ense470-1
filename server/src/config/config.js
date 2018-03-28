const Sequelize = require('sequelize')
const Op = Sequelize.Op
module.exports = {
  port: process.env.PORT || 5432,
  db: {
    database: process.env.DB_NAME || 'd2ff7qkrkm2uib',
    user: process.env.DB_USER || 'dkqxtcexqusgat',
    password: process.env.DB_PASS || 'ec6543353a3f3da30544461b8f6de3d1e1c5c648b59db569767b13d13371a430',
    options: {
      dialect: process.env.DIALECT || 'postgres',
      host: process.env.HOST || 'ec2-174-129-26-203.compute-1.amazonaws.com',
      // storage: './ense470.sqlite',
      operatorsAliases: Op
    }
  },
  authentication: {
    jwtSecret: process.env.JWT_SECRET || 'secret'
  }
}

