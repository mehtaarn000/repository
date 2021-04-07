module repository

pub struct Repository {
	pub:
	name string [required]
	full_name string
	owner Owner
	private bool
	html_url string
	description string
	fork bool
	url string
	archive_url string
	assignees_url string
	blobs_url string
	branches_url string
	collaborators_url string
	comments_url string
	commits_url string
	compare_url string
	contents_url string
	contributers_url string
	deployments_url string
	downloads_url string
	events_url string
	forks_url string
	git_commits_url string
	git_refs_url string
	git_tags_url string
	git_url string
	issue_comment_url string
	issue_events_url string
	issues_url string
	keys_url string
	labels_url string
	languages_url string
	merges_url string
	milestones_url string
	notifications_url string
	pulls_url string
	releases_url string
	ssh_url string
	stargazers_url string
	statuses_url string
	subscribers_url string
	subscriptions_url string
	tags_url string
	teams_url string
	trees_url string
	clone_url string
	mirror_url string
	hooks_url string
	svn_url string
	homepage string
	language string
	forks_count i64
	forks i64
	stargazers_count i64
	watchers_count i64
	watchers i64
	size i64
	default_branch string
	open_issues_count i64
	open_issues i64
	is_template bool
	topics []string
	has_issues bool = true
	has_projects bool = true
	has_wiki bool = true
	has_pages bool
	has_downloads bool = true
	archived bool
	disabled bool
	visibility string
	pushed_at string
	created_at string
	updated_at string
	permissions map[string]bool
	temp_clone_token string
	allow_rebase_merge bool = true
	delete_branch_on_merge bool
	allow_squash_merge bool = true
	allow_merge_commit bool = true
	subscribers_count i64
	network_count i64
	license License
}

pub struct License {
	pub:
	key string
	name string
	spdx_id string
	url string
	node_id string
}


pub struct Owner {
	pub:
	login string
	id i64
	avatar_url string
	gravatar_id string
	url string
	html_url string
	followers_url string
	following_url string
	gists_url string
	starred_url string
	subscriptions_url string
	organizations_url string
	repos_url string
	events_url string
	recieved_events_url string
	site_admin bool
}