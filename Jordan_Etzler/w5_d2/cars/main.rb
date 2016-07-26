require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_sql(sql)
  db = PG.connect(dbname: 'automobiles')
  collection = db.exec(sql)
  db.close
  collection
end

get '/' do
  @cars = run_sql('select * from cars;')
  erb :index
end

post '/cars' do
  sql = "insert into cars(brand, model, engine_power, image) values ('#{ params[:brand] }', '#{ params[:model] }', '#{ params[:engine_power] }', '#{ params[:image] }')"
  run_sql(sql)
  redirect to '/'
end

get '/cars/:id' do
  sql = "select * from cars where id = #{ params[:id] };"
  @cars = run_sql(sql)[0]
  erb :view
end

delete '/cars/:id' do
  sql = "delete from cars where id = #{ params[:id] };"
  run_sql(sql)
  redirect to "/"
end

get '/cars/:id/edit' do
  sql = "select * from cars where id = #{ params[:id] }"
  @cars = run_sql(sql)[0]
  erb :update
end

put '/cars/:id' do
  sql = "update cars set model = '#{ params[:model] }', brand = '#{ params[:brand] }', engine_power = '#{ params[:engine_power] }', image = '#{ params[:image] }'where id = #{ params[:id] }"
  run_sql(sql)
  redirect to "/cars/#{ params[:id] }"
end
