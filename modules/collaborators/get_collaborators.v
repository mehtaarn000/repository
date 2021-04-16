module collaborators

import requests
import json
import repository

pub fn get_collaborators(auth_key string, full_name string) []Collaborator {
	url := repository.base_url + 'repos/' + full_name + '/collaborators?affiliation=all'

	response := requests.get(auth_key, url)
	collaborators := json.decode([]Collaborator, response) or { panic(err) }

	return collaborators
}
