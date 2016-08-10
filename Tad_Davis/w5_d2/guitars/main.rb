require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_sql(sql)
 
  db = PG.connect(dbname: 'guitarcollection')
  results = db.exec(sql)
  db.close
  results
end


get '/' do

	@guitars = run_sql('SELECT * FROM guitars;')
	erb :index
end

##dont understand why we cant just have /new
get '/  /new' do
	erb :new
end

##is this posting to the index
post '/guitars' do

	sql = "INSERT INTO guitars (name, img_url) VALUES ('#{ params[:name] }', '#{ params[:img_url] }');"
	run_sql(sql)
 
redirect to '/'
end

get '/guitars/:id' do
  # use the id to select a dish from the dishes table
  sql = "select * from guitars where id = #{ params[:id] };"

  # db = PG.connect(dbname: 'goodfoodhunting')
  @guitar = run_sql(sql)[0]
  # db.close
  
  erb :show 
end
#line 50 dts example 
## i dont understand how to connect the run_sql
## can look once understand later on ..........

get '/guitars/:id/edit' do
  
  sql = "select * from guitars where id = #{ params[:id] };"
  db = PG.connect(dbname: 'guitarcollection')
   @guitar = db.exec(sql)[0]
  db.close
  erb :edit
end

#updating 
put '/guitars/:id' do
  sql = "UPDATE guitars SET name = '#{ params[:name] }', img_url = '#{ params[:img_url] }' WHERE id = #{ params[:id] };"

  run_sql(sql)

  redirect to "/guitars/#{ params[:id] }"
end

#method for deleting a single file
delete '/guitars/:id' do
  sql = "DELETE FROM guitars WHERE id = #{ params[:id] };"
  run_sql(sql)

  redirect to "/"
end 