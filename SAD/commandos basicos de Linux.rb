1: commandos para manejo de archivos y directorios
    cd: cambiar de directorio
    ls: listar archivos y directorios
    mkdir: crear directorios
    touch: crear archivos
    cp: copiar archivos y directorios
    mv: mover archivos y directorios
    rm: eliminar archivos y directorios
    pwd: mostrar directorio actual
    cat: mostrar contenido de un archivo
    more: mostrar contenido de un archivo por partes
    chmod: Este comando añade el permiso de ejecución para el usuario propietario del archivo archivo.txt.

    Modo numérico
    Cada permiso tiene un valor numérico:
    
    r = 4
    w = 2
    x = 1
    Estos valores se suman para establecer los permisos. Por ejemplo:
    
    7 (4+2+1) = lectura, escritura y ejecución.
    6 (4+2) = lectura y escritura.
    5 (4+1) = lectura y ejecución.

2: commandos para actualizar/instalar paquetes en Linux CLI
    sudo apt update: actualizar la lista de paquetes disponibles
    sudo apt upgrade: actualizar los paquetes instalados
    sudo apt install <nombre_paquete>: instalar un paquete específico
    sudo apt remove <nombre_paquete>: desinstalar un paquete específico
    sudo apt autoremove: eliminar paquetes no utilizados
    sudo apt search <nombre_paquete>: buscar un paquete específico

3: comandos basicos para la configuracion de red en linux cli
    ifconfig: mostrar o configurar interfaces de red
    ip addr: mostrar o configurar direcciones IP
    ping: comprobar la conectividad de red
    netstat: mostrar conexiones de red, tablas de enrutamiento, estadísticas de interfaz, etc.
    traceroute: rastrear la ruta que toma un paquete a través de la red
    nslookup: consultar servidores DNS para obtener información de dominio
    route: mostrar o modificar la tabla de enrutamiento IP
    hostname: mostrar o establecer el nombre del host del sistema
    systemctl restart network: reiniciar el servicio de red
    nmcli: herramienta de línea de comandos para controlar NetworkManager