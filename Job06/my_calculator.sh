#!/bin/bash

nombre1=$1
nombre2=$3
symbole=$2

if [ $symbole="x" ]
then
symbole=*
fi
resultat=$(($nombre1 $symbole $nombre2))

echo "result: $resultat"
