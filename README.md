evil_url
========

Very simple sinatra app that stores and serves up evil urls.  URLs don't have to be evil of course

Usage:

ruby evil_url.rb

### Adding a URL
issue a POST with evil_url parameter to the server

```
POST IP?evil_url=http://i.am.an.evil.url

or

POST IP

application/x-www-form-urlencoded

evil_url=http://i.am.an.evil.url
```

### Getting a URL

just issue a GET to the server, almost anything except what's noted below, and you'll be redirected to the evil url

### Adding a URL via a form

issue a GET to /add, you'll get a super lame form back, fill it in and submit it
