require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/users'
require_relative 'models/comment'

enable :sessions

helpers do
  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end
end


def current_user
  User.find(session[:user_id])
end



get '/' do
  @dishes = Dish.all
  erb :index
end



get '/dishes/new' do

  if !logged_in?
    redirect to '/session/new'
  end

  erb :new
end



post '/dishes' do

  if !logged_in?
    redirect to '/session/new'
  end

    @dish = Dish.new
    @dish.name = params[:name]
    @dish.img_url = params[:img_url]
    @dish.user_id = current_user.id
    @dish.save

    redirect to '/'

end



get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @all_comments = @dish.comments.all
  erb :show
end



get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end



put '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @dish.update(name: params[:name], img_url: params[:img_url])
  redirect to "/dishes/#{params[:id]}"
end




# ***
get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

post '/dishes/:id' do

  @comment = Comment.new
  @comment.post = params[:comment]
  @comment.dish_id = params[:id]
  @comment.save
    # binding.pry
  @dish = Dish.find(params[:id])

  @all_comments = @dish.comments.all
  erb :show

end

# TO EDIT COMMENT - HARD AS WHEN DISH USER - CURRENT USER -session
# HERE HARD TO DESCRIBE RELATION COMMENT - CURRENT DISH :(

# get '/dishes/update_comment/:id' do
#   # @comment = Comment.where(dish_id: params[:id], id: params[:id])
#   @comment = Comment.find(params[:id])
#   erb :show
# end
#
# put '/dishes/update_comment/:id' do
#   # @comment = Comment.where(dish_id: params[:id], id: params[:id])
#   @comment = Comment.find(params[:id])
#   @comment.update(post: params[:post])
#   redirect back
# end

# NOT this one : <form action="/dishes/<%= @dish.id %>/update_comment" method = "post">
#<form action="/dishes/update_comment/<%= comment.id %>" method = "post">
#   <input type="hidden" name="_method" value="put">
#     <input type="text" name = "comment" value ="<%= @comment.post %>">
#   <button id = "delete">edit comment</button>
# </form>




delete '/dishes/delete/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect back
end
# ***




delete '/dishes/:id' do
  guest = Dish.find(params[:id])
  guest.destroy
  redirect to "/"
end


get '/session/new' do
  erb :login
end


post "/session" do

  user = User.find_by(email: params[:email])


  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect to '/'
  else
    erb :login
  end
end


delete '/session' do
    session[:user_id] = nil
    redirect to '/session/new'
end



get '/my_dishes' do

  @dishes = current_user.dishes

  erb :my_dishes
end
