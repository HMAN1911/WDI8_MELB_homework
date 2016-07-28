require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


def run_sql(sql)
  db = PG.connect(dbname: 'sailormoon')        #connect to database
  results = db.exec(sql)                       #run the sql and asign results to variable
  db.close
  results
end


get '/' do
  @characters = run_sql('select * from characters;')
  erb :index
end


get '/characters/new' do
  # 'future new dish form'
  erb :new
end



post '/characters' do
  sql = "INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('#{params[:name]}', '#{params[:img_url]}', '#{params[:nickname]}', '#{params[:universe]}', '#{params[:soldier]}')"
  run_sql(sql)
  redirect to '/'
end



get '/characters/:id' do
  sql = "SELECT * FROM characters WHERE id = #{params[:id]};"
  @character = run_sql(sql)[0]
  erb :show
end



get '/characters/:id/edit' do                                      #first grabbing a resource - form page to edit - is asking me for form ;)
  sql = "select * from characters where id = #{ params[:id] };"
  db = PG.connect(dbname: 'sailormoon')
  @character = run_sql(sql)[0]
  db.close
  erb :edit
end



put '/characters/:id' do
  sql = "UPDATE characters SET name = '#{params[:name]}', img_url = '#{params[:img_url]}', nickname = '#{params[:nickname]}', universe = '#{params[:universe]}', soldier = '#{params[:soldier]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to "/characters/#{params[:id]}"
  # redirect to '/'
end


delete '/characters/:id' do

  sql = "DELETE FROM characters WHERE id = #{params[:id]}"
  run_sql(sql)

  redirect to "/"
  # redirect to "/dishes/#{params[:id]}"

end
