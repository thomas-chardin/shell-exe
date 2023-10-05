#!/bin/bash

dateDuJour=$(date +"%Y%m%d%H%M")
logConnexion="/var/log/auth.log"
fichier="number_connection-$dateDuJour"

connections=$(sudo grep "session opened for user thomas" $logConnexion)
nb_lignes=$(echo "$connections" | wc -l)

echo "$nb_lignes" > /home/thomas/Documents/shell-exe/Job08/$fichier 


#tar -cf /home/thomas/Documents/shell-exe/Jobs08/$fichier.tar /home/thomas/Documents/shell-exe/Jobs08/$fichier
#mv /home/thomas/Documents/shell-exe/Jobs08/$fichier.tar /home/thomas/Documents/shell-exe/Jobs08/Backups

#rm /home/thomas/Documents/shell-exe/Jobs08/$fichier