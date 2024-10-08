@echo off
echo "borrando las ou"
dsrm "ou=profesores,dc=valleeae,dc=local"
dsrm "ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=asir,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=dam,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsrm "ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=asir,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=dam,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=asir,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"
dsrm "ou=dam,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"

echo "estoy creando unidades organizativas"


echo "creando ou profesores"

dsadd ou "ou=profesores,dc=valleeae,dc=local"

echo "creando ou equiposaulas"

dsadd ou "ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=asir,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=dam,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd ou "ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"

echo "creando ou alumnosaulas"

dsadd ou "ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=asir,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=dam,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=asir,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"
dsadd ou "ou=dam,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local"


echo "Añadiendo los equipos a las ou equiposaulas"

echo "Añadiendo los equipos de primero"

dsadd computer "cn=asireq1,ou=asir,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=asireq2,ou=asir,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=dameq1,ou=dam,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=dameq2,ou=dam,ou=primero,ou=equiposaulas,dc=valleeae,dc=local"

echo "Añadiendo los equipos de segundo"

dsadd computer "cn=2asireq1,ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=2asireq2,ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=2dameq1,ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=2dameq2,ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"


echo "estoy creando los usuarios"

echo "creando usuarios en profesores"

dsadd user "cn=Ana Herrero,ou=profesores,dc=valleeae,dc=local" -pwd P@ssw0rd
dsadd user "cn=Nico,ou=profesores,dc=valleeae,dc=local" -pwd P@ssw0rd
dsadd user "cn=Carmen Navarro,ou=profesores,dc=valleeae,dc=local" -pwd P@ssw0rd

echo "creando usuarios en aulas"

for /f "tokens=1,2,3,4,5,6,7 delims=; usebackq" %%a in (`type listanombres.txt`) do (
if "%%a"=="C1ASIR" (
echo Creando usuario %%e %%c %%d en ou 1asir
dsadd user "cn=%%e %%c %%d,ou=asir,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local" -pwd %%g
)
if "%%a"=="C2ASIR" (
echo Creando usuario %%e %%c %%d en ou 2asir
dsadd user "cn=%%e %%c %%d,ou=asir,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local" -pwd %%g
)
if "%%a"=="C1DAM" (
echo Creando usuario %%e %%c %%d en ou 1dam
dsadd user "cn=%%e %%c %%d,ou=dam,ou=primero,ou=alumnosaulas,dc=valleeae,dc=local" -pwd %%g
)
if "%%a"=="C2DAM" (
echo Creando usuario %%e %%c %%d en ou 2dam
dsadd user "cn=%%e %%c %%d,ou=dam,ou=segundo,ou=alumnosaulas,dc=valleeae,dc=local" -pwd %%g
)
)
