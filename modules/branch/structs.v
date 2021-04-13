module branch

import repository

pub struct Branch {
pub:
	name           string
	commit         Commit
	links          Links
	protected      bool
	protection     Protection
	protection_url string
}

pub struct Commit {
pub:
	sha          string
	node_id      string
	commit       Commit_object
	author       repository.Owner
	parents      []Tree
	url          string
	committer    repository.Owner
	html_url     string
	comments_url string
}

pub struct Commit_object {
pub:
	author        Author
	url           string
	message       string
	tree          Tree
	committer     Committer
	verification  Verification
	comment_count i64
}

pub struct Author {
pub:
	name  string
	date  string
	email string
}

pub struct Tree {
pub:
	sha string
	url string
}

pub struct Committer {
pub:
	name  string
	date  string
	email string
}

pub struct Verification {
pub:
	verified  bool
	reason    string
	signature bool
	payload   bool
}

pub struct Protection {
	enabled                bool
	required_status_checks Required_status_checks
}

pub struct Required_status_checks {
	enforcement_level string
	contexts          []string
}

pub struct Links {
	html string
	self string
}
