PAV - P3: detección de pitch
============================

Esta práctica se distribuye a través del repositorio GitHub [Práctica 3](https://github.com/albino-pav/P3),
y una parte de su gestión se realizará mediante esta web de trabajo colaborativo.  Al contrario que Git,
GitHub se gestiona completamente desde un entorno gráfico súmamente intuitivo. Además, está razonablemente
documentado, tanto internamente, mediante sus [Guías de GitHub](https://guides.github.com/), como
externamente, mediante infinidad de tutoriales, guías y vídeos disponibles gratuitamente en internet.

## Inicialización del repositorio de la práctica.

Para cargar los ficheros en su ordenador personal debe seguir los pasos siguientes:

*	Abra una cuenta GitHub para gestionar esta y el resto de prácticas del curso.
*	Cree un repositorio GitHub con el contenido inicial de la práctica:
	*	Acceda a su página principal de GitHub pulsando sobre su icono personal en la parte superior
		izquierda de cualquier página GitHub (debe estar identificado).
	*	Pulse en el botón con el texto **New** que encontrará arriba a la izquierda.
	*	Dele el nombre **P3**, deje las opciones por defecto y pulse en el botón al final de la página con
		el texto **Create repository**.
	*	En la página siguiente, de inicialización del repositorio, escoja la última opción, **Import code**,
		introduzca la dirección del repositorio de la [Práctica 3](https://github.com/albino-pav/P3), y
		pulse en el botón **Begin import**.
	*	Después de unos segundos, el repositorio contendrá los ficheros originales de la práctica.
*	En la página principal del repositorio, localice el botón **Branch: master** y úselo para crear una
	rama nueva con los primeros apellidos de los integrantes del equipo de prácticas separados por guion.
*	También en la página principal del repositorio, en la pestaña **Settings**, escoja la opción 
	**Collaborators** y añada a su compañero de prácticas.
	*	Éste recibirá un email solicitándole confirmación. Una vez confirmado, tanto él como el propietario
		podrán gestionar el repositorio, por ejemplo: crear ramas en él o subir las modificaciones de su
		directorio local de trabajo al repositorio GitHub usando el comando `git push ...`.
*	Cada usuario del repositorio debe descargárselo en su ordenador con la orden `git clone
	dirección-del-repositorio.git`.
*	A partir de este momento, todos los miembros del grupo de prácticas pueden trabajar en su directorio
	local del modo habitual.
	*	También puede utilizar el repositorio remoto como repositorio central para el trabajo colaborativo
		de los distintos miembros del grupo de prácticas; o puede serle útil usarlo como copia de seguridad.
	*	Al final de la práctica, la rama creada en el repositorio GitHub servirá para remitir la práctica
		para su evaluación utilizando el mecanismo *pull request*.

## Entrega de la práctica.

La entrega de la práctica se hará mediante _pull requests_. Conforme se acerque la fecha de entrega,
prevista para alrededor del 3 de noviembre de 2019, se informará del procedimiento con mayor detalle.

## Acerca de este fichero, README.md, y del lenguaje en que está escrito, Markdown.

README.md es un fichero de texto escrito con un formato denominado _**markdown**_. La principal
característica de este formato es que, manteniendo la legibilidad cuando se visualiza con herramientas en 
modo texto (`more`, `less`, editores varios, ...), permite amplias posibilidades de visualización con
formato en una amplia gama de aplicaciones; muy notablemente, **GitHub**, **Doxygen** y **Facebook**
(ciertamente, :eyes:).

Por ejemplo, _markdown_ permite construir tablas como la siguiente, que muestra distintas opciones de
resalte del texto:

modo texto               |modo gráfico           |modo texto                |modo gráfico
-------------------------| :-------------------: |--------------------------| :--------------------:
`*cursiva*`              |*cursiva*              |`_cursiva_`               |_cursiva_              
`**negrita**`            |**negrita**            |`__negrita__`             |__negrita__            
`***cursiva y negrita***`|***cursiva y negrita***|`___negrita y cursiva___` |___negrita y cursiva___
`_**negrita y cursiva**_`|__*negrita y cursiva*__|`__*cursiva y negrita*__ `|_**cursiva y negrita**_

- NOTA: **Doxygen** no muestra correctamente el texto con formato de la tabla anterior. Sin embargo, otros
  programas, en particular, **GitHub**, sí lo hacen.

También permite los links, como el siguiente, que permite acceder a los elementos más importantes de la 
sintaxis de este formato desde la página de su creador, _John Gruber_:
[Sintaxis de Markdown](https://daringfireball.net/projects/markdown/syntax).

Algunas aplicaciones añaden ampliaciones específicas al lenguaje, los llamados _flavours_ (aromas). Esto
es, a la vez, una ventaja y un inconveniente, ya que, aunque muchas de ellas son realmente útiles, rompen
la unidad del lenguaje e introducen incompatibilidades. Ahora bien, como todos ellos mantienen como
referencia la legibilidad del fichero original en modo texto, las incompatibilidades no suelen traducirse
en situaciones demasiado desastrosas. Entre los flavours más importantes para nosotros cabe destacar el
[Markdown de GitHub](https://guides.github.com/features/mastering-markdown/) o el
[Markdown de Doxygen](http://www.doxygen.nl/manual/markdown.html).
