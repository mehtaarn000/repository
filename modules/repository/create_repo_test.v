module repository

import os

pub fn test_create_repo() {
	auth_key := os.read_file('token2') or { panic('File not found') }

	new_repository := Repository{
		name: 'testing'
		description: 'HELLO WORLD'
		private: true
	}
	res := create_repo(auth_key, new_repository)

	assert res.private == true
	assert res.name == 'testing'
	assert res.description == 'HELLO WORLD'
}
