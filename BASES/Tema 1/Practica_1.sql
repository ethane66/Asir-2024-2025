1. Crear una vista llamada VISTA_EMPLEADOS que guarde los empleados cuyo apellido
empieza por 'MA' y su sueldo esté comprendido entre 1000 y 1500 euros. La vista debe
incluir los siguientes campos de la tabla empleados: EMP_NO, APELLIDO, OFICIO,
SALARIO y DEP_NO.

create view VISTA_EMPLEADOS as
    select emp_no, apellido, oficio, dep_no from empleados where apellido like "ma%" 
    and salario between 1000 and 1500;



¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
VISTA_EMPLEADOS?

+--------+----------+----------+--------+
| emp_no | apellido | oficio   | dep_no |
+--------+----------+----------+--------+
|   7654 | MARTIN   | VENDEDOR |     30 |
+--------+----------+----------+--------+

3. Crear una vista llamada EMPLEADOS_TODOS que almacene los campos EMP_NO,
APELLIDO y OFICIO de la tabla EMPLEADOS y los campos DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS. Ordenada alfabeticamente por APELLIDO.

create view EMPLEADOS_TODOS as
    select e.emp_no, e.apellido, e.oficio, d.dnombre, d.localidad from empleados e, departamentos d 
    where e.dep_no = d.dep_no;


4. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_TODOS?

+--------+----------+------------+---------------+-----------+
| emp_no | apellido | oficio     | dnombre       | localidad |
+--------+----------+------------+---------------+-----------+
|   7521 | LOPEZ    | EMPLEADO   | CONTABILIDAD  | BARCELONA |
|   7782 | MARTINEZ | DIRECTOR   | CONTABILIDAD  | BARCELONA |
|   7839 | REY      | PRESIDENTE | CONTABILIDAD  | BARCELONA |
|   7876 | GIL      | ANALISTA   | INVESTIGACION | VALENCIA  |
|   7900 | JIMENEZ  | EMPLEADO   | INVESTIGACION | VALENCIA  |
|   7499 | ALONSO   | VENDEDOR   | VENTAS        | MADRID    |
|   7654 | MARTIN   | VENDEDOR   | VENTAS        | MADRID    |
|   7698 | GARRIDO  | DIRECTOR   | VENTAS        | MADRID    |
|   7844 | CALVO    | VENDEDOR   | VENTAS        | MADRID    |
+--------+----------+------------+---------------+-----------+

5. Crear una vista llamada EMPLEADOS_MADRID que almacene los campos EMP_NO,
APELLIDO y OFICIO de la tabla EMPLEADOS y los campos DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS, únicamente de aquellos empleados que son
de MADRID. Ordenada alfabeticamente por APELLIDO.

create view empleados_madrid as
    select e.emp_no, e.apellido, e.oficio, d.dnombre, d.localidad from empleados e, departamentos d 
    where e.dep_no = d.dep_no and d.localidad = "madrid";

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

7. Crear una vista llamada EMPLEADOS_TODOS_NULL que almacene los campos
EMP_NO, APELLIDO y OFICIO de la tabla EMPLEADOS y los campos DNOMBRE y
LOCALIDAD de la tabla DEPARTAMENTOS. Incluyendo los departamentos que no tienen
ningún empleado. Ordenada alfabeticamente por APELLIDO.



8. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_TODOS_NULL?



9. Borra de la tabla EMPLEADOS a todos aquellos empleados cuyo oficio sea vendedor,
empleado o analista. Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te
hayas asegurado que la operación que deseas realizar es correcta, debes ejecutar el comando
COMMIT y activar de nuevo el COMMIT.

delete from empleados where oficio in ('vendedor','empleado','analista');

10. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_TODOS? Coincide el resultado de este ejercicio con el resultado del
ejercicio 4. Si has contestado que no, explica por qué.

No, porque se han borrado datos y las vistas se actualizan con los cambios de datos

11. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_MADRID? Coincide el resultado de este ejercicio con el resultado del
ejercicio 6. Si has contestado que no, explica por qué.

No, porque los datos que se han borrado se ven reflejado en las vistas.

12. Lanzar el script “cargartablas.sql” desde mysql>


13. Crear una vista llamada EMPLEADOS_NO_DEP_20_40 que almacene todos los campos de
la tabla EMPLEADOS y los campos DNOMBRE y LOCALIDAD de la tabla
DEPARTAMENTOS, únicamente de aquellos empleados que no pertenezcan al
departamento 20 ni 40. Ordenada descendentemente por SALARIO.

create view empleados_no_dep_20_40 as
    select e.*,d.dnombre,d.localidad from empleados e, departamentos d 
    where e.dep_no = d.dep_no and e.dep_no not in ('20','40');


14. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40?

+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
| EMP_NO | APELLIDO | OFICIO     | DIRECTOR | FECHA_ALTA | SALARIO | COMISION | DEP_NO | dnombre      | localidad |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+
|   7499 | ALONSO   | VENDEDOR   |     7698 | 1981-02-23 | 1400.00 |   400.00 |     30 | VENTAS       | MADRID    |
|   7521 | LOPEZ    | EMPLEADO   |     7782 | 1981-05-08 | 1350.50 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7654 | MARTIN   | VENDEDOR   |     7698 | 1981-09-28 | 1500.00 |  1600.00 |     30 | VENTAS       | MADRID    |
|   7698 | GARRIDO  | DIRECTOR   |     7839 | 1981-05-01 | 3850.12 |     NULL |     30 | VENTAS       | MADRID    |
|   7782 | MARTINEZ | DIRECTOR   |     7839 | 1981-06-09 | 2450.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7839 | REY      | PRESIDENTE |     NULL | 1981-11-17 | 6000.00 |     NULL |     10 | CONTABILIDAD | BARCELONA |
|   7844 | CALVO    | VENDEDOR   |     7698 | 1981-09-08 | 1800.00 |     0.00 |     30 | VENTAS       | MADRID    |
+--------+----------+------------+----------+------------+---------+----------+--------+--------------+-----------+

15. Inserta un registro en la tabla EMPLEADOS y otro en la tabla DEPARTAMENTOS.
Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te hayas asegurado que la
operación que deseas realizar es correcta, debes ejecutar el comando COMMIT y activar de
nuevo el COMMIT. Los datos a insertar en cada una de las tablas son:

insert into empleados (emp_no, apellido, oficio, director, fecha_alta, salario, comision, dep_no)
values (7922, 'casa', 'analista', 7782, '2015-11-18', 2600, NULL, 50);

insert into departamentos (dep_no, dnombre, localidad)
values (50, 'informatica', 'madrid');

16. Incrementa en 100 euros el salario de todos los empleados cuyo salario es inferior a 1500
euros. Obligatoriamente debes trabajar a prueba de fallos, y cuando ya te hayas asegurado
que la operación que deseas realizar es correcta, debes ejecutar el comando COMMIT y
activar de nuevo el COMMIT

update empleados
set salario = salario + 100
where salario < 1500;

17. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40? Coincide el resultado de este ejercicio con el resultado
del ejercicio 14. Si has contestado que no, explica por qué.

No, porque se han realizado inserciones y actualizaciones en la tabla EMPLEADOS, lo que ha cambiado los datos reflejados en la vista.

18. Borra de forma permanente la tabla EMPLEADOS. ¿Es posible? Si has constestado que no
explica por qué y borra otra u otras tablas (las mínimas posibles), si es neceario, hasta que
consigas borrar de forma permanente la tabla EMPLEADOS. No debes borrar ninguna vista.

drop table empleados;
drop table clientes;
drop table pedidos;

No, porque toene una clave foranea en clientes pero para borrar clientes hay que borrar pedidos, pedidos se puede borrar siguientes
problemas, de ahi borras clientes y por ultimo empleados.

19. Después de realizar el ejercicio 18 muestra las tablas de la Base de Datos (BD) “curso”, a
través del comando SQL correspondiente. Escribe el nombre de cada una de las tablas que
han quedado en la BD “curso”.

+------------------------+
| Tables_in_curso        |
+------------------------+
| departamentos          |
| empleados_madrid       |
| empleados_no_dep_20_40 |
| empleados_todos        |
| productos              |
| vista_empleados        |
+------------------------+

20. ¿Cuál es el resultado de la ejecución de esta sentencia SELECT * FROM
EMPLEADOS_NO_DEP_20_40? Coincide el resultado de este ejercicio con el resultado
del ejercicio 17. Si has contestado que no, explica por qué.

No, porque se han borrado las tablas que hacen referencia a esta vista.

21. Borra de forma permanente la vista EMPLEADOS_NO_DEP_20_40. ¿Es posible? Si has
constestado que no explica por qué.

drop view empleados_no_dep_20_40;

Si se puede