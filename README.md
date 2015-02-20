evil_url
========

Very simple sinatra app that stores and serves up evil urls.

Usage:

run evil_url.rb

### Adding a URL
issue a POST with evil_url parameter to the server

```
POST IP?evil_url=http://i.am.an.evil.url

or

POST IP

application/x-www-form-urlencoded

evil_url=http://i.am.an.evil.url

### Getting a URL

just issue a GET to the server, almost anything except what's noted below

### Adding a URL via a form

issue a GET to /add, you'll get a super lame form back, fill it in and submit it
