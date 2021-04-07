module repository

import requests
import json

const base_url = "https://api.github.com/"

// Utility function to get repositories from the URL
fn get_repos(auth_key string, repo_type string, sub_url string) []Repository {
	mut url := ""
	
	// Build the URL
	if repo_type != "" {
		url += base_url + sub_url + repo_type
	} else {
		url += base_url + sub_url
	}
	
	// Make the request to the api
	// response = json string
	response := requests.get(auth_key, url)

	// Convert the json data into repositories and return
	repo_objects := json.decode([]Repository, response) or { panic("Invalid JSON sent by server.") }
	return repo_objects
}

// Get a single repository
pub fn get_repo(auth_key string, full_name string) Repository {
	repo := get_repos(auth_key, "", "repos/" + full_name)
	return repo[0]
}

// Gets the users personal repos
pub fn get_my_repos(auth_key string, repo_type string) []Repository {
 	repo_objects := get_repos(auth_key, repo_type, "user/repos?type=")
	return repo_objects
}

// Gets random repos
pub fn get_other_repos(auth_key string) []Repository {
	repo_objects := get_repos(auth_key, "", "repositories")
	return repo_objects
}