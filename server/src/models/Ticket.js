
module.exports = (sequelize, DataTypes) => {
  const Ticket = sequelize.define("Ticket", {
    approval_status: DataTypes.STRING,
    software_id: DataTypes.INTEGER
  })
  return Ticket
}
