require "dentista"
require "datos"

describe "Registro de Dentista" do

  it "Cuando el dentista es femenino mostrar Dra" do
    dentista = Dentista.new()
    dentista.setGenero("2")
    generoTexto = dentista.getGeneroTexto()
    generoTexto.should == "Dra."
  end

  it "Formar el nombre completo del dentista" do
    dentista = Dentista.new()
    dentista.setGenero("2")
    dentista.setNombre("Melisa")
    dentista.setApellidoPaterno("Trujillo")
    dentista.setApellidoMaterno("Ceja")
    nombreCompleto = dentista.getNombreCompleto()
    nombreCompleto.should == "Dra. Melisa Trujillo Ceja"
  end

  it "Grabar un Dentista en la base de datos" do
    dentista = Dentista.new()
    dentista.setGenero("2")
    dentista.setNombre("Melisa")
    dentista.setApellidoPaterno("Trujillo")
    dentista.setApellidoMaterno("Ceja")
    dentista.grabar().should == true
  end
  
  it "Detectar un dentista Duplicado" do
    dentista = Dentista.new()
    dentista.setGenero("2")
    dentista.setNombre("Melisa")
    dentista.setApellidoPaterno("Trujillo")
    dentista.setApellidoMaterno("Ceja")
    dentista.setEmail("mel@gmail.com")
    con = Datos.new()
    coleccion = con.obtieneColeccion('dentistas')
    datosJSON = dentista.dentista_json()
    con.insertaColeccion(coleccion, datosJSON)
    con.isDuplicado(coleccion, datosJSON).should == true
  end

end
