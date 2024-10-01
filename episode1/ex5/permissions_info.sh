#!/bin/bash

argument=$_
perm=$(stat --format '%A' $argument)
echo $perm

if [[ $perm == *x*  ]]; then
    echo "Vous avez les droits d'exécution sur ce fichier"
else
    echo "Vous n'avez pas les droits d'exécution sur ce fichier"
fi
