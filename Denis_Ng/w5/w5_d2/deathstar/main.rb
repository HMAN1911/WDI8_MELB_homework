require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  db = PG.connect(dbname: 'deathstar')

  @planets = db.exec('SELECT * FROM planets;')

  db.close
  
  erb :index
end
