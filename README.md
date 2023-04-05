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
