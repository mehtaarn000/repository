module repository

import os

const (
	auth_key = os.read_file('token2') or { panic(err) }
)

pub fn test_list_repo_contributors() {
	objects := list_repo_contributors(repository.auth_key, 'mehtaarn000/PriceHero') or { panic(err) }
	assert objects[0].login == 'mehtaarn000'
	assert objects[0].contributions >= 187
}

pub fn test_list_repo_tags() {
	objects := list_repo_tags(repository.auth_key, 'mehtaarn000/PriceHero') or { panic(err) }
	assert objects[objects.len - 1].name == '0.2.9'
	assert objects[objects.len - 1].commit.sha == 'bf9702521c04d268aa285a9f01824113ad99388e'
}

pub fn test_list_repo_topics() {
	objects := list_repo_topics(repository.auth_key, 'mehtaarn000/PriceHero') or { panic(err) }
	assert objects.names[0] == 'product-prices'
	assert objects.names[1] == 'hacktoberfest'
	assert objects.names[2] == 'python3'
}
