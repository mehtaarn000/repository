module requests

import net.http
import x.json2

pub fn get(auth_key string, url string) string {
	// Build a request with an auth header
	mut requester := http.Request{
		method: http.Method.get
		url: url
	}

	// Add the authorization token
	requester.add_header('Authorization', 'token ' + auth_key)

	// Add the accept header
	if url.ends_with('/topics') {
		requester.add_header('Accept', 'application/vnd.github.mercy-preview+json')
	} else {
		requester.add_header('Accept', 'application/vnd.github.v3+json')
	}

	// Send the request
	response := requester.do() or { panic('Request to API failed.') }
	raw_json := json2.raw_decode(response.text) or { panic('Invalid JSON sent by server.') }

	// Errors are sent through the "message" key
	// If error, then panic
	if raw_json.as_map()['message'].str() != '' {
		panic(raw_json.as_map()['message'].str())
	}

	return response.text
}
