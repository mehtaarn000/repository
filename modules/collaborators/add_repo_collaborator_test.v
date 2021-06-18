module collaborators

import os

const (
	auth_key = os.read_file('token2') or { panic(err) }
	testrepo = os.read_file('testrepo') or { panic(err) }
)

pub fn test_add_repo_collaborator() {
	add_repo_collaborator(auth_key, testrepo, 'mehtaarn000', 'push')
}