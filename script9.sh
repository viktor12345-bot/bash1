!/bin/bash

SCRIPT_NAME=${0}
echo "Nom del script ${SCRIPT_NAME}"

PATH_FILE=$(dirname ${0})
FILE_NAME=$(basename ${0})
echo "el PATH: ${PATH_FILE} el fitxer seria ${FILE_NAME}"

#${*} mostra el conjunt de parametres en una sola paraula "${1} ${2}.....${n}"
echo "${*}"
echo

#${@} mostra el conjunt de parametres en paraules diferents "${1}" "${2}" ..... "${n}"
echo "${@}"
echo

#estructura de control FOR per iterar els paramtres
for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done
