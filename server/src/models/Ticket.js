
module.exports = (sequelize, DataTypes) => {
  const Ticket = sequelize.define("Ticket", {
    approval_status: DataTypes.STRING
  })

  Ticket.associate = (models) => {
    Ticket.belongsTo(models.SoftwareList, {
      foreignKey: "SoftwareId", as: "Software"
    })
  }

  return Ticket
}
