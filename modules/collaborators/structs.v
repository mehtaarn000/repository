module collaborators

import repository

pub struct Collaborator {
pub:
	login               string
	id                  i64
	avatar_url          string
	gravatar_id         string
	url                 string
	html_url            string
	followers_url       string
	following_url       string
	gists_url           string
	starred_url         string
	subscriptions_url   string
	organizations_url   string
	repos_url           string
	events_url          string
	recieved_events_url string
	site_admin          bool
	permissions         Permissions
}

pub struct User {
	login               string
	id                  i64
	avatar_url          string
	gravatar_id         string
	url                 string
	html_url            string
	followers_url       string
	following_url       string
	gists_url           string
	starred_url         string
	subscriptions_url   string
	organizations_url   string
	repos_url           string
	events_url          string
	recieved_events_url string
	site_admin          bool
}

pub struct Permissions {
pub:
	pull  bool
	push  bool
	admin bool
}

pub struct NewCollaborator {
	id i64
	node_id string
	repository repository.Repository
	inviter User
	invitee User
	permissions string
	created_at string
	url string
	html_url string
}
