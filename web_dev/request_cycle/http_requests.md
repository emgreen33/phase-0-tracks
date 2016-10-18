**Release 0**
Q: What are some common HTTP status codes?
* 200 - OK
* 300 - Multiple choices
* 301 - Moved permanently
* 302 - Found
* 304 - Not modified
* 307 - Temporary redirect 
* 400 - Bad request
* 401 - Not authorized
* 403 - Forbidden
* 404 - Not found
* 410 - Gone
* 500 - Internal server error
* 501 - Not implemented 
* 503 - Service unavailable 
* 550 - Permission denied  

Q: What is the difference between a GET request and a POST request? When might each be used?
HTTP (Hypertext Transfer Protocol) is the middle man between clients and servers, they function in a request-response manner. The client side may consist of a web browser, whilst an application on a computer thats function is to host a website is the server.
Two most common request-response methods are GET and POST.
GET: requests data to be retrieved from a remote data resource; can be cached, remains in browser history, bookmarkable, are able to be tracked so shouldn't be used with sensitive information and should be used to retrieve data not send. Should be used when loading a remote page, with no updates or insertions of remote data. 
POST: submits data to be processed to a specified resource; cannot be cached, bookmarked or traceable in browser history. Should be used to insert or update remote data resource, a little safer than GET. 

Q: Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are messages servers pass to browsers when you visit internet websites. Browsers store these cookies, and when the user clicks on another page on the sever, the cookie is sent back to the server. They store a mini history on what actions the user has taken for their session on the site. HTTP requests made by the client are where the cookie retrieves the data it stores from. 