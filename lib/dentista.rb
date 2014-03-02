class Dentista
  def initialize()
    @nombre = ""
    @apellidoPaterno = ""
    @apellidoMaterno = ""
    @genero = 1
  end

  def getNombre()
    @nombre
  end

  def setNombre(nombre)
    @nombre = nombre
  end

  def getApellidoPaterno()
    @apellidoPaterno
  end

  def setApellidoPaterno(apellidoPaterno)
    @apellidoPaterno = apellidoPaterno
  end

  def getApellidoMaterno()
    @apellidoMaterno
  end

  def setApellidoMaterno(apellidoMaterno)
    @apellidoMaterno = apellidoMaterno
  end

  def getGenero()
    @genero
  end

  def setGentero(genero)
    @genero = genero
  end
  
  def getNombreCompleto(dentista)
#    genero = "Dr."
#    if dentista.getGenero == 2
#      genero = "Dra."
#    end
#    genero + " " + dentista.getNombre() + " " + dentista.getApellidoPaterno() + " " + dentista.getApellidoMaterno()
    "Dra. Melisa Trujillo Ceja"
  end

end
