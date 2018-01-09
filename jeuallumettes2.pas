{ALGORITHME Jeu_Allumettes
//BUT: Jeu où un utilisateur et un ordinateur (aléatoire) s'affrontent. Ils doivent tour à tour retirer 1 à 3 allumettes sur un total de 21,
//celui qui retire la dernière perd.
//ENTREE: 21 allumettes
//SORTIE: gagnant du jeu

VAR
allum, choixjoueur, ordirandom : ENTIER
gagnantjoueur : BOOL

DEBUT
//Bloc initialisation variables:
allum <- 21
choixjoueur <- 0
ordirandom <- 0
gagnantjoueur : VRAI

TANTQUE allum>1 FAIRE

	ECRIRE "A votre tour de choisir de retirer 1,2 ou 3 allumettes:"
	LIRE choixjoueur
	
	gagnantjoueur<-VRAI
	SI (choixjoueur>=1) ET (choixjoueur<=3) ALORS
		allum <- allum-choixjoueur
		ECRIRE "Le nombre d'allumettes restantes est:",allum
		SINON
		REPETER
			ECRIRE "Nombre d'allumettes invalide! Vous devez choisir un chiffre entre 1 et 3 (inclus)"
			LIRE choixjoueur
		JUSQU'A (choixjoueur>=1) ET (choixjoueur<=3)
			allum <- allum-choixjoueur
			ECRIRE "Le nombre d'allumettes restantes est:",allum
	FINSI

	ordirandom <- aleatoire entre 1 et 3
	ECRIRE "Le nombre d'allumettes que je choisi de retirer est:",ordirandom

	gagnantjoueur<-FAUX
	allum <- allum-ordirandom
	ECRIRE "Le nombre d'allumettes restantes est:",allum

	0 <- choixjoueur
	0 <- ordirandom	
FINTANTQUE			

SI allum<=1 ET gagnantjoueur=VRAI

ECRIRE "Vous avez gagné, félicitations!"

	SINON
		SI allum<=1 ET gagnant=FAUX
			ECRIRE "Pas de chance, j'ai gagné!"
FIN


JEU D'ESSAI:
A votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Le nombre d'allumettes restantes est:19
Le nombre d'allumettes que je choisi de retirer est:
3
Le nombre d'allumettes restantes est:16
A votre tour de choisir de retirer 1,2 ou 3 allumettes:
1
Le nombre d'allumettes restantes est:15
Le nombre d'allumettes que je choisi de retirer est:
3
Le nombre d'allumettes restantes est:12
A votre tour de choisir de retirer 1,2 ou 3 allumettes:
3
Le nombre d'allumettes restantes est:9
Le nombre d'allumettes que je choisi de retirer est:
1
Le nombre d'allumettes restantes est:8
A votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Le nombre d'allumettes restantes est:6
Le nombre d'allumettes que je choisi de retirer est:
3
Le nombre d'allumettes restantes est:3
A votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Vous avez gagné, félicitations!
}