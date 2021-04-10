module repository

import requests
import json

pub fn list_repo_contributors(auth_key string, full_name string) []Contributer {
	response := requests.get(auth_key, base_url + 'repos/' + full_name + '/contributors')

	contributors := json.decode([]Contributer, response) or { panic(err) }
	return contributors
}

pub fn list_repo_tags(auth_key string, full_name string) []Tag {
	response := requests.get(auth_key, base_url + 'repos/' + full_name + '/tags')

	tags := json.decode([]Tag, response) or { panic(err) }
	return tags
}

pub fn list_repo_topics(auth_key string, full_name string) Topic {
	response := requests.get(auth_key, base_url + 'repos/' + full_name + '/topics')

	topics := json.decode(Topic, response) or { panic(err) }
	return topics
}
