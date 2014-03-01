require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/ahorcado'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
  @@ahorcado = Ahorcado.new()
  @@ahorcado.setNick(params["nick"])
  @@ahorcado.setTelefono(params["telefono"])

  erb :ahorcado
end

get '/letra' do
  @@ahorcado.setLetra(params["letra"])
  erb :ahorcado
end

get '/palabra' do
  @@ahorcado.setPalabra(params["palabra"])
  erb :ahorcado
end

get '/login' do
  erb :login
end
