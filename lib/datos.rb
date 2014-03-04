require 'rubygems'
require 'mongo'
require 'json'

include Mongo
class Datos
  def initialize()
    @db = ""
    @errorDatos = ""

    begin
      host = ENV['MONGO_RUBY_DRIVER_HOST'] || 'localhost'
      port = ENV['MONGO_RUBY_DRIVER_PORT'] || MongoClient::DEFAULT_PORT
      self.setDb(MongoClient.new(host, port).db('cyberDental'))
    rescue Exception => e
      self.setErrorDatos("La conexion no se pudo abrir: " + e)
    end
  end

  def getDb()
    @db
  end

  def setErrorDatos(error)
    @errorDatos = error
  end

  def getErrorDatos()
    @errorDatos
  end

  def setDb(db)
    @db = db
  end

  def obtieneColeccion(coleccion)
    self.getDb.collection(coleccion)
  end

  def insertaColeccion(coleccion, objetoJSON)
    begin
      coleccion.insert(objetoJSON)
      coleccion.find().each { |doc| puts doc.inspect }
      true
    rescue Exception => e
      self.setErrorDatos("Error al insertar: " + e)
    end
  end

  def isDuplicado(coleccion, objetoJSON)
    begin
      duplicado = coleccion.find(objetoJSON)
      duplicado.count > 0 ? true : false
    rescue Exception => e
      self.setErrorDatos("Error al verificar duplicado: " + e)
    end
  end

end