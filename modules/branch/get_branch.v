module branch

import requests
import repository
import json

pub fn get_branch(auth_key string, full_name string, branch_name string) Branch {
	url := repository.base_url + 'repos/' + full_name + '/branches/' + branch_name

	response := requests.get(auth_key, url)
	branch := json.decode(Branch, response) or { panic(err) }

	return branch
}

pub fn get_branches(auth_key string, full_name string) []PartBranch {
	url := repository.base_url + 'repos/' + full_name + '/branches'

	response := requests.get(auth_key, url)
	branches := json.decode([]PartBranch, response) or { panic(err) }

	return branches
}
