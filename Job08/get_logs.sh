!/bin/bash

date_actuelle=$(date +"%d-%m-%Y-%H:%M")
logfile="/var/log/auth.log"
connexions=$(sudo grep "session open" "$logfile")
nombre_connexions=$(echo "$connexions" | wc -l)

fin_fichier="number_connection-$date_actuelle"
nom_fichier="/home/thomas/Documents/shell-exe/Job08/number_connection-$date_actuelle"

echo "$nombre_connexions" > "$nom_fichier"
tar -cvf /home/thomas/Documents/shell-exe/Job08/Backup/$fin_fichier.tar $nom_fichier
sudo rm /home/thomas/Documents/shell-exe/Job08/$nom_fichier
