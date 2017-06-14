require './lib/logica.rb'

describe "Memorize Game" do
	it "debe tener la informacion del tablero"  do
		logica=Logica.new
		tablero = logica.tablero
		expect(tablero[0]).to eq 7
		expect(tablero[1]).to eq 14
		expect(tablero[2]).to eq 7
		expect(tablero[3]).to eq 14
		
	end

	it "el tablero debe estar oculto" do
		logica = Logica.new
		pantalla =  logica.pantalla
		expect(pantalla[0]).to eq false
		expect(pantalla[1]).to eq false
		expect(pantalla[2]).to eq false
		expect(pantalla[3]).to eq false
	end

	it "descubrir primer numero" do
		logica = Logica.new
		pantalla =  logica.descubrirNumero 0
		expect(logica.primerNumero).to eq 7
		
	end

	it "descubrir segundo numero" do
		logica = Logica.new
		logica.descubrirNumero 0
		logica.descubrirNumero 3
		expect(logica.segundoNumero).to eq 14
		
	end

	it "comparar dos numeros iguales"  do
		logica = Logica.new
		logica.descubrirNumero 0
		logica.descubrirNumero 2

		logica.validarParejas
		pantalla = logica.pantalla

		expect(pantalla[0]).to eq true
		expect(pantalla[1]).to eq false
		expect(pantalla[2]).to eq true
		expect(pantalla[3]).to eq false
	end

	it "descubrir dos parejas"  do
		logica = Logica.new
		logica.descubrirNumero 0
		logica.descubrirNumero 2
		logica.validarParejas

		logica.descubrirNumero 1
		logica.descubrirNumero 3
		logica.validarParejas
		

		pantalla = logica.pantalla

		expect(pantalla[0]).to eq true
		expect(pantalla[1]).to eq true
		expect(pantalla[2]).to eq true
		expect(pantalla[3]).to eq true
	end

	it "comparar dos numero diferentes"  do
		logica = Logica.new
		logica.descubrirNumero 0
		logica.descubrirNumero 3

		logica.validarParejas
		pantalla = logica.pantalla

		expect(pantalla[0]).to eq false
		expect(pantalla[1]).to eq false
		expect(pantalla[2]).to eq false
		expect(pantalla[3]).to eq false
	end
end