#!/Bin/Bash
for I in {1..10}
do 
  echo "Je suis un script qui arrive à faire une boucle $I"
  if [ $I -lt 10 ]
  then
    break
  fi
done
