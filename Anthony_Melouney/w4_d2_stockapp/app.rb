require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'
require 'pry'

get '/' do
  if params[:stock] != nil && params[:stock] != ""
    result =  YahooFinance::get_quotes(YahooFinance::StandardQuote, stockcode)[stockcode].lastTrade
  else
    # the at symbol allows the price variable to be shared with the browser view, as by default it is not (lookup global variables)
    @last_trade = ""
  end
  # binding.pry

  erb :index
end
