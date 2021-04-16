module collaborators

import os

const (
	auth_key = os.read_file('token') or { panic(err) }
)

pub fn test_get_collaborators() {
	collaborators := get_collaborators(collaborators.auth_key, 'mehtaarn000/PriceHero')
	assert collaborators[0].login == 'mehtaarn000'
}
