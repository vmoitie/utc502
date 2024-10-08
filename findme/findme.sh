#!/bin/bash

logger "Début du script de suppression"
logger "Recherche des fichiers dans les repertoires home var et tmp"

cherche=$(sudo find /home -name 'FindMe.txt')
cherche2=$(sudo find /var -name 'FindMe.txt')
cherche3=$(sudo find /tmp -name 'FindMe.txt')

if [[ -n "$cherche" ]]

then
	sudo rm $cherche
	logger "FindMe.txt trouvé dans /home et supprimé"
else
	logger "Fichier absent dans /home"
fi

if [[ -n "$cherche2" ]]

then
	sudo rm $cherche2
	logger "FindMe.txt trouvé dans /var et supprimé"
else
	logger "Fichier absent dans /var"
fi

if [[ -n "$cherche3" ]]

then
	sudo rm $cherche3
	logger "FindMe.txt trouvé dans /tmp et supprimé"
else
	logger "Fichier absent dans /tmp"
fi
