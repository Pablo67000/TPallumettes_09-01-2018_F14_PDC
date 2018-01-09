{ALGORITHME Jeu_Allumettes
//BUT: Jeu où deux utilisateurs s'affrontent. Ils doivent tour à tour retirer 1 à 3 allumettes sur un total de 21,
//celui qui retire la dernière perd.
//ENTREE: 21 allumettes
//SORTIE: gagnant du jeu

VAR
allum, choixj1, choixj2 : ENTIER
gagnantj1 : BOOL

DEBUT
//Bloc initialisation variables:
allum <- 21
choixj1 <- 0
choixj2 <- 0
gagnantj1 : VRAI

TANTQUE allum>1 FAIRE

	ECRIRE "Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:"
	LIRE choixj1

	gagnantj1<-VRAI
	SI (choixj1>=1) ET (choixj1<=3) ALORS
		allum <- allum-choixj1
		ECRIRE "Le nombre d'allumettes restantes est:",allum
		SINON
		REPETER
			ECRIRE "Nombre d'allumettes invalide! Vous devez choisir un chiffre entre 1 et 3 (inclus)"
			LIRE choixj1
		JUSQU'A (choixj1>=1) ET (choixj1<=3)
			allum <- allum-choixj1
			ECRIRE "Le nombre d'allumettes restantes est:",allum
	FINSI

	ECRIRE "Joueur 2, a votre tour de choisir de retirer 1,2 ou 3 allumettes:"
	LIRE choixj2
	
	gagnantj1<-FAUX
	SI (choixj2>=1) ET (choixj2<=3) ALORS
		allum <- allum-choixj2
		ECRIRE "Le nombre d'allumettes restantes est:",allum
		SINON
		REPETER
			ECRIRE "Nombre d'allumettes invalide! Vous devez choisir un chiffre entre 1 et 3 (inclus)"
			LIRE choixj2
		JUSQU'A (choixj2>=1) ET (choixj2<=3)
			allum <- allum-choixj2
			ECRIRE "Le nombre d'allumettes restantes est",allum
	FINSI

	0 <- choixj1
	0 <- choixj2	
FINTANTQUE			

SI allum<=1 ET gagnantj1=VRAI

ECRIRE "Le joueur 1 a gagné!"

	SINON
		SI allum<=1 ET gagnant=FAUX
			ECRIRE "Le joueur 2 a gagné!"
FIN


JEU D'ESSAI:
Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Le nombre d'allumettes restantes est:19
Joueur 2, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
3
Le nombre d'allumettes restantes est:16
Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
1
Le nombre d'allumettes restantes est:15
Joueur 2, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
3
Le nombre d'allumettes restantes est:12
Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
3
Le nombre d'allumettes restantes est:9
Joueur 2, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
1
Le nombre d'allumettes restantes est:8
Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Le nombre d'allumettes restantes est:6
Joueur 2, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
3
Le nombre d'allumettes restantes est:3
Joueur 1, a votre tour de choisir de retirer 1,2 ou 3 allumettes:
2
Le joueur 1 a gagné!
}