@echo off
set source=C:\Users\alumnoManana.ASIR2PC06\Documents\UwAmp_3.0.2\UwAmp\www\curso
set destination=C:\Users\alumnoManana.ASIR2PC06\Documents\Asir-2024-2025\WEB

echo Copiando archivos de %source% a %destination%
xcopy /s /y "%source%\*" "%destination%"

echo Archivos copiados y reemplazados exitosamente.
pause