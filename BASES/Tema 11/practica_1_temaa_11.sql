1. Arranca el servidor MySQL en el panel de wamp. A continuación desde una consola de MSDOS conéctate como usuario “root” y comprueba que has entrado como usuario “root”.

.\mysql.exe --user root

2. Crea una BBDD llamada “mi_club”. Dentro de la BBDD “mi_club”, crea dos tablas:
“cuotas” y “socios”. La estructura y los datos de cada una de las tablas son:

mysql> source D:\Asir-2024-2025\BASES\Tema 11\script_ejercicio_2.sql
Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 1 row affected (0.05 sec)

Database changed
Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.06 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.06 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>

5: Si porque el script compruba que la base de datos existe y si existe la borra y crea la estructura de nuevo con sus datos