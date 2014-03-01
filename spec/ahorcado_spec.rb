require "ahorcado"

describe "Juego de Ahorcado Saldo" do

	it "Cuando la palabra es taxi mostrar ____" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("taxi")
		adivinanza = ahorcado.getAdivinanza()
		adivinanza.should == "____"
	end

	it "Cuando la palabra es raton mostrar _____" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("raton")
		adivinanza = ahorcado.getAdivinanza()
		adivinanza.should == "_____"
	end

	it "Cuando ingreso la letra t y la palabra es taxi" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("taxi")
		ahorcado.setLetra("t")
		adivinanza = ahorcado.getAdivinanza()
		adivinanza.should == "t___"
	end

	it "Cuando ingreso la letra c y la palabra es taxi" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("taxi")
		ahorcado.setLetra("c")
		adivinanza = ahorcado.getAdivinanza()
		ahorcado.getMensaje().should == "Letra no corresponde"
	end

	it "Cuando ingreso la letra a y la palabra es taxi" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("taxi")
		ahorcado.setLetra("a")
		adivinanza = ahorcado.getAdivinanza()
		adivinanza.should == "_a__"
	end

	it "Cuando ingreso la letra o y la palabra es cocodrilo" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("cocodrilo")
		ahorcado.setLetra("o")
		adivinanza = ahorcado.getAdivinanza()
		adivinanza.should == "_o_o____o"
	end

	it "Cuando ingreso todas las letras de la palabra taxi recibo mensaje de felicitacion" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("taxi")
		ahorcado.setLetra("t")
		ahorcado.setLetra("a")
		ahorcado.setLetra("x")
		ahorcado.setLetra("i")	
		mensaje = ahorcado.getMensaje()
		mensaje.should == "Ganaste!!!"
	end
	
	it "Cuando la palabra tiene espacio" do
		ahorcado = Ahorcado.new()
		ahorcado.setPalabra("ta xi")
		ahorcado.getMensaje().should == "No se permiten espacios"
	end

	it "Cuando el nick es rrre" do
		ahorcado = Ahorcado.new()
		ahorcado.setNick("rrre")
		ahorcado.getJugador().should == "rrre"
	end


end
