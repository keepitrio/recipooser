get '/recipe_books/new' do
	erb :'/recipe_books/new'	
end

post '/recipe_books' do
	recipe_book = RecipeBook.new(name: params[:name], user_id: current_user.id)
	if recipe_book.save
	else
		@errors = recipe_book.errors.full_messages
		erb :'/_errors', locals: {errors: @errors}
	end
end