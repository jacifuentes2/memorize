require 'sinatra'
require './config'

veces = 0

get '/' do
	@valores = ["","","",""]
	erb :seleccionPareja
end

post '/validar' do

	@valores = ["","","",""]
	veces = veces.to_i + 1

	if(veces > 2)
		@valores = ["","","",""]
		veces = 0
	end

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

	if(veces < 2)
		p1 = params["1"]
		p2 = params["2"]
		p3 = params["3"]
		p4 = params["4"]

		if(p1 != "")
			@valores[0] = p1
		elsif (p2 != "")
			@valores[1] = p2
		elsif (p3 != "")
			@valores[2] = p3
		elsif (p4 != "")
			@valores[3] = p4
		end	
		@datos = params
	end

	erb :seleccionPareja
end
