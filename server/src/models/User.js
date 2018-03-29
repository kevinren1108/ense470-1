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
  const User = sequelize.define("User", {
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
    account__type:{
      type: DataTypes.INTEGER,
      unique: false
    }

  }, {
    hooks: {
      //beforeCreate: hashPassword, dont use these: they break the program
      //beforeUpdate: hashPassword,
      beforeSave: hashPassword
    }
  })

  User.associate = (models) =>  {
    User.hasMany(models.Ticket, {
      forignKey: "UserId"
    })
  }

  User.prototype.comparePassword = function (password) {
    //return true
    return bcrypt.compareAsync(password, this.password)
  }

  return User
}