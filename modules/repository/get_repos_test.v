module repository

import os 

const auth_key = os.read_file("token2") or { panic("File not found") }
const full_name = os.read_file("testrepo") or { panic("File not found") }

pub fn test_get_repo() {
	repo := get_repo(auth_key, full_name)

	assert repo.private == true
	assert repo.name == "testing"
	assert repo.description == "HELLO WORLD"
}

pub fn test_get_my_repos() {
	repos := get_my_repos(auth_key, "all")
	assert repos.len != 0
}