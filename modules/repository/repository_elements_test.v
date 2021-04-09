module repository

import os

const (
	auth_key = os.read_file("token2") or { panic(err) }
)

pub fn test_list_repo_contributors() {
	objects := list_repo_contributors(auth_key, "mehtaarn000/PriceHero")
	assert objects[0].login == "mehtaarn000"
	assert objects[0].contributions >= 187
}