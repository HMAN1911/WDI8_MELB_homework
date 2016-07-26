require 'sinatra/reloader'
require 'sinatra'
require 'pg'
require 'pry'

def run_sql(sql)
  db = PG.connect(dbname: 'football')
  result = db.exec(sql)
  db.close
  result
end

get '/' do
  @teams = run_sql('select * from sec;')
  erb :index
end

get '/sec/new' do
  erb :new
end

post '/sec' do
  run_sql("insert into sec (school, location, mascot, image_url) values ('#{ params[:school] }', '#{ params[:location] }', '#{ params[:mascot] }','#{ params[:image_url] }')")
  redirect to '/'
end

get '/sec/:id' do
  sql = "select * from sec where id = #{params[:id]};"
  @teams = run_sql(sql)[0]
  erb :show
end

get '/sec/:id/edit' do
  sql = "select * from sec where id = #{params[:id]};"
  @teams = run_sql(sql)[0]
  erb :edit
end

put '/sec/:id' do
  sql = "UPDATE sec SET school = '#{params[:school]}', location = '#{params[:location]}', mascot = '#{params[:mascot]}', image_url='#{params[:image_url]}' WHERE id=#{params[:id]};"
  run_sql(sql)
  redirect to "/sec/#{params[:id]}"
end

delete '/sec/:id' do
  run_sql("delete from sec where id=#{params[:id]};")
  redirect to '/'
end
