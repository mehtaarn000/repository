module collaborators

import requests
import json
import repository

pub fn add_repo_collaborator(auth_key string, full_name string, username string, permission string)  {
	url := repository.base_url + 'repos/' + full_name + '/collaborators/' + username
	println(url)
	data := '{"permission": "$permission"}'

	permissions_arr := ["pull", "push", "admin", "maintain", "triage"]
	if permission !in permissions_arr {
		panic("Permission must be one of the following: pull, push, admin, maintain, triage")
	}

	response := requests.put(auth_key, url, data)
	println(response)
	//new_collaborator := json.decode(NewCollaborator, response) or { panic(err) }

	//return new_collaborator
}
