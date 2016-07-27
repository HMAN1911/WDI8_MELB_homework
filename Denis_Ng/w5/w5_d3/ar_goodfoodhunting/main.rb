
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

require_relative 'db_config'
require_relative 'models/dish'



# These are called 'routes' to gets the forms,made out of the path + HTTP verb
get '/' do

  @dishes = Dish.all
  erb :index
end

get'/dishes/new' do
  erb :new
end

post '/dishes' do

  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
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
  dishes = Dish.find(params[:id])
  dishes.name = params[:name]
  dishes.image_url = params[:image_url]
  dishes.save

  redirect to "/dishes/#{ params[ :id] }"

end

delete '/dishes/:id' do

  dishes = Dish.find(params[:id])
  dishes.destroy

  redirect to "/"

end
