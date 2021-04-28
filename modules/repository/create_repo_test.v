module repository

import os

const auth_key = os.read_file('token2') or { panic(err) }

pub fn test_create_repo() {
	new_repository := Repository{
		name: 'testing'
		description: 'HELLO WORLD'
		private: true
	}
	res := create_repo(auth_key, new_repository) or { panic(err) }

	assert res.private == true
	assert res.name == 'testing'
	assert res.description == 'HELLO WORLD'
}
