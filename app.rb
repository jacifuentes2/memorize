require 'sinatra'
require './config'

get '/' do
	@imagen1 = ""
	@imagen2 = ""
	@imagen3 = ""
	@imagen4 = ""
	erb :seleccionPareja
end
get '/imagen1' do
	@imagen1 = "7"
	erb :seleccionPareja
end
get '/imagen2' do
	@imagen2 = "14"
	erb :seleccionPareja
end
get '/imagen3' do
	@imagen3 = "7"
	erb :seleccionPareja
end
get '/imagen4' do
	@imagen4 = "14"
	erb :seleccionPareja
end
