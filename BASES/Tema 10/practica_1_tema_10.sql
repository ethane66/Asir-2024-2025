1. Conectarse localmente con el usuario invitado
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe 
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: NO)

2. Comprobar el usuario con el que has entrado al servidor y desconectarte del servidor.

select user(), current_user();

3. Conectarse localmente con el usuario "root" de varias formas:

a) Forma larga sin incluir la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe --user=root

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> exit
Bye

b) Forma larga incluyendo la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe --user=root --password
Enter password:

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> exit
Bye

c) Forma corta sin incluir la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe -u root

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> exit
Bye

d) Forma corta incluyendo la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe -u root -p
Enter password: 

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> exit
Bye

e) Otra forma corta sin incluir la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe -uroot

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> exit
Bye

f) Otra forma corta incluyendo la opción de contraseña
PS H:\UwAmp\bin\database\mysql-5.7.11\bin> .\mysql.exe -uroot -p
Enter password:               

mysql> select user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)