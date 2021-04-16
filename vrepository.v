module vrepository

import repository
import branch
import collaborators

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

// Wraps the repository.list_repo_contributers function
pub fn (u User) list_repo_contributors(full_name string) []repository.Contributer {
	contributors := repository.list_repo_contributors(u.auth_key, full_name)
	return contributors
}

// Wraps the repository.list_repo_tags function
pub fn (u User) list_repo_tags(full_name string) []repository.Tag {
	tags := repository.list_repo_tags(u.auth_key, full_name)
	return tags
}

// Wraps the repository.list_repo_topics function
pub fn (u User) list_repo_topics(full_name string) []repository.Topic {
	topics := repository.list_repo_topics(u.auth_key, full_name)
	return topics
}

// Wraps the repository.transfer_repo function
pub fn (u User) transfer_repo(full_name string, new_owner string) repository.Repository {
	repo := repository.transfer_repo(u.auth_key, full_name, new_owner)
	return repo
}

// Wraps the branch.get_branch function
pub fn (u User) get_branch(full_name string, branch_name string) branch.Branch {
	mybranch := branch.get_branch(u.auth_key, full_name, branch_name)
	return mybranch
}

// Wraps the branch.get_branches function
pub fn (u User) get_branches(full_name string) []branch.Branch {
	branches := branch.get_branches(u.auth_key, full_name)
	return branches
}

// Wraps the branch.rename_branch function
pub fn (u User) rename_branch(full_name string, branch_name string, new_branch_name string) branch.Branch {
	newbranch := branch.rename(u.auth_key, full_name, branch_name, new_branch_name)
	return newbranch
}

// Wraps the collaborators.get_collaborators function
pub fn (u User) get_collaborators(full_name string) []collaborators.Collaborator {
	allcollaborators := collaborators.get_collaborators(u.auth_key, full_name)
	return allcollaborators
}
