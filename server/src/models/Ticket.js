
module.exports = (sequelize, DataTypes) => {
  const Ticket = sequelize.define("Ticket", {
    approval_status: DataTypes.STRING,
    user_id:  DataTypes.INTEGER,
    software_requested: DataTypes.STRING
  })
  return Ticket
}