/* jshint indent: 4 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('file', { 
		label: {
			type: DataTypes.STRING(16),
			allowNull: false,
			defaultValue: ''
		},
		label: {
			type: DataTypes.STRING(128),
			allowNull: false,
			defaultValue: ''
		},
		filename: { 
			type: DataTypes.STRING(128),
			allowNull: false,
			defaultValue: ''
		},
		published: { 
			type: DataTypes.BOOLEAN,
			allowNull: false,
			defaultValue: 0
		},
		coach: { 
			type: DataTypes.BOOLEAN,
			allowNull: false,
			defaultValue: 0
		},
		uploaded: { 
			type: DataTypes.DATE,
			allowNull: true
		}
	});
};



