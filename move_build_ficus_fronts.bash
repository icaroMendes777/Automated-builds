#!/bin/bash

#author: Icaro

#function: Moves the build of the front psicologica projects inside ficus (main)

#comentário: cada projeto possui uma configuração de pasta bem específica,
#apesar do código parecer repetitivo existem pequenas diferenças no esquema
#de pastas

clear_dir(){
    dir=$1
    rm -r  $dir
    mkdir $dir 
}

printf '\nMigrando builds para local final\n\n'


echo "Movendo o build de /site..."

#--------

initialDir="$HOME/projects/ficus-front/site/dist/site/."
finalDir="$HOME/projects/ficus/public/site"

clear_dir $finalDir

    cp -a  $initialDir  $finalDir 

echo "movendo o build de /client..."

#--------

initialDir="$HOME/projects/ficus-client/dist/ficus-client/."
finalDir="$HOME/projects/ficus/public/client"

clear_dir $finalDir

    cp -a  $initialDir  $finalDir


echo "movendo o build de /professional..."

#--------

initialDir="$HOME/projects/ficus-professional/dist/ficus-professional/."
finalDir="$HOME/projects/ficus/public/professional"

clear_dir $finalDir

    cp -a  $initialDir  $finalDir

echo "Terminado."


exit 0
