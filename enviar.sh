#!/bin/bash

#Programa feito para se rusado no github 26/02/2018
#www.avanildo.com.br

## git remote add upstream [ENDEREÇO DO REPOSITÓRIO PRINCIPAL] // seta repositorio
## git fetch upstream   // sicroniza repositorio 
## git merge upstream/master // atualisa reporitorio



data=$(date +"%A-%d/%m/-%H:%M")
echo ""
echo ""
clear
git status; 

echo -e "\nEsta pasta e do dominio www.avanildo.com.br hospedado no servido GITHUB  \n"
pwd
echo -e "\nEste Programa foi feito para atualizacão de servidor usando Git\n \n    Aperte enter para continuar 1 para continuar \n===========================================================\n"  
read -n 1 msg


if [ "$msg" = "1" ] 
    then
     echo -e "\nAguarde atualizando o servidor Gthub... \n \n";
      git add * ;git commit -m "Atualizacão em $data ";git push origin master ; echo -e "\n \n Programa atualizado no servidor em com susseso $data \n \n" 
   else 
      echo -e "\nAção cancelada pelo usuario obrigado"
fi

exit
