require 'sinatra'
require './config'

get '/' do
	@valores = ["","","",""]
	erb :seleccionPareja
end

post '/validar' do

	@valores = ["","","",""]

	imagen1 = params["Imagen 1"]
	imagen2 = params["Imagen 2"]
	imagen3 = params["Imagen 3"]
	imagen4 = params["Imagen 4"]

	if(imagen1 != nil)
		@valores[0] = "7"
	elsif (imagen2 != nil)
		@valores[1] = "14"
	elsif (imagen3 != nil)
		@valores[2] = "7"
	elsif (imagen4 != nil)
		@valores[3] = "14"
	end	
	
	@datos = params

	erb :seleccionPareja
end
