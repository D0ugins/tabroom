// These paths are particular to tournament administration, and so require a
// logged in user with access to the tournament in question.

// Utility functions
import tab from './tab';
import data from './data';
import register from './register';

export default [
	...tab,
	...data,
	...register,
];
