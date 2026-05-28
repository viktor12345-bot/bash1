!/bin/bash

SCRIPT_NAME=${0}
echo "Nom del script ${SCRIPT_NAME}"

PATH_FILE=$(dirname ${0})
FILE_NAME=$(basename ${0})
echo "el PATH: ${PATH_FILE} el fitxer seria ${FILE_NAME}"

echo "ITERACIO AMB FOR"
for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done

echo

#recorrer els parametres amb while
echo "ITERACIO AMB WHILE"
while [[ ${#} -ge 1 ]]
do
    #${1} indica el parametre en primera posicio
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    shift
done

