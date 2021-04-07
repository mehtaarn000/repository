module vgithub

import repository

pub struct User {
	auth_key string
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