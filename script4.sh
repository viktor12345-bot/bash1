!/bin/bash
read -p "Introduexi X: " X

if [[ ${X} -lt 5 ]]
then

echo "has introduït un número menor que 5"
elif [[ ${X} -eq 5 ]]
then
    echo "has introduït un 5"

else
echo "has introduït un número més gran que 5"
fi
