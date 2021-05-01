
const getSchools = {

    GET: async (req, res) => {

		const db = req.db;
		const tournId = req.params.tourn_id;
		const op = db.Sequelize.Op

		if (tournId) {
			// Filter out signup options for tournament admins

			let schools = await db.school.findAll({
				where: { tourn: tournId },
				include : [
					{ model: db.schoolSetting, as: 'Settings',
						where : {
							tag: { [op.notLike] : "signup_%"}
						},
						required: false
					},
					{ model: db.fine, as: 'Fines' },
					{ model: db.chapter, as: 'Chapter'},
				]
			});

			if (schools.count < 1) {
				return res.status(400).json({ message: 'No schools found in that tournament' });
			} else {
				return res.status(200).json(schools);
			}

		} else {

			return res.status(400).json({ message: 'No tournament ID sent' });
		}
    },
};

getSchools.GET.apiDoc = {
    summary: 'Listing of schools in the tournament',
    operationId: 'getSchools',
    parameters: [
        {
            in          : 'path',
            name        : 'tourn_id',
            description : 'Tournament ID',
            required    : true,
            schema      : {
				type    : 'integer',
				minimum : 1
			},
        },
    ],
    responses: {
        200: {
            description: 'School Data',
            content: {
                '*/*': {
                    schema: {
                        type: 'array',
                        items: { $ref: '#/components/schemas/School' },
                    },
                },
            },
        },
        default: { $ref: '#/components/responses/ErrorResponse' },
    },
    tags: ['tournament/entries'],
};

export default getSchools;
