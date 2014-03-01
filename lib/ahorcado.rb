class Ahorcado
	def initialize()
		@palabra = ""
		@adivinanza = ""
		@letra = ""
		@mensaje = ""
		@tel = ""
		@nick = ""
	end
	
	def setPalabra(palabra)
		setMensaje("")		
		if palabra.index(" ") != nil
			setMensaje("No se permiten espacios")	
		else	
			@palabra = palabra.downcase
			obtieneEspacios()
		end
	end

	def getPalabra()
		@palabra
	end

	def getJugador()
		@nick
	end
	
	def setMensaje(mensaje)
		@mensaje = mensaje
	end

	def getMensaje()
		@mensaje
	end

	def setNick(nick)
		@nick = nick
	end

	def setTelefono(tel)
		@tel = tel
	end

	def setLetra(letra)
		@letra = letra
		ingresaLetra(@letra)
	end

	def getAdivinanza()
		@adivinanza
	end

	def obtieneEspacios()
		numeroEspacios = @palabra.length
		@adivinanza = "_"*numeroEspacios
	end

	def ingresaLetra(letra)
		tmpPalabra = @palabra.gsub(letra, "&")			
		if tmpPalabra == @palabra
			setMensaje("Letra no corresponde")
		else
			acomodaLetra(letra, 0)
			if getMensaje() != "Ganaste!!!"
				setMensaje("Felicidades acertaste 1 letra")
			end
		end
		
	end
	
	def acomodaLetra(letra, offset)
		posicion = @palabra.index(letra, offset)
		if posicion != nil
			@adivinanza[posicion] = letra
			if @adivinanza.index("_") == nil
				setMensaje("Ganaste!!!")
			end
			acomodaLetra(letra, posicion + 1)
		end
	end

end
