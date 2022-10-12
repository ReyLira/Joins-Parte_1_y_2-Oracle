--borrar tablas existentes
drop table CLIENTES;
drop table PROVINCIAS;

--crear nuevas tablas
 create table CLIENTES (
  CODIGO number(5),
  NOMCLI varchar2(30),
  DOMCLI varchar2(30),
  CIUCLI varchar2(20),
  CODPROV number(3)
 );

 create table PROVINCIAS(
  CODIGO number(3),
  NOMPROV varchar2(20)
 );

 --configurar restricciones
  alter table CLIENTES
  add constraints UQ_clientes_codigo
  unique (CODIGO);

  alter table PROVINCIAS
  add constraints UQ_provincias_codigo
  unique (CODIGO);

  --insertar registros
 insert into PROVINCIAS values(1,'Surco');
 insert into PROVINCIAS values(2,'San Mar�a');
 insert into PROVINCIAS values(3,'Miraflores');
 insert into PROVINCIAS values(4,'Santa Agust�n');
 insert into PROVINCIAS values(null,'Villa Mar�a');
 insert into PROVINCIAS values(null,'Santa Rosa');

 insert into CLIENTES values (100,'Lopez Marcos','Colon 111','Surco',1);
 insert into CLIENTES values (200,'Perez Ana','San Martin 222','Miraflores',1);
 insert into CLIENTES values (300,'Garcia Juan','Av Brasil 333','Villa Maria',null);
 insert into CLIENTES values (400,'Perez Luis','Sarmiento 444','San Agust�n',2);
 insert into CLIENTES values (500,'Gomez Ines','San Martin 666','Santa Mar�a',2);
 insert into CLIENTES values (600,'Torres Fabiola','Alem 777','Oggins',5);
 insert into CLIENTES values (700,'Garcia Luis','Sucre 475','Santa Rosa',null);
 
 
 
 SELECT * FROM CLIENTES;
 SELECT * FROM PROVINCIAS;
 
 
 --Nonequijoin

 --<
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 INNER JOIN PROVINCIAS P
 ON C.CODPROV < P.CODIGO;
 
 -->
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 INNER JOIN PROVINCIAS P
 ON C.CODPROV > P.CODIGO;
 
-- <=
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 INNER JOIN PROVINCIAS P
 ON C.CODPROV <= P.CODIGO;
 
-- >=
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 INNER JOIN PROVINCIAS P
 ON C.CODPROV >= P.CODIGO;
 
 
 --Left Outer Join sin el metodo
 SELECT * FROM  CLIENTES,PROVINCIAS
 WHERE CLIENTES.CODPROV = PROVINCIAS.CODIGO(+);
 
 
 --Right Outer Join sin el metodo 
  SELECT * FROM  CLIENTES,PROVINCIAS
 WHERE CLIENTES.CODPROV(+) = PROVINCIAS.CODIGO;

 
 -- Left Outer Join 
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 LEFT JOIN PROVINCIAS P
 ON C.CODPROV = P.CODIGO;
 
SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM PROVINCIAS P
 LEFT JOIN CLIENTES C
 ON C.CODPROV = P.CODIGO;
 
  
 -- Right Outer Join 
SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM CLIENTES C
 RIGHT JOIN PROVINCIAS P
 ON C.CODPROV= P.CODIGO;
 
SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM PROVINCIAS P
 RIGHT OUTER JOIN CLIENTES C
 ON C.CODPROV = P.CODIGO;
 
 
 --Full Outer Join
 
 SELECT 
 C.NOMCLI AS CLIENTE ,
 C.DOMCLI AS DOMICILIO, 
 C.CIUCLI AS CIUDAD, 
 P.NOMPROV AS PROVINCIAS
 FROM PROVINCIAS P
 FULL OUTER JOIN CLIENTES C
 ON C.CODPROV = P.CODIGO;
 
 
 
 
 
 
 
 
 
 
 
 