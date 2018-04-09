
module.exports = (sequelize, DataTypes) => {
  const SoftwareList = sequelize.define("SoftwareList", {
    id:{
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    softwareName: DataTypes.STRING,
    softwareAcrynom:  DataTypes.STRING,
    softwareActivationLink: DataTypes.STRING
  })

  SoftwareList.associate = (models) =>  {
    SoftwareList.hasMany(models.ApproverList, {
      foreignKey: "SoftwareId", as: "Software"
    })
  },
    SoftwareList.associate = (models) =>  {
      SoftwareList.hasMany(models.Ticket, {
        foreignKey: "SoftwareId"
      })
  }
  return SoftwareList
}
//

