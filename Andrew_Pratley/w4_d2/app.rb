require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  if params[:stock] != nil && params[:stock] != ''
    @stock = params[:stock].upcase
    @stock_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade
    @volume = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].averageDailyVolume
    @day_range = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].dayRange
    erb :index
  else
    @stock = ''
    @stock_price = ''
    @volume = ''
    @day_range = ''
  end
  erb :index
end
