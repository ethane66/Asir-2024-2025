#!/bin/bash

# Definir directorios de destino
BASE_DIR=$(pwd)
DIR_BASICOS="$BASE_DIR/scripts_basicos"
DIR_USUARIOS="$BASE_DIR/gestion_usuarios"
DIR_FICHEROS="$BASE_DIR/gestion_ficheros"
DIR_ENTREGA="$BASE_DIR/entrega"
DIR_OTROS="$BASE_DIR/otros"

# Crear carpetas si no existen
mkdir -p "$DIR_BASICOS" "$DIR_USUARIOS" "$DIR_FICHEROS" "$DIR_ENTREGA" "$DIR_OTROS"

# Mover archivos según su función
mv convierteEjecutable.sh creaCarpetayFichero*.sh desplazamiento.sh parametros*.sh saludo.txt introduceNumero.sh notaDe1A10.sh muestraFechaHoraUsuarioYDirectorio.sh esPar.sh esCapicua.sh horoscopoChino.sh parOImpar*.sh bucleAcumulador.sh 9multiplicar.sh zzz_segundo.sh carpetaActualYUsuario.sh "$DIR_BASICOS" 2>/dev/null

mv buscaUsuario*.sh compruebaPalabra.sh carpetaActualYUsuarioConTabulador*.sh 10compruebaManolo.sh 11compruebaUsuario.sh examen.sh "$DIR_USUARIOS" 2>/dev/null

mv buscarCarpetas.sh buscarHome.sh buscarScript.sh 7buscarCarpetas.sh 8compruebaFichero.sh 9multiplicar.txt 2esCapicua.sh 3pregunta.sh 5calendario.sh 6buscarRaiz.sh menuOpciones*.sh fichero.txt "$DIR_FICHEROS" 2>/dev/null

mv EJEMPLOS\ SIMPLES\ 2025.docx 1suma.sh menuOpciones.sh menuOpciones2.sh fichero.txt examen.sh "$DIR_ENTREGA" 2>/dev/null

# Mover archivos que no encajen en las otras categorías
mv *.* "$DIR_OTROS" 2>/dev/null

echo "Organización completada. Los archivos han sido movidos a sus carpetas correspondientes."
