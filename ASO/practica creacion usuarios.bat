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

dsadd computer "cn=asireq1,ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=asireq2,ou=asir,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=dameq1,ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"
dsadd computer "cn=dameq2,ou=dam,ou=segundo,ou=equiposaulas,dc=valleeae,dc=local"


echo "estoy creando los usuarios"

for /f "tokens=1,2,3,4 delims=; usebackq" %%i in (`type alumnos.txt`) do (
if "%%l"=="1asir" (
echo Creando usuario %%i %%j en ou 1asir
dsadd user "cn=%%i %%j,ou=1asir,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
if "%%l"=="2asir" (
echo Creando usuario %%i %%j en ou 2asir
dsadd user "cn=%%i %%j,ou=2asir,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
if "%%l"=="1smr" (
echo Creando usuario %%i %%j en ou 1smr
dsadd user "cn=%%i %%j,ou=1smr,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
if "%%l"=="2smr" (
echo Creando usuario %%i %%j en ou 2smr
dsadd user "cn=%%i %%j,ou=2smr,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
if "%%l"=="1dam" (
echo Creando usuario %%i %%j en ou 1dam
dsadd user "cn=%%i %%j,ou=1dam,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
if "%%l"=="2dam" (
echo Creando usuario %%i %%j en ou 2dam
dsadd user "cn=%%i %%j,ou=2dam,ou=aulas,dc=valleeae,dc=local" -pwd %%k
)
)



