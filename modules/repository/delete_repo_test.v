module repository

import os

fn test_delete_repo() {
	auth_key := os.read_file('./token2') or { panic('File not found') }
	repo := os.read_file('./testrepo') or { panic('File not found') } // Private repository used for testing

	res := delete_repo(auth_key, repo)
	assert res == true
}
