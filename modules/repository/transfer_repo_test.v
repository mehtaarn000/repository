module repository

import os

const (
	auth_key = os.read_file('token2') or { panic(err) }
	testrepo = os.read_file('testrepo') or { panic(err) }
)

pub fn test_transfer_repo() {
	repo := transfer_repo(repository.auth_key, repository.testrepo, 'mehtaarn000-readmebot')

	// The new owner has to accept the repository
	// So the full_name element remains the same
	assert repo.full_name == repository.testrepo
}
