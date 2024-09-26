echo "creando las unidades organizativas"

dsadd ou "ou=2SMR,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=1SMR,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=2DAM,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=1DAM,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=2ASIR,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=1ASIR,ou=aulas,dc=valleeae,dc=local"

echo "Creando a los usuarios"

for /f 