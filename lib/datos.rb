require 'rubygems'
require 'mongo'
require 'json'

include Mongo
class Datos
  def initialize()
    @db = ""

    begin
      host = ENV['MONGO_RUBY_DRIVER_HOST'] || 'localhost'
      port = ENV['MONGO_RUBY_DRIVER_PORT'] || MongoClient::DEFAULT_PORT
      self.setDb(MongoClient.new(host, port).db('cyberDental'))
    rescue Exception => e
      self.setDb("fallo mongo")
    end
  end

  def getDb()
    @db
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
      puts e
      false
    end
  end
  
  def isDuplicado(coleccion, objetoJSON)
    begin
      
    rescue Exception => e
      puts e
      false
    end
    end

end