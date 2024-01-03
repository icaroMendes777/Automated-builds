# /bin/bash
#autor: Icaro

#tarefa: cria build dos projetos front da ficus

#build_project() params: "folder", "base_do projeto"
build_project(){

    initialFolder=$1
    finalBase=$2

    echo "-Iniciando build $initialFolder"

        cd "$initialFolder";
        ng build --base-href="$finalBase"

        echo "criado com base: $finalBase"

}

currentDir=$(pwd)

build_project "/home/icaro/projects/ficus-professional" "/professional/"
build_project "/home/icaro/projects/ficus-front/site" "/site/"

echo "--Builds concluidos--"

source "$currentDir/move_build_ficus_fronts.bash"

echo "Terminado."

exit 0 
