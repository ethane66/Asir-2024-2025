@echo off

echo "estoy creando unidades organizativas"

dsrm "ou=1asir,ou=aulas,dc=valleeae,dc=local"
dsrm "ou=2asir,ou=aulas,dc=valleeae,dc=local"
dsrm "ou=1smr,ou=aulas,dc=valleeae,dc=local"
dsrm "ou=2smr,ou=aulas,dc=valleeae,dc=local"
dsrm "ou=1dam,ou=aulas,dc=valleeae,dc=local"
dsrm "ou=2dam,ou=aulas,dc=valleeae,dc=local"

dsadd ou "ou=1asir,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=2asir,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=1smr,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=2smr,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=1dam,ou=aulas,dc=valleeae,dc=local"
dsadd ou "ou=2dam,ou=aulas,dc=valleeae,dc=local"

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