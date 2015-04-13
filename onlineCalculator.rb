require 'sinatra'
require 'sinatra/reloader' if development? 
require 'pry'
require 'pry-byebug'

require_relative './lib/calculator.rb'

get '/' do
	erb :index
end

post '/' do	

	@sol  = Calculator.new.which_operation(params["second_element"].to_f,params.values.last)
	erb :sol
end

get '/counting' do
	@range = (1..200).to_a
    erb :counting

end