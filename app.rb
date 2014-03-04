require 'rubygems' if RUBY_VERSION < '1.9'

require 'sinatra'
require './lib/dentista'
require './lib/datos'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/dentistas/RegistroDentistas' do
  erb :registroDentista
end

post '/dentistas/GuardaDentistas' do
  @@dentista = Dentista.new()
  @@dentista.setNombre(params["nombreDentista"])
  @@dentista.setApellidoPaterno(params["apellidoPaternoDentista"])
  @@dentista.setApellidoMaterno(params["apellidoMaternoDentista"])
  @@dentista.setEmail(params["emailDentista"])
  @@dentista.setCedula(params["cedulaDentista"])
  @@dentista.setUsuario(params["usuarioDentista"])
  @@dentista.setPassword(params["passwordDentista"])
  @@dentista.setGenero(params["generoDentista"])
  @@dentista.grabar()
  erb :guardaDentista
end

get '/dentistas/RegistroConsultorios' do
  erb :registroConsultorio
end