module repository

import os

const auth_key = os.read_file('token2') or { panic('File not found') }

const full_name = os.read_file('testrepo') or { panic('File not found') }

pub fn test_get_repo() {
	repo := get_repo(repository.auth_key, repository.full_name)

	assert repo.private == true
	assert repo.name == 'testing'
	assert repo.description == 'HELLO WORLD'
}

pub fn test_get_my_repos() {
	repos := get_my_repos(repository.auth_key, 'all')
	assert repos.len != 0
}

pub fn test_get_users_repos() {
	repos := get_users_repos(repository.auth_key, 'mehtaarn000')
	assert repos[0].name == 'Flask-Sheets-Database-Example'
	assert repos.len != 0
}
