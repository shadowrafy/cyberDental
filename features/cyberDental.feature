Feature: Registro Dentistas

#Scenario: Password confirmado incorrecto

Scenario: Registrar a un nuevo dentista
Given Estoy en la pagina de registro de dentistas
When Lleno el campo "nombreDentista" con "Melisa"
And Lleno el campo "apellidoPaternoDentista" con "Trujillo"
And Lleno el campo "apellidoMaternoDentista" con "Ceja"
And Lleno el campo "emailDentista" con "dra.trujillo_dental@hotamil.com"
And Lleno el campo "cedulaDentista" con "1234567"
And Lleno el campo "usuarioDentista" con "mely"
And Lleno el campo "passwordDentista" con "1234"
And Lleno el campo "confirmarPasswordDentista" con "1234"
And Lleno el campo "generoDentista" con "2"
And Hago click en "registrarDentista"
Then veo "Bienvenida Dra. Melisa Trujillo Ceja"

Scenario: Ingresar correo electrónico inválido














