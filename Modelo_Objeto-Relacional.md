# Modelo Objeto-Relacional: Arquitectos 
## Asignatura de Administración y Diseño de Bases de Datos

Integrantes del grupo:

- Cristo Manuel Pérez Rodríguez
(alu0101218007@ull.edu.es)

- Elena Rijo García
(alu0101265421@ull.edu.es)

- Gabriel García Jaubert
(alu0101240374@ull.edu.es)

- Alejandro Peraza González
(alu0101211770@ull.edu.es)

### 1. Introducción

La realización de esta práctica consiste en crear el diagrama UML correspondiente al Modelo Objeto-Relacional de Arquitectos, cuyo enunciado con los requisitos se puede consultar en la siguiente imagen. Además se deberá crear el script que permita la creación de la base de datos.

![](https://user-images.githubusercontent.com/72441071/150592299-4a4fb214-cbd1-41eb-94ee-eef50af52a3d.PNG)

### 2. Diagrama UML

El diagrama UML obtenido a partir de los requisitos especificados se muestra a continuación. 

![](https://user-images.githubusercontent.com/72441071/150592455-27e96f42-42fd-41bc-81a8-9fcc320658ba.png)

### 3. Características Objeto-Relacionales

Las características que se han utilizado para desarrollar el objeto relacional de arquitectos son las siguientes:

- Se crean seis clases. Cada una tendrá un nombre con el que distinguirlas, unos atributos que representan las propiedades de la clase, y algunas de ellas, contendrá operaciones que probarán un comportamiento específico.

- Se utiliza el estereotipo “persistent” como palabra clave para crear nuevos constructores UML.
  - “PK”: Primary Key en la tabla.
  - “AK”: Actuará como Unique en la tabla.
  - “CA”: Atributo Compuesto en la tabla.
  - “MA”: Atributo Multivaluado, siendo este caso un Array en la tabla.
  - “DA”: Atributo Derivado en la tabla. Actuará como un método o un disparador.


### 4. Capturas de la ejecución

Para la creación de la base de datos se ha creado un script. Las capturas obtenidas tras su ejecución son las siguientes: 

### 5. Capturas con las consultas


