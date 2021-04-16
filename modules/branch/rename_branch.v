module branch

import requests
import repository
import json

pub fn rename_branch(auth_key string, full_name string, branch_name string, new_branch_name string) Branch {
	url := repository.base_url + 'repos/' + full_name + '/branches/' + branch_name + '/rename'
	data := '{"new_name": "$new_branch_name"}'

	response := requests.post(auth_key, url, data)
	branch := json.decode(Branch, response) or { panic(err) }

	return branch
}
