module branch

import os

const (
	auth_key = os.read_file('token2') or { panic(err) }
)

pub fn test_get_branch() {
	branch := get_branch(branch.auth_key, 'mehtaarn000/PriceHero', 'master')
	assert branch.name == 'master'
}

pub fn test_get_branches() {
	branches := get_branches(branch.auth_key, 'mehtaarn000/PriceHero')
	assert branches[0].name == 'master'
}
