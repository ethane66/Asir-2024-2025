#!/bin/bash

# Función para ejecutar el script de Windows
function execute_windows_script() {
  echo "Ejecutando el script de copia en Windows..."
  source_path="C:\\Users\\alumnoManana.ASIR2PC06\\Documents\\UwAmp_3.0.2\\UwAmp\\www\\curso"
  destination_path="C:\\Users\\alumnoManana.ASIR2PC06\\Documents\\Asir-2024-2025\\WEB"
  echo "Copiando archivos de $source_path a $destination_path"
  cmd.exe /c "xcopy /s /y \"$source_path\\*\" \"$destination_path\""
  echo "Archivos copiados y reemplazados exitosamente."
  read -p "Presione Enter para continuar..."
}

# Funciones del script de Git
function commit_and_push() {
  git add .
  read -p "Ingrese el mensaje de commit: " commit_message
  git commit -m "$commit_message"
  git push
  echo "Commit y push realizados correctamente."
}

function push_and_shutdown() {
  git add .
  read -p "Ingrese el mensaje de commit: " commit_message
  git commit -m "$commit_message"
  git push
  echo "Commit y push realizados correctamente."
  read -p "Ingrese el tiempo de espera en segundos antes de apagar (0 para cancelar): " wait_time
  if [[ $wait_time -gt 0 ]]; then
    echo "Apagando en $wait_time segundos..."
    sleep $wait_time
    shutdown -s -t 0
  fi
}

# Menú principal
while true; do
  clear
  echo "=== Menú Mega Script ==="
  echo "1. Ejecutar script de copia (Windows)"
  echo "2. Commit y push (Git)"
  echo "3. Push y apagar (Git)"
  echo "4. Salir"
  read -p "Seleccione una opción: " option

  case $option in
    1)
      if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        execute_windows_script
      else
        echo "Esta opción solo está disponible en sistemas Windows."
      fi
      ;;
    2)
      commit_and_push
      ;;
    3)
      push_and_shutdown
      ;;
    4)
      echo "Saliendo..."
      break
      ;;
    *)
      echo "Opción inválida. Intente de nuevo."
      ;;
  esac
done
