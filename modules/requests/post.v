module requests

import net.http
import x.json2

pub fn post(auth_key string, url string, data string) string {
	// Build a post request
	mut requester := http.Request{
		method: http.Method.post, 
		url: url, 
		data: data
	}

	// Add the authorization token
	requester.add_header("Authorization", "token " + auth_key)

	// Add the accept header
	requester.add_header("Accept", "application/vnd.github.v3+json")

	// Send the request
	response := requester.do() or { panic("Request to API failed.") }
	raw_json := json2.raw_decode(response.text) or { panic('Invalid JSON sent by server.') }

	// Errors are sent through the "message" key
	// If error, then panic
	if raw_json.as_map()["message"].str() != "" {
		eprint(raw_json.as_map()["message"])
	}

	return response.text
}
