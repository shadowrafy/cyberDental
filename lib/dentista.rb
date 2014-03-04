require 'json'

class Dentista
  def initialize()
    @nombre = ""
    @apellidoPaterno = ""
    @apellidoMaterno = ""
    @genero = 1
    @email = ""
    @cedula = ""
    @usuario = ""
    @password = ""
  end

  def dentista_json()
    {'nombre' => @nombre, 'apellidoPaterno' => @apellidoPaterno, 'apellidoMaterno' => @apellidoMaterno, 'genero' => @genero, 'email' => @email}
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

  def getCedula()
    @cedula
  end

  def setCedula(cedula)
    @cedula = cedula
  end

  def getUsuario()
    @usuario
  end

  def setUsuario(usuario)
    @usuario = usuario
  end

  def getPassword()
    @password
  end

  def setPassword(password)
    @password = password
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
    coleccion = con.obtieneColeccion('dentistas')
    if !con.isDuplicado(coleccion, {"email" => self.getEmail}) || self.getEmail == ""
      if con.getErrorDatos == ""
      con.insertaColeccion(coleccion, self.dentista_json())
      else
        puts con.getErrorDatos
      end
    else
      puts "El email ya esta en uso"
    end
  end

end
