require 'json'
require 'datos'

class Dentista
  def initialize()
    @nombre = ""
    @apellidoPaterno = ""
    @apellidoMaterno = ""
    @genero = 1
    @email = ""
  end

  def dentista_json()
    {'nombre' => @nombre, 'apellidoPaterno' => @apellidoPaterno, 'apellidoMaterno' => @apellidoMaterno, 'genero' => @genero}
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

  def setGenero(genero)
    @genero = genero
  end

  def getEmail()
    @email
  end

  def setEmail(email)
    @email = email
  end

  def getGeneroTexto()
    genero = "Dr."
    if self.getGenero() == "2"
      genero = "Dra."
    end
    genero
  end

  def getNombreCompleto()
    self.getGeneroTexto() + " " + self.getNombre() + " " + self.getApellidoPaterno() + " " + self.getApellidoMaterno()
  end

  def grabar()
    con = Datos.new()
    if con.getDb == "fallo mongo" then false else con.insertaColeccion(con.obtieneColeccion('dentistas'), self.dentista_json()) end
  end

end
