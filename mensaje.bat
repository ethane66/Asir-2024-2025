@echo off
for /f %%i in (equipos.txt) do (
    msg * /server:%%i "hOLA Q TAL"
)
