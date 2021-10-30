/* jshint indent: 4 */

/*
 * This is a stub, it permits the relations in index.js to add futher foreign
 * keys, such as regions and membership types where applicable.  An ordinary
 * auto-generated join table will not permit the creation of additional keys
 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('chapterCircuit', {
		table_name : 'chapter_circuit',
		code: {
			type: DataTypes.STRING(15),
			allowNull: false,
			defaultValue: '',
		},
		full_member: {
			type: DataTypes.BOOLEAN,
			allowNull: false,
			defaultValue: '0',
		},
	});
};
