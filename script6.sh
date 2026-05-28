/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usuari no es pot repetir"
    exit 1
}

#Script per crear un usuari

#primer comprovam si som l'usuari root
if [[ ${UID} -ne 0 ]]
then
    usage
fi
