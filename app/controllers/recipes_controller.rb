get '/recipes/search' do
	url = "http://api.yummly.com/v1/api/recipes"
	app_id = ENV['RECIPE_API_APP_ID']
	app_key = ENV['RECIPE_API_APP_KEY']
	q = params[:searchwords].split(",")
	@recipes = HTTParty.get(url, { query: { _app_id: app_id, _app_key: app_key, q: q } })
	p @recipes
end