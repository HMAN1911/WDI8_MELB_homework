require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

def run_sql(sql)
  db = PG.connect(dbname: 'dinosaurs')
  results = db.exec(sql)
  db.close
  results
end

get '/' do
  @dinosaurs = run_sql('SELECT * FROM dinosaurs;')
  erb :index
end

get '/dinosaurs/new' do
  erb :new
end

post '/dinosaurs' do
  sql = "INSERT INTO dinosaurs (genera, image_url) VALUES ('#{params[:genera]}', '#{params[:image_url]}');"
  run_sql(sql)
  redirect to '/'
end

get '/dinosaurs/:id' do
  sql = "SELECT * from dinosaurs WHERE id = #{params[:id]};"
  @dinosaurs = run_sql(sql)[0]
  erb :show
end

get '/dinosaurs/:id/edit' do
  sql = "SELECT * FROM dinosaurs WHERE id = #{params[:id]};"
  @dinosaurs = run_sql(sql)[0]
  erb :edit
end

put '/dinosaurs/:id' do
  params[:id]
  sql = "UPDATE dinosaurs SET genera = '#{params['genera']}', image_url = '#{params['image_url']}' WHERE id = #{params['id']};"
  run_sql(sql)
  redirect to "/dinosaurs/#{params['id']}"
end

delete '/dinosaurs/:id' do
  params[:id]
  sql = "DELETE FROM dinosaurs WHERE id = #{params['id']};"
  run_sql(sql)
  redirect to "/"
end
