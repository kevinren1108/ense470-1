

module.exports = (sequelize, DataTypes) => {
  const ApproverList = sequelize.define("ApproverList", {

  })
  ApproverList.associate = (models) => {
    ApproverList.belongsTo(models.SoftwareList, {
      foreignKey: "SoftwareId", as: "Software"
    })
  }
  return ApproverList
  }


