Présentation
Jeu de morpion (tic tac toe) en Ruby OOP Exercice The Hacking Project p

Explication
Le programme en orienté objet contient 4 classes, le plateau de jeu, les cases, les joueurs et le moteur de jeu. La classe Board (plateau) dessine le tableau et teste la victoire.  La classe Game (moteur de jeu) lance le jeu, appelle le tableau, initialise deux joueurs, commence un tour (turn) et boucle sur le tour.

Si un joueur joue une case déjà occupée, son symbole ne remplace pas l'autre : il perd son tour. Après chaque tour on change de joueur (méthode switch_player)

Seul problème, en cas de match nul, le programme continue à boucler. Amélioration : tester l'occupation de toutes les cases, afficher "match nul".

Peer programming
Programme réalisé en peer programming avec Polo et Zelig ! 