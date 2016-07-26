require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/blog_post' do
  erb :blog_post
end

get '/contact_me' do
  erb :contact_me
end

get '/thank_you' do
  erb :thank_you
end
