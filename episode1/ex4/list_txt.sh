#!/bin/bash
txt_files=$(find . -type f -name "*.txt")

if [ -z "$txt_files" ]; then
    echo "Aucun fichier .txt trouvé"
else
    echo "$txt_files"
fi
