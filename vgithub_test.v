module vgithub

import os

fn test_get_my_repos() {
	auth_key := os.read_file("./token2")

	u := User{
		auth_key: auth_key
	}
	
	my_repos := u.get_my_repos("all")
	
	assert my_repos.len != 0
	assert my_repos[0].name != "" 
}