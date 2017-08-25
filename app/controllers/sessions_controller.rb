
get '/login' do
	logout
	erb :'/sessions/_login'
end

post '/login' do
	user = User.authenticate(params[:email], params[:password])
	if user
		login(user)
		redirect "/users/#{user.id}"
	else
		@errors = ["wrong email or password, try again"]
		erb :'/sessions/_login'
	end
end

get '/logout' do
	logout
	redirect '/'
end