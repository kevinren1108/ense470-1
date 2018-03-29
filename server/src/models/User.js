const Promise = require('bluebird')
const bcrypt = Promise.promisifyAll(require('bcrypt-nodejs'))

function hashPassword(user, options) {
  const SALT_FACTOR = 8

  if(!user.changed('password')){
    return;
  }
  return bcrypt
    .genSaltAsync(SALT_FACTOR)
    .then(salt => bcrypt.hashAsync(user.password, salt, null))
    .then(hash => {
      user.setDataValue('password', hash)
    })
}


module.exports = (sequelize, DataTypes) => {
  const user = sequelize.define('user', {
    id:{
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    first__name: DataTypes.STRING,
    last__name:  DataTypes.STRING,
    email: {
      type: DataTypes.STRING,
      unique: true
    },
    password: DataTypes.STRING,
    user__Status:{
      type: DataTypes.STRING,
      unique: false
    }
  }, {
    hooks: {
      //beforeCreate: hashPassword, dont use these: they break the program
      //beforeUpdate: hashPassword,
      beforeSave: hashPassword
    }
  })

  user.prototype.comparePassword = function (password) {
    return bcrypt.compareAsync(password, this.password)
  }

  return user
}