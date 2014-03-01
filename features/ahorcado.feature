Feature: Inicio Juego

Scenario: Tener un palabra adivinar
Given Estoy en la pagina principal
When Juego con la palabra "taxi"
Then veo "____"

Scenario: Ingresar una letra
Given Estoy en la pagina principal
When Juego con la palabra "taxi"
And Ingreso "letra" y es "t"
And Aprieto boton "enviar"
Then veo "t___"

Scenario: Ingresar una letra qeu no sea parte de la palabra y recibir mensaje de error
Given Estoy en la pagina principal
When Juego con la palabra "taxi"
And Ingreso "letra" y es "y"
And Aprieto boton "enviar"
Then veo "Letra no corresponde"

Scenario: Ver espacios de manera dinamica
Given Estoy en la pagina principal
When Juego con la palabra "raton"
Then veo "_____"

Scenario: Ingresar una letra correcta
Given Estoy en la pagina principal
When Juego con la palabra "taxi"
And Ingreso "letra" y es "t"
And Aprieto boton "enviar"
Then veo "Felicidades acertaste 1 letra"

Scenario: Reemplazar todas las letras que acierte
Given Estoy en la pagina principal
When Juego con la palabra "cocodrilo"
And Ingreso "letra" y es "o"
And Aprieto boton "enviar"
Then veo "_o_o____o"

Scenario: Acertaste la palabra
Given Estoy en la pagina principal
When Juego con la palabra "taxi"
And Ingreso "letra" y es "t"
And Aprieto boton "enviar"
And Ingreso "letra" y es "a"
And Aprieto boton "enviar"
And Ingreso "letra" y es "x"
And Aprieto boton "enviar"
And Ingreso "letra" y es "i"
And Aprieto boton "enviar"
Then veo "Ganaste!!!"

Scenario: Ingresa solo un palabra
Given Estoy en la pagina principal
When Juego con la palabra "ta xi"
Then veo "No se permiten espacios" 

Scenario: Solicitar login
Given Estoy en el login
Then veo "Ingrese nick"

Scenario: Solicitar login
Given Estoy en el login
Then veo "Ingrese telefono"

Scenario: Ingresar telefono
Given Estoy en el login
When lleno campo "nick" con "rrre"
And lleno campo "telefono" con "1234567890"
And hago click en "entrar"
Then veo "Bienvenido rrre"














