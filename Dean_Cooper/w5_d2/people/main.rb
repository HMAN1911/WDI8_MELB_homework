require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_sql(sql)
  db = PG.connect(dbname: 'peopledatabase')
  results = db.exec(sql)
  db.close
  results
end

get '/' do
  @people = run_sql("select * from people;")
  erb :index
end

get '/people/new' do
  erb :new
end

post '/people' do

  sql = "insert into people (name, career, image_url, partnername, partner_url)
  values (
  '#{params[:name]}',
  '#{params[:career]}',
  '#{params[:image_url]}',
  '#{params[:partnername]}',
  '#{params[:partner_url]}'
  );"
  run_sql(sql)

  redirect to '/'
end

get '/people/:id' do
  sql = "select * from people where id = (#{params[:id]});"
  result = run_sql(sql)
  @person = result[0]

  erb :show
end

get '/people/:id/edit' do
  sql = "select * from people where id = (#{params[:id]});"
  @person = run_sql(sql)[0]
  erb :edit
end

# browsers dont support put (its the correct way for updates, as POST is for
# creating)
put '/people/:id' do

 sql = "UPDATE people SET
 name = '#{params[:name]}',
 career = '#{params[:career]}',
 image_url = '#{params[:image_url]}',
 partnername = '#{params[:partnername]}',
 partner_url = '#{params[:partner_url]}'
 WHERE id = #{params[:id]};"
 run_sql(sql)
 redirect '/'
end


delete '/people/:id' do
  sql = "DELETE from people WHERE id = #{params[:id]};"
  run_sql(sql)
  redirect to '/'
end
