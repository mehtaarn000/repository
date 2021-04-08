module repository

import requests
import json

pub fn create_repo(auth_key string, r Repository) Repository {
	/*Used Repository fields:
		name
		description
		homepage
		private
		has_issues
		has_projects
		has_wiki
	*/

	// Initilize data
	mut data := '{"name": "$r.name", "private": $r.private, "has_issues": $r.has_issues, "has_projects": $r.has_projects, "has_wiki": $r.has_wiki, "allow_squash_merge": $r.allow_squash_merge, "allow_merge_commit": $r.allow_merge_commit, "allow_rebase_merge": $r.allow_rebase_merge, "delete_branch_on_merge": $r.delete_branch_on_merge, "has_downloads": $r.has_downloads'

	// If there is a description
	if r.description != "" {
		data += ', "description": "$r.description",'
	}
	
	// If there is a homepage
	// Else close the json object
	if r.homepage != "" {
		data += ' "homepage": "$r.homepage"}'
	} else {
		if data.ends_with(",") == true {
			data = data.substr(0, data.len - 2)
		}

		data += '}'
	}

	// Post the data to the API
	raw_json := requests.post(auth_key, base_url + "user/repos", data)

	// Parse and return the new repository
	repo := json.decode(Repository, raw_json) or { panic("Invalid JSON data") }
	return repo
}