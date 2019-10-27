PAV - P3: detección de pitch
============================

Para descargar los ficheros de esta práctica, debe ir a la página principal del repositorio GitHub,
[práctica 3](https://github.com/albino-pav/P3), y clickar en la caja verde situada a la derecha,
justo encima del listado de ficheros del repositorio, con el nombre **`Clone or download`**. Al hacerlo,
se despliega un menú en el que aparece la dirección del repositorio. Copie esta dirección en el
portapapeles (puede usar la rata y **[Ctrl-C]** o usar el icono a la derecha de la dirección). A
continuación, vaya al directorio **PAV** de su ordenador y ejecute la orden siguiente:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.sh
usuario:~/PAV$ git clone dirección_copiada
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Si todo ha funcionado correctamente, el repositorio se descargará en su ordenador y estará preparado para 
trabajar en él.

#### Creación de una rama (_branch_).

Lo primero que debe hacer es crear una rama nueva en su repositorio, ya que GitHub no le permitirá 
actualizar la rama principal (**master**) del proyecto. Utilice un nombre que le identifique personalmente
(una posible elección es su nombre y apellido). Si, como se recomienda, va a trabajar colaborativamente en
el seno de su grupo de prácticas, es conveniente que uno de sus miembros escoja como nombre de la rama la
combinación de los primeros apellidos de los integrantes del grupo.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.sh
usuario:~/PAV/P3$ git branch Fulano-Mengano
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Inicialización del trabajo colaborativo usando GitHub.

Seguramente sea un buen momento para crear un repositorio con su copia del proyecto en **GitHub**. De este
modo, los distintos miembros del grupo podrán realizar sus cambios localmente y compartir sus avances en
un sitio común y accesible.

Para ello, lo primero que debe hacer es, si no dispone de ella, crear una cuenta en GitHub. El proceso para 
ello es bastante sencillo siguiendo las instrucciones proporciondas por el proio GitHub. Al contrario que
Git, GitHub se gestiona completamente desde un entorno gráfico súmamente intuitivo. Además, está 
razonablemente documentado, tanto internamente, mediante sus [Guías de GitHub](https://guides.github.com/),
como externamente, mediante multitud de tutoriales, guías y vídeos disponibles gratuitamente en internet.

Cree un repositorio vacío en su nueva cuenta de GitHub (aunque no es estrictamente necesario, use el mismo 
nombre que la práctica: **P3**). Obtenga la dirección de su nuevo repositorio vacío, y declárelo como 
origen remoto de su repositorio local:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.sh
usuario:~/PAV/P3$ git remote add origin dirección-repositorio-vacío
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A continuación, ya puede sincronizar su repositorio remoto con su copia local con la orden:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.sh
usuario:~/PAV/P3$ git push origin master
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
