require "datos"

describe "Clase de Datos" do

  it "Conectar a Base de Datos" do
    con = Datos.new()
    con.getDb.should_not == "fallo mongo"
  end
  
  it "Inserta Coleccion" do
    con = Datos.new()
    coleccion = con.obtieneColeccion('test')
    datosJSON = ({a:99,b:98,c:97})
    con.insertaColeccion(coleccion, datosJSON).should == true
  end
  
end
