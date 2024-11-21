2. Conectarse localmente con el usuario "root" y a la vez lanzar el script "archivo_batch.sql" 
desde el cliente en modo consola mysql. ¿Es posible? Si has contestado que no explica por 
qué

H:\UwAmp\bin\database\mysql-5.7.11\bin>mysql -uroot -p < script/archivo_batch.sql
Enter password:
DEP_NO  DNOMBRE LOCALIDAD
10      CONTABILIDAD    BARCELONA
20      INVESTIGACION   VALENCIA
30      VENTAS  MADRID
40      PRODUCCION      SEVILLA

3. Conectarse localmente con el usuario "root" y a la vez lanzar el script "archivo_batch.sql" 
desde   el   cliente   en   modo   consola   mysql   y   guardar   la   salida   en   el   fichero 
"C:\salida_script_ejer3.txt". ¿Es posible? Si has contestado que no explica por qué

H:\UwAmp\bin\database\mysql-5.7.11\bin>mysql -uroot -p < script/archivo_batch.sql > script/salida_ejer3.txt
/archivo/ 
DEP_NO	DNOMBRE	LOCALIDAD
10	CONTABILIDAD	BARCELONA
20	INVESTIGACION	VALENCIA
30	VENTAS	MADRID
40	PRODUCCION	SEVILLA

5. Conectarse   localmente   con   el   usuario   "root"   y   a   la   vezlanzar   el   script 
"archivo_batch_con_error.sql" desde el cliente en modo consola mysql. ¿Es posible? Si has 
contestado que no explica por qué.

H:\UwAmp\bin\database\mysql-5.7.11\bin>mysql -uroot -p < script/archivo_batch_con_error.sql
Enter password:
ERROR 1064 (42000) at line 2: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DE departamentos' at line 1

6. ¿Es posible lanzar el script "archivo_batch_con_error.sql"desde el cliente en modo consola 
mysql sin que se para la ejecución del script? Si es posible indica el comando completo.

H:\UwAmp\bin\database\mysql-5.7.11\bin>mysql -force -uroot -p < script/archivo_batch_con_error.sql