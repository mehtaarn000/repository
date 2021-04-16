module branch

import os

const (
	auth_key = os.read_file('token2') or { panic(err) }
	testrepo = os.read_file('testrepo') or { panic(err) }
)

pub fn test_rename_branch() {
	branch := rename_branch(branch.auth_key, branch.testrepo, 'main', 'newname')
	assert branch.name == 'newname'
}
