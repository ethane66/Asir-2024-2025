1. Crear una vista llamada VISTA_EMPLEADOS que guarde los empleados cuyo apellido
empieza por 'MA' y su sueldo esté comprendido entre 1000 y 1500 euros. La vista debe
incluir los siguientes campos de la tabla empleados: EMP_NO, APELLIDO, OFICIO,
SALARIO y DEP_NO.

create view VISTA_EMPLEADOS as 
select emp_no,apellido,oficio,salario,dep_no from empleados where apellido like 'MA%' and salario between 1000 and 1500;

2: ¿Cual es el resultado de esta sentencia?

+--------+----------+----------+---------+--------+
| emp_no | apellido | oficio   | salario | dep_no |
+--------+----------+----------+---------+--------+
|   7654 | MARTIN   | VENDEDOR | 1500.00 |     30 |
+--------+----------+----------+---------+--------+

3. Crear una vista llamada EMPLEADOS_TODOS que almacene los campos EMP_NO,
APELLIDO y OFICIO de la tabla EMPLEADOS y los campos DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS. Ordenada alfabeticamente por APELLIDO.

create view EMPLEADOS_TODOS as 
select e.emp_no,e.apellido,e.oficio,d.dnombre,d.localidad from empleados e, departamentos d
where e.dep_no = d.dep_no
order by apellido;

¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_TODOS?

+--------+----------+------------+---------------+-----------+
| emp_no | apellido | oficio     | dnombre       | localidad |
+--------+----------+------------+---------------+-----------+
|   7499 | ALONSO   | VENDEDOR   | VENTAS        | MADRID    |
|   7844 | CALVO    | VENDEDOR   | VENTAS        | MADRID    |
|   7698 | GARRIDO  | DIRECTOR   | VENTAS        | MADRID    |
|   7876 | GIL      | ANALISTA   | INVESTIGACION | VALENCIA  |
|   7900 | JIMENEZ  | EMPLEADO   | INVESTIGACION | VALENCIA  |
|   7521 | LOPEZ    | EMPLEADO   | CONTABILIDAD  | BARCELONA |
|   7654 | MARTIN   | VENDEDOR   | VENTAS        | MADRID    |
|   7782 | MARTINEZ | DIRECTOR   | CONTABILIDAD  | BARCELONA |
|   7839 | REY      | PRESIDENTE | CONTABILIDAD  | BARCELONA |
+--------+----------+------------+---------------+-----------+

5. Crear una vista llamada EMPLEADOS_MADRID que almacene los campos EMP_NO,
APELLIDO y OFICIO de la tabla EMPLEADOS y los campos DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS, únicamente de aquellos empleados que son
de MADRID. Ordenada alfabeticamente por APELLIDO.

create view empleados_madrid as
select e.emp_no,e.apellido,e.oficio,d.dnombre,d.localidad from empleados e, departamentos d
where e.dep_no = d.dep_no and localidad like 'MADRID';

6. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_MADRID?

+--------+----------+----------+---------+-----------+
| emp_no | apellido | oficio   | dnombre | localidad |
+--------+----------+----------+---------+-----------+
|   7499 | ALONSO   | VENDEDOR | VENTAS  | MADRID    |
|   7654 | MARTIN   | VENDEDOR | VENTAS  | MADRID    |
|   7698 | GARRIDO  | DIRECTOR | VENTAS  | MADRID    |
|   7844 | CALVO    | VENDEDOR | VENTAS  | MADRID    |
+--------+----------+----------+---------+-----------+

9. Borra de la tabla EMPLEADOS a todos aquellos empleados cuyo oficio sea vendedor,
empleado o analista. Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te
hayas asegurado que la operación que deseas realizar es correcta, debes ejecutar el comando
COMMIT y activar de nuevo el COMMIT.

set autocommit = 0;

delete from empleados 
where oficio in ('vendedor','empleado','analista');

commit;

10. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_TODOS? Coincide el resultado de este ejercicio con el resultado del
ejercicio 4. Si has contestado que no, explica por qué.

+--------+----------+------------+--------------+-----------+
| emp_no | apellido | oficio     | dnombre      | localidad |
+--------+----------+------------+--------------+-----------+
|   7698 | GARRIDO  | DIRECTOR   | VENTAS       | MADRID    |
|   7782 | MARTINEZ | DIRECTOR   | CONTABILIDAD | BARCELONA |
|   7839 | REY      | PRESIDENTE | CONTABILIDAD | BARCELONA |
+--------+----------+------------+--------------+-----------+

No es igual ya que se han borrado oficios

11. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_MADRID? Coincide el resultado de este ejercicio con el resultado del
ejercicio 6. Si has contestado que no, explica por qué.

+--------+----------+----------+---------+-----------+
| emp_no | apellido | oficio   | dnombre | localidad |
+--------+----------+----------+---------+-----------+
|   7698 | GARRIDO  | DIRECTOR | VENTAS  | MADRID    |
+--------+----------+----------+---------+-----------+

No es igual ua que se han borrado oficios.

13. Crear una vista llamada EMPLEADOS_NO_DEP_20_40 que almacene todos los campos de
la tabla EMPLEADOS y los campos DNOMBRE y LOCALIDAD de la tabla
DEPARTAMENTOS, únicamente de aquellos empleados que no pertenezcan al
departamento 20 ni 40. Ordenada descendentemente por SALARIO.

create view empleados_no_dep_20_40 as 
select e.*,d.dnombre,d.localidad from empleados e, departamentos d
where e.dep_no = d.dep_no and e.dep_no not in (20,40)
order by salario desc;

14. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40?

+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
| EMP_NO | APELLIDO | OFICIO     | DIRECTOR | FECHA_ALTA | SALARIO | COMISION | DEP_NO | dnombre      | localidad |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
|   7839 | REY      | PRESIDENTE |     NULL | 1981-11-17 | 6000.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7698 | GARRIDO  | DIRECTOR   |     7839 | 1981-05-01 | 3850.12 |     NULL |     30 | VENTAS       | MADRID    |
|   7782 | MARTINEZ | DIRECTOR   |     7839 | 1981-06-09 | 2450.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7844 | CALVO    | VENDEDOR   |     7698 | 1981-09-08 | 1800.00 |     0.00 |     30 | VENTAS       | MADRID    |
|   7654 | MARTIN   | VENDEDOR   |     7698 | 1981-09-28 | 1500.00 |  1600.00 |     30 | VENTAS       | MADRID    |
|   7499 | ALONSO   | VENDEDOR   |     7698 | 1981-02-23 | 1400.00 |   400.00 |     30 | VENTAS       | MADRID    |
|   7521 | LOPEZ    | EMPLEADO   |     7782 | 1981-05-08 | 1350.50 |     NULL |     10 | CONTABILIDAD | BARCELONA |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+

15. Inserta un registro en la tabla EMPLEADOS y otro en la tabla DEPARTAMENTOS.
Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te hayas asegurado que la
operación que deseas realizar es correcta, debes ejecutar el comando COMMIT y activar de
nuevo el COMMIT. Los datos a insertar en cada una de las tablas son:

insert into departamentos (dep_no,dnombre,localidad)
values (50,'informatica','madrid');

insert into empleados (emp_no,apellido,oficio,director,fecha_alta,salario,comision,dep_no)
values (7922,'casa','analista',7782,'2015-11-18',2600,null,50);

16. Incrementa en 100 euros el salario de todos los empleados cuyo salario es inferior a 1500
euros. Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te hayas asegurado
que la operación que deseas realizar es correcta, debes ejecutar el comando COMMIT y
activar de nuevo el COMMIT. 

update empleados
set salario = salario + 100
where salario < 1500;

17. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40? Coincide el resultado de este ejercicio con el resultado
del ejercicio 14. Si has contestado que no, explica por qué.

+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
| EMP_NO | APELLIDO | OFICIO     | DIRECTOR | FECHA_ALTA | SALARIO | COMISION | DEP_NO | dnombre      | localidad |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
|   7839 | REY      | PRESIDENTE |     NULL | 1981-11-17 | 6000.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7698 | GARRIDO  | DIRECTOR   |     7839 | 1981-05-01 | 3850.12 |     NULL |     30 | VENTAS       | MADRID    |
|   7922 | casa     | analista   |     7782 | 2015-11-18 | 2600.00 |     NULL |     50 | informatica  | madrid    |
|   7782 | MARTINEZ | DIRECTOR   |     7839 | 1981-06-09 | 2450.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7844 | CALVO    | VENDEDOR   |     7698 | 1981-09-08 | 1800.00 |     0.00 |     30 | VENTAS       | MADRID    |
|   7499 | ALONSO   | VENDEDOR   |     7698 | 1981-02-23 | 1500.00 |   400.00 |     30 | VENTAS       | MADRID    |
|   7654 | MARTIN   | VENDEDOR   |     7698 | 1981-09-28 | 1500.00 |  1600.00 |     30 | VENTAS       | MADRID    |
|   7521 | LOPEZ    | EMPLEADO   |     7782 | 1981-05-08 | 1450.50 |     NULL |     10 | CONTABILIDAD | BARCELONA |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+

No son los mismos resultados porque la vista se actualiza automaticamente, añadimos un empleado del departamento 50 y los salarios de menos de 1500 antes sumaron 100 euros.


18. Borra de forma permanente la tabla EMPLEADOS. ¿Es posible? Si has constestado que no
explica por qué y borra otra u otras tablas (las mínimas posibles), si es neceario, hasta que
consigas borrar de forma permanente la tabla EMPLEADOS. No debes borrar ninguna vista.

drop table empleados; -- No se puede porque tiene referencia de FK a clientes
drop table clientes; -- No se puede porque tiene referencia de FK a pedidos
drop table pedidos;

19. Después de realizar el ejercicio 18 muestra las tablas de la Base de Datos (BD) “curso”, a través del comando SQL correspondiente. Escribe el nombre de cada una de las tablas que han quedado en la BD “curso”.

show tables;
+------------------------+
| Tables_in_curso        |
+------------------------+
| departamentos          |
| empleados_no_dep_20_40 |
| productos              |
+------------------------+

20. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40? Coincide el resultado de este ejercicio con el resultado
del ejercicio 17. Si has contestado que no, explica por qué.

No porque al borrar las tablas la vista no puede encontrar las columnas que mostrar.

21. Borra de forma permanente la vista  EMPLEADOS_NO_DEP_20_40. ¿Es posible? Si has constestado que no explica por qué.

drop view empleados_no_dep_20_40;

Query OK, 0 rows affected (0.06 sec)