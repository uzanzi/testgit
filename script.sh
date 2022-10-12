#!/bin/bash
nbAlea=${RANDOM:0:2}
echo $nbAlea
success=0
essaie=0
echo "Entrez votre pseudo :"
read pseudo
while [ $success -eq 0 ]
do
	((essaie=essaie+1))
	echo "Entrez un nombre : "
	read nbUtilisateur
	if [ $nbUtilisateur -eq $nbAlea ]
	then
		echo "Bravo, vous avez trouvé en " $essaie " essaie !"
		success=1
		echo $pseudo "" $essaie >> score.txt
	fi
	if [ $nbUtilisateur -gt $nbAlea ]
	then
		echo "C'est moins !"
	fi
	if [ $nbUtilisateur -lt $nbAlea ]
	then
		echo "C'est plus !"
	fi
done
