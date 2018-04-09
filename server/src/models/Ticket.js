
module.exports = (sequelize, DataTypes) => {
  const Ticket = sequelize.define("Ticket", {
    approval_status: DataTypes.STRING
  })
  return Ticket
}
