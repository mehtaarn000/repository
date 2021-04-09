module vgithub

import repository

// User object
pub struct User {
	auth_key string [required]
}

// Wraps the repository.create_repo function
pub fn (u User) create_repo(r repository.Repository) repository.Repository {
	repo := repository.create_repo(u.auth_key, r)
	return repo
}

// Wraps the repository.get_my_repos function
pub fn (u User) get_my_repos(repo_type string) []repository.Repository {
	repos := repository.get_my_repos(u.auth_key, repo_type)
	return repos
}

// Wraps the repository.get_repo function
pub fn (u User) get_repo(full_name string) repository.Repository {
	repo := repository.get_repo(u.auth_key, full_name)
	return repo
}

// Wraps the repository.delete_repo function
pub fn (u User) delete_repo(full_name string) bool {
	response := repository.delete_repo(u.auth_key, full_name)
	return response
}