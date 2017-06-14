class Logica

	def initialize
		@tablero = [7,14,7,14]
		@pantalla = [false,false,false,false]
	end

	def descubrirNumero posicion
		if @primerNumero != nil
			@segundoNumero = @tablero[posicion]
		else
			@primerNumero = @tablero[posicion]
		end
	end

	def validarParejas
		if @primerNumero != nil and @primerNumero == @segundoNumero
			indices = @tablero.each_index.select{|i| @tablero[i] == @primerNumero}
			indices.each do |indice|
				@pantalla[indice] = true
			end
		end
		@primerNumero = nil
		@segundoNumero = nil
	end

	def tablero
		@tablero
	end

	def pantalla
		@pantalla
	end

	def primerNumero
		@primerNumero
	end

	def segundoNumero
		@segundoNumero
	end

end
