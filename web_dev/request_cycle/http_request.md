What are some common HTTP status codes?

1xx Informational.
2xx Success.
	- 200 Ok
3xx Redirection:
	- 301 Moved permanently
	- 302 Found
	- 304 Not Modified
	- 307 Temporary Redirect
4xx Client Error:
	- 400 Bad request
	- 401 Unauthorized
	- 403 Forbidden
	- 404 Not found
5xx Server Error:
	- 500 Internal Server Error
	- 503 Service Unavailable

What is the difference between a GET request and a POST request? When might each be used?

GET: Requests data from a specified resource
POST: Submits data to be processed to a specified resource

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. 
Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client).

