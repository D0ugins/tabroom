// These paths are ones that require a logged in user but are outside the scope
// of tournament administration.  Typically these are registration & user
// account functions.
import getProfile from '../../../controllers/user/account/getProfile.js';
import ipLocation from '../../../controllers/user/account/ipLocation.js';

export default [
	{ path: '/user/profile', module : getProfile },
	{ path: '/user/profile/{person_id}', module : getProfile },
	{ path: '/user/iplocation/{ip_address}', module: ipLocation },
];