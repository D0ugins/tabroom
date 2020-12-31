/* jshint indent: 4 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('session', {
		userkey: {
			type: DataTypes.STRING(127),
			allowNull: false
		},
		ip: {
			type: DataTypes.STRING(63),
			allowNull: false
		},
		defaults: {
			type: DataTypes.JSON,
			allowNull: true
		},
	});
};



