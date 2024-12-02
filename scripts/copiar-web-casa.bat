@echo off
set source=D:\wamp64\www\curso
set destination=D:\Asir-2024-2025\WEB

echo Copiando archivos de %source% a %destination%
xcopy /s /y "%source%\*" "%destination%"

echo Archivos copiados y reemplazados exitosamente.
pause