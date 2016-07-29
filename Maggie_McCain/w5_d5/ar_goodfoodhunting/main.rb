require 'sinatra/reloader'
require 'sinatra'
require 'pg'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/user'
require_relative 'models/comment'

enable :sessions #feature of activerecord, must turn on

#sinatra helper method- tell me this method is also avialable in views.  typically, scope would forbid use outside main.rb
helpers do
  def logged_in? #question mark is boolean
    if User.find_by(id: session[:user_id])
      return true
    else
      return false #nil is falsey
    end
  end

  def current_user
    User.find(session[:user_id]) #session is like a receipt.  Need the receipt to prove this is the user they say they are
  end
end

get '/' do
  @dishes =Dish.all
  erb :index
end

get '/dishes/new' do
#   if user
#     erb :new
# end
#if you only want logged in users to create dishes
  if !logged_in? #User.find_by(id: session[:user_id]) == nil #use find_by because find will crash site vs find_by returns nil if no matches
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
  @dish.image_url = params[:image_url]
  @dish.user_id = current_user.id
  @dish.save
  redirect to '/'
end

get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  erb :show
end

get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

put '/dishes/:id' do
  @dish = Dish.find( params[:id] )
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  @dish.save
  redirect to "/dishes/#{@dish.id}"
end

delete '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @dish.destroy
  redirect to '/'
end

get '/session/new' do #getting the form
  erb :login
end

post '/session' do #creating the resource
  #find user with email
  user = User.find_by(email: params[:email])
  #check the user with password
  if user && user.authenticate(params[:password])
    #good to go.  session is a global variable that is a hash
    session[:user_id] = user.id #creating session and creating key user_id with a value of user's id
    redirect to '/'
  else
    #stay put on login template
    erb :login
  end
end

delete '/session' do #logging out is destroying session resource
  session[:user_id] = nil
  redirect to '/'
end

get '/my_dishes' do #anchor is always get request
  @dishes = current_user.dishes #current_user returns user, then its just user.dishes
  # @dishes = Dish.where(user_id: current_user.id) #WHERE RETURNS MULTIPLE THINGS
  erb :my_dishes        #finding dishes where the user id is equal to the id associated with the current session
end                     # can also check if a user has made any dishes with Dish.where(user_id: Whatever id you want to search)

post '/comment/:id/new' do
  # return 'make comment'
  @comment = Comment.new
  @comment.content = params[:content]
  @comment.dish_id = params[:id] #need dish.id to be passed
  @comment.save
  redirect "/dishes/#{@comment.dish_id}"
end
