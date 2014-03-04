require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require './lib/dentista'

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
  @@dentista.setGenero(params["generoDentista"])
  erb :guardaDentista
end

get '/dentistas/RegistroConsultorios' do
  erb :registroConsultorio
end