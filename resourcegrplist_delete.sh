#! /bin/bash
set -x

#before running please do az login 



# add list of resourcesgroups to be deleted 
rg=("xx" "aa" "bb")
for rgname in ${rg[@]}; do
    echo Deleting $rgname
    az group delete -n ${rgname} --yes --no-wait
done



