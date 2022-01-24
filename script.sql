DROP TYPE IF EXISTS Tipo_Direccion;

CREATE TYPE Tipo_Direccion AS( 
Tipo_via VarChar(4),
Nombre_via VarChar(100),
Poblacion VarChar(50),
CP VarChar (4),
Provincia VarChar(50));

DROP TYPE IF EXISTS JefeProyecto;

CREATE TYPE JefeProyecto AS
( Cod_JefeProyecto Integer,
Nombre VarChar(50),
Direccion Tipo_Direccion,
Telefono VarChar(10));

DROP TYPE IF EXISTS Punto;

CREATE TYPE Punto AS (
Coord_X Integer,
Coord_Y Integer);

DROP TYPE IF EXISTS Linea;

CREATE TYPE Linea AS (
Id_Linea Integer,
Tiene_Puntos Punto ARRAY[2]);

DROP TYPE IF EXISTS Poligon;

CREATE TYPE Poligon AS (
Num_Lineas Integer,
Tiene_Lineas Linea ARRAY);

DROP TYPE IF EXISTS Figura;

CREATE TYPE  Figura AS (
Cod_Figura Integer,
Nombre VarChar(30),
Color VarChar(30));

DROP TYPE IF EXISTS Plano;
CREATE TYPE Plano AS
(CodPlano Integer,
F_Entrega Date,
Arquitectos VarChar(15)Array[10],
DibujoPlano ByteA,
Num_Figuras Integer,
Tiene_Fig Figura Array);

DROP TYPE IF EXISTS Proyecto;

CREATE TYPE Proyecto AS( 
Cod_Proyecto Integer,
Nombre VarChar(50),
Dirigido_por JefeProyecto,
Tiene_planos Plano Array);

----------------------------------------------------

DROP table IF EXISTS T_Jefe_Proyecto;

CREATE TABLE T_Jefe_Proyecto OF JefeProyecto(
PRIMARY KEY (Cod_JefeProyecto),
UNIQUE (Nombre));

DROP table IF EXISTS T_Proyecto;

CREATE TABLE T_Proyecto OF Proyecto(
PRIMARY KEY (Cod_Proyecto), 
UNIQUE (Dirigido_por),
Dirigido_por NOT NULL);

DROP table IF EXISTS T_Figura;

CREATE TABLE T_Figura OF Figura (
PRIMARY KEY (Cod_Figura));

DROP table IF EXISTS T_Poligono;

CREATE TABLE T_Poligono (
  Num_Lineas Integer, 
  Tiene_lineas Linea ARRAY) 
INHERITS(T_Figura);

DROP table IF EXISTS T_Linea;

CREATE TABLE T_Linea OF Linea(
PRIMARY KEY (Id_Linea));

DROP table IF EXISTS T_Plano;

CREATE TABLE T_Plano OF Plano(
PRIMARY KEY (CodPlano));

CREATE OR REPLACE FUNCTION longitud(input linea) RETURNS float AS $$
DECLARE x_distance float := input.tiene_puntos[1].Coord_X - input.tiene_puntos[2].Coord_X;
  y_distance float := input.tiene_puntos[1].Coord_Y - input.tiene_puntos[2].Coord_Y;
BEGIN 
  RETURN SQRT(POWER(x_distance, 2) + POWER(y_distance, 2));
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION perimetro(poligono_ poligon) RETURNS float AS $$
DECLARE count float := 0.0;
BEGIN
  FOR i IN 1..poligono_.Num_Lineas LOOP
    count = count + longitud(poligono_.Tiene_lineas[i]);
  END LOOP;
  RETURN count;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION area(poligono_ poligon) RETURNS float AS $$
BEGIN
  -- We would need to calculate the apothem to calculate the area of a regular polygon
END;
$$ LANGUAGE plpgsql;

-----------------------------------------------------------------------------------------

INSERT INTO T_LINEA VALUES (1, ARRAY[(1,2), (3,4)]::PUNTO[]);
INSERT INTO T_LINEA VALUES (2, ARRAY[(5,1), (8,2)]::PUNTO[]);

INSERT INTO T_FIGURA VALUES (1, 'triangulo', 'rojo');
INSERT INTO T_FIGURA VALUES (2, 'cuadrado', 'verde');

INSERT INTO T_PLANO VALUES (1, '2022-01-26', ARRAY[('pepe'), ('juan')], E'\\101', 2, ARRAY[(1, 'triangulo', 'rojo'), (2, 'cuadrado', 'verde')]::FIGURA[]);

INSERT INTO T_JEFE_PROYECTO VALUES (1, 'Pepito', ROW('calle', 'marfil', 'tejina', '38260', 'SC de Tenerife')::TIPO_DIRECCION, '1234567890');

INSERT INTO T_PROYECTO VALUES(1, 'Proyecto_A', ROW(1, 'Proyecto_A', ROW('calle', 'marfil', 'tejina', '38260', 'SC de Tenerife')::TIPO_DIRECCION, '1234567890')::JEFEPROYECTO, ARRAY[(1, '2022-01-26', ARRAY[('pepe'), ('juan')], E'\\101', 2, ARRAY[(1, 'triangulo', 'rojo'), (2, 'cuadrado', 'verde')]::FIGURA[])]::PLANO[]);

INSERT INTO T_POLIGONO VALUES (3, 'cuadrado', 'azul', 4, ARRAY[(1, ARRAY[(1, 1), (1, 2)]::punto[]), (2, ARRAY[(1, 2), (2, 2)]::punto[]), (3, ARRAY[(2, 1), (2, 2)]::punto[]), (4, ARRAY[(1, 1), (2, 1)]::punto[])]::linea[]);
