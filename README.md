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

- Se crearán dos métodos, un método para calcular el área de las figuras y otro para calcular el perímetro de los polígonos. Habrá un atributo longitud que actuará como un método.

- Se utiliza la agregación  por colección entre “Proyecto” y “Plano”,  puesto que un proyecto está compuesto por la unión de planos.

- Se utiliza la agregación por composición (física) entre “Polígono” y “Línea”.

- Un “Polígono” es una generalización de “Figura”.


### 4. Capturas de la ejecución

Para la creación de la base de datos se ha creado un script. Las capturas obtenidas tras su ejecución son las siguientes: 

![ejecucion1](https://user-images.githubusercontent.com/72867635/150875651-83a68ab6-059d-4460-a2eb-ac3005553eea.PNG)

![ejecucion2](https://user-images.githubusercontent.com/72867635/150875662-ca9e97c9-4966-4611-864f-211e77251a0e.PNG)

### 5. Capturas con las consultas

![1](https://user-images.githubusercontent.com/72867635/150871250-8a4bd33f-c0f9-4126-a5a6-a7575029b308.PNG)

![2](https://user-images.githubusercontent.com/72867635/150871269-0934acf8-fc87-4f6a-8c46-f79e87bee41e.PNG)

![3](https://user-images.githubusercontent.com/72867635/150871291-85680f27-6279-462d-8e9f-e0d098a206cb.PNG)

![4](https://user-images.githubusercontent.com/72867635/150871306-da4fde4e-110c-4897-8faa-8ddb33074d98.PNG)

![5](https://user-images.githubusercontent.com/72867635/150871335-70f48623-6922-4bef-af4b-641b7afd4b19.PNG)

![6](https://user-images.githubusercontent.com/72867635/150871991-7849f90a-5ff4-45ac-a439-62a0ac112790.PNG)

![7](https://user-images.githubusercontent.com/72867635/150871375-3b617c1b-28d0-4d1b-9a9e-ca5a7272f2ea.PNG)

![8](https://user-images.githubusercontent.com/72867635/150871665-a8a9b8cd-39ee-4f2b-8649-989c39ca3053.PNG)

![9](https://user-images.githubusercontent.com/72867635/150871698-14e50c98-c078-49ec-8fd6-bcc65d85cd25.PNG)

