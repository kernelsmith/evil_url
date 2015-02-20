require 'sinatra'

@evil_urls = []

error NoUrlGivenError do
  'No URL was provided, so cannot be added to the list' + env['sinatra.error'].message
end

error NoUrlAvailableError do
  'There are no URLs at this time, sorry chief.  Check back later' + env['sinatra.error'].message
end

def add_evil_url(url = nil)
	if url
		@evil_urls << url
		"The URL:#{url} was added to the list which is currently #{evil_urls.inspect}\n"
	else
		raise NoUrlGivenError
	end
end

def get_evil_url
	evil_url = @evil_urls.shift
	if evil_url
		redirect evil_url.contains(/https?:\/\//i) ? evil_url : "http://#{evil_url}"
	else
		raise NoUrlAvailableError
	end
end

get '/add' do
	erb :form
end

get '/' do
	evil_url = @evil_urls.shift
	if evil_url
		redirect evil.contains(/https?:\/\//i) ? evil : "http://#{evil}"
	else
		"There are no URLs at this time, sorry chief.  Check back later"
	end
end

post '/' do
	add_evil_url(params[:evil_url])
end

not_found do
	status 404
	'Nice work dumbass'
end

