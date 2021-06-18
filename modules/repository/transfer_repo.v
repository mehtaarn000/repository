module repository

import requests
import json

pub fn transfer_repo(auth_key string, full_name string, new_owner string) ?Repository {
	url := base_url + 'repos/' + full_name + '/transfer'

	response := requests.post(auth_key, url, '{"new_owner": "$new_owner"}')
	repo := json.decode(Repository, response) or { return err }

	return repo
}
