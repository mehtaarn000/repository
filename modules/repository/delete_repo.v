module repository

import requests

pub fn delete_repo(auth_key string, full_name string) bool {
	url := base_url + '/repos/' + full_name
	response := requests.delete(auth_key, url)

	// 204 Response means success
	if response == 204 {
		return true
	}

	return false
}
