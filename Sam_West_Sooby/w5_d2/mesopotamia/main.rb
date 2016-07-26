require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

def run_sql(sql)
  db = PG.connect(dbname: 'mesopotamia')
  results = db.exec(sql)
  db.close
  results
end

get '/' do
  @kings = run_sql('SELECT * FROM kings;')
  erb :index
end

get '/kings/new' do
  erb :new
end

post '/kings' do
  sql = "INSERT INTO kings (name, reign, image_url) VALUES ('#{ params[:name] }', '#{ params[:reign]}', '#{ params[:image_url] }');"

  run_sql(sql)

  redirect to '/'
end


get '/kings/:id' do
  sql = "select * from kings where id = #{ params[:id] };"

  @king = run_sql(sql)[0]

  erb :show
end

get '/kings/:id/edit' do
  sql = "select * from kings where id = #{ params[:id]};"
  @king = run_sql(sql)[0]
  erb :edit
end

put '/kings/:id' do
  sql = "UPDATE kings SET name = '#{ params[:name] }', reign = '#{ params[:reign]}', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id]};"

  run_sql(sql)

  redirect to '/'
end

delete '/kings/:id' do

  sql = "delete from kings where id = #{ params[:id]};"
  run_sql(sql)

  redirect to '/'
end



































