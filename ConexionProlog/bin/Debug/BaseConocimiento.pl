/*Base de conocimiento
 * Ejemplo basico
*/
%Declaracion de hechos.
objeto(casa).
objeto(mesa).
objeto(television).
objeto(torta_chilaquiles).
objeto(tamal_elote).
objeto(refrigerador).
objeto(cama).
objeto(laptop).
objeto(celular).
objeto(tasa).
objeto(ventana).
objeto(cable).
objeto(moto).
objeto(carro).
objeto(puerta).
objeto(albondigas).
objeto(quesadillas).
objeto(pan).
objeto(cafe).
objeto(gordita).
objeto(galleta).
objeto(pastel).

%Relacion tama�o del objeto.
tamano(casa,grande).
tamano(mesa,grande).
tamano(television,chico).
tamano(torta_chilaquiles,chico).
tamano(tamal_elote,chico).
tamano(refrigerador,grande).
tamano(cama,mediano).
tamano(laptop,chico).
tamano(celular,chico).
tamano(tasa,chico).
tamano(ventana,mediano).
tamano(cable,chico).
tamano(moto,mediano).
tamano(carro,grande).
tamano(puerta,grande).
tamano(albondigas,chico).
tamano(quesadillas,chico).
tamano(pan,chico).
tamano(cafe,chico).
tamano(gordita,chico).
tamano(galleta,chico).
tamano(pastel,mediano).

%Relacion costo del objeto.
cuesta(casa,1000000).
cuesta(mesa,3000).
cuesta(television,8000).
cuesta(torta_chilaquiles,15).
cuesta(tamal_elote,10).
cuesta(refrigerador,20000).
cuesta(cama,2000).
cuesta(laptop,10500).
cuesta(celular,3100).
cuesta(tasa,32).
cuesta(ventana,250.5).
cuesta(cable,11).
cuesta(moto,18999).
cuesta(carro,240560).
cuesta(puerta,480).
cuesta(albondigas,20).
cuesta(quesadillas,12).
cuesta(cafe,7).
cuesta(pan,3.50).
cuesta(gordita,15).
cuesta(galleta,4).
cuesta(pastel,199.5).

%Relacion categoria del objeto.
tipo(casa,inmueble).
tipo(mesa,mueble).
tipo(television,electronico).
tipo(torta_chilaquiles,comida).
tipo(tamal_elote,comida).
tipo(refrigerador,electrodomestico).
tipo(cama,mueble).
tipo(laptop,electronico).
tipo(celular,electronico).
tipo(tasa,traste).
tipo(ventana,mueble).
tipo(cable,electronico).
tipo(moto,transporte).
tipo(carro,transporte).
tipo(puerta,mueble).
tipo(albondigas,comida).
tipo(quesadillas,comida).
tipo(cafe,bebida).
tipo(pan,comida).
tipo(gordita,comida).
tipo(galleta,comida).
tipo(pastel,comida).

tipos(inmueble).
tipos(mueble).
tipos(electronico).
tipos(comida).
tipos(electrodomestico).
tipos(traste).
tipos(transporte).
tipos(bebida).

%Relacion para comidas.
comida(tamal_elote,desayuno).
comida(torta_chilaquiles,desayuno).
comida(albondigas,merienda).
comida(cafe,desayuno).
comida(pan,desayuno).
comida(gordita,merienda).
comida(galleta,cena).
comida(pastel,cena).

%Cargar para conectar con C#
cargar(A):-exists_file(A),consult(A).

%Reglas
tipode(T,O):-tamano(O,R),tipo(T,R).



















