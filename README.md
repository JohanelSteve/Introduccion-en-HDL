Introduccion en HDL - Convertidor de 4 modos <a color="green" name="TOP"></a>
===================
Este proyecto se enfoca en el desarrollo de habilidades para el manejo del lenguaje de descripcion de hardware, el proyecto esta conformado por 3 miembros. 

<h4>Equipo de trabajo:</h4>
<p>-Fabrizio Vivas <br> -Johanel Álvarez <br> -Jeustin Huaman </p>





# Descripcion del proyecto #

<p>
El siguiente proyecto contara con 3 módulos o subsistemas encargados de realizar una serie de operaciones detalladas a continuación:

<br/>

Mediante el primer subsistema de lectura y sincronización se tendrá el modo de selección de operaciones por medio de un total de 16 conmutadores, 2 (switches) y 14 conmutadores recibirán los bits de entrada para desplegar en la salida. La operación será dependiente de la sincronización del dominio de reloj de la FPGA. <br/>

<br/>

El segundo modulo se encargará de realizar las operaciones elementales del proyecto basadas en conversiones del grupo binario a BCD, dos números binarios de 6 bits a BCD (con bits 6 y 13 descartados), demostración de numero binario de 14 bits (sin signo) hexadecimal y un código de inversión de signo en complemento a dos de un numero binario de 14 bits (con signo) en hexadecimal. Cada modo de operación tendrá un código de selección especifico para realizar el cálculo.
<br/>
![image](https://user-images.githubusercontent.com/104220377/229974599-3cc1594b-e167-4889-9b63-e98e2294c50e.png)


<br/>

Por último, se contará con el módulo de salida que se encargará de desplegar los datos en un display 7 segmentos de 4 dígitos con una tasa de refresco adecuada para la visualización por parte del usuario.
</p>

# Verificacion # 
<br/>
En el proyecto en cuestión, se requiere presentar simulaciones para cada subsistema, tanto a nivel de RTL como con información de temporizado. Estas simulaciones deben ser evaluadas por el profesor en fechas determinadas. Es necesario que el grupo genere pruebas de banco o testbenches aleatorios y autoverificables. Se recomienda almacenar en un archivo las transiciones de salida del sistema como un archivo de texto para luego procesarlo y desplegarlo en un programa de Python.
En el apéndice se muestra un ejemplo de GUI para la visualización de datos.




# Evalucion # 
<p>
<br/>

![image](https://user-images.githubusercontent.com/104220377/229974253-a82fbdfc-6516-45d8-87b2-4492478b2294.png)
</p>

<br/>


# Proceso de desarrollo del proyecto #
# Diagramas # 

Para ir completando funcionalmente el proyecto nos fuimos guiando mientante el esquematico y testbech.

Podemos obsevar por ejemplo el bloque 1, Sincronizador conformado por 4 FF y conectado a 16 swicth/ el cual no da una salida para los modos a trabajar. 
![image](https://user-images.githubusercontent.com/104220377/236180567-f900dcd0-c829-43cc-8255-981aad6adb8b.png)


Multiplexor encargado de la lógica de los modos 
![image](https://user-images.githubusercontent.com/104220377/236180974-22718f31-1684-4a3f-9255-26dd87c1468f.png)


El bloque para los 7 segmentos, dicho bloque temenos mux para los 7 segmentos, con su contador, y control de anodos, el cual se unifica en un sub-top.
![image](https://user-images.githubusercontent.com/104220377/236180889-fac85f79-cd17-4605-9a7a-ac55217d1a44.png)


Al ver el diagrama en mas alto nivel podemos ver;
![image](https://user-images.githubusercontent.com/104220377/236181467-9c3d4897-20ca-4aaa-a171-a6d415616f55.png)

Observemos el contador dentro del 7 segmentos (contador_refresh2)
![image](https://user-images.githubusercontent.com/104220377/236181506-b05efb16-51e2-41fc-9469-2fd86104f35c.png)


# Constrains #

Uno de los objectivos era la implementacion en una FPGA, por lo que se trabajo y se cableo los constrains para el proyecto 


![image](https://user-images.githubusercontent.com/104220377/236182928-17f3ad3e-d358-44c4-a3f6-08e0ea334393.png)
![image](https://user-images.githubusercontent.com/104220377/236182961-189bdc4d-adac-4f06-af74-a52da4421ed5.png)
![image](https://user-images.githubusercontent.com/104220377/236182993-11a344d3-d503-4a08-8034-80860966775b.png)
![image](https://user-images.githubusercontent.com/104220377/236183025-4713348c-0b8d-4930-8c22-a549c2c3a57c.png)


# Testbench #

Modulo 00 testbench
![image](https://user-images.githubusercontent.com/104220377/236183626-193f1c44-45a8-4cd2-8e1c-94a7e27c61bc.png)



7 segmentos testbench
![image](https://user-images.githubusercontent.com/104220377/236183808-b332c1b9-2ff0-4368-910e-fa04b32a3c7f.png)



Modulo 01 testbench
![image](https://user-images.githubusercontent.com/104220377/236184073-b859ca80-2208-4081-af9e-17e193bd232f.png)


