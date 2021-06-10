Module 104 Exercice du 2021.05.12
---


# Faire fonctionner cette Base de données :
##### BUT : CRUD (Create Read Update Delete) complet sur la "t_theme" et la table intermédiaire "t_ex_theme"
* Démarrer le serveur MySql (uwamp ou xamp ou mamp, etc)
* Dans PyCharm, importer la BD grâce à un "run" du fichier "zzzdemos/1_ImportationDumpSql.py".
  * En cas d'erreurs : ouvrir le fichier ".env" à la racine du projet, contrôler les indications de connexion pour la bd (principalement ces lignes: USER_MYSQL="root"
PASS_MYSQL=""
PORT_MYSQL=3306)
* Puis dans le répertoire racine du projet, ouvrir le fichier "1_run_server_flask.py" et faire un "run".
  * Indispensable, car la BD à changé depuis le début du semestre.

* Choisir le menu "Exercice/Thème"
  + Tester la fonction "MODIFIER"

# VOTRE travail pour cet exercice :
* Avant de débuter CET exercice, soyez certain que vous avez des copies de votre ancien projet.
* Ne jamais travailler sur l'original, mais bien sur une copie.
* Avant de commencer CET exercice, votre ancien projet doit être fonctionnel.
  
* Il faut comparer les répertoires entre l'ancien projet et
  le nouveau, car il y a des fichiers "js" (et autres) 
  à placer dans le répertoire "static" 
  indispensable pour le composant en javascript 
  de la gestion de la table interémédiaire
  sous forme de sélecteur de "TAGS".
* Il faut intégrer la gestion de la table intermédiaire dans votre projet.
  * Vous devez tester les requêtes MySql dans votre PhpMyAdmin avant de les placer dans le code en Python
  * Il faut ABSOLUMENT utiliser la technique "INNER, RIGHT, LEFT JOIN" comme le code MySql de mon projet.
  * Il faut ABSOLUMENT utiliser le "tags-selector-tagselect" pour l'association des données de la table intermédiaire.
  
* Il faut bien sûr que toutes vos tables soient en gestion CRUD.

* Vers la fin de la 2ème semaine du mois de juin 2021, 
  (à fixer, voir MOODLE), la totalité de votre projet personnel 
  avec tous les documents indispensables 
  (MCD, MLD, MPD, Dictionnaire des données, 
  documentation du code, installation, démarrage, 
  bref tout ce qui est nécessaire pour maintenir le projet.)




## Ci-dessous, le contenu des anciens "readme.md"



* Comparer votre ancien projet (qui doit fonctionner !!!) avec celui-ci :
  * Dans PyCharm sélectionner le répertoire RACINE ("2021_MOD_104_OM_PYTHON_MYSQL_FLASK_WTF_3_V1") sur le projet actuel.
  * Puis "CTRL-D" (Menu "View" >>> "Compare With...") et dans votre ancien projet, sélectionner le répertoire RACINE, puis "OK".
  * Et la comparaison s’effectue fichier par fichier.
* Si vous arrivez à afficher votre table, alors vous pouvez commencer l'ADAPTATION du code pour que le bouton "AJOUTER" fonctionne sur votre propre table, ainsi vous allez pouvoir insérer des données dans votre table.
* Vous devez arriver à implémenter les actions CRUD(Create Read Update Delete) sur vous tables, SAUF les tables intermédiaires (prochain exercice)

## CONSEILS
* Quand vous changez un nom de variable, testez de suite les conséquences, n'attendez pas.
  * Mettez un point d'arrêt (point rouge clic à droite du numéro de ligne) et démarrez en mode "DEBUG""
* Dans PyCharm UTILISEZ TOUT LE TEMPS LE "CTRL SHIFT-F" ET LE "CTRL-SHIFT-R"
* En cas de message d’erreur copier le texte de la console ou de la page HTML et revenir dans le code, et faites un "CTRL-SHIFT-F"
* N’hésitez pas à demander de l’aide (moi ou vos "amis" de Discord), ne baissez jamais les bras, cela vous éloooooigne de la galaxie du 6.


## Remarque :
* En classe j’ai montré comment faire le fichier ".env" avec les variables d'environnement. Ce fichier dans les projets en production ne doit pas se trouver dans le cloud (Gitlab).
* Pour ce début de projet et pour me simplifier la correction des 80 projets. Je l'ai laissé dans le git, ainsi vous n'avez rien à faire de particulier, pour que la démo fonctionne.
  * Avec votre version de votre projet vous serez obligé de le modifier. (Nom de la BD par exemple)



## Travail de l’élève (avant de faire RUN du "1_run_server_flask.py")
* Dans PyCharm ouvrir le répertoire "zzzdemos", puis ouvrir le fichier "1_ImportationDumpSql.py".  
  Ensuite, avec le bouton de droite de la souris cliquer sur "run" de ce fichier "1_ImportationDumpSql.py".
  * En cas d'erreurs : ouvrir le fichier ".env" à la racine du projet, contrôler les indications de connexion pour la bd.
* Puis dans le répertoire racine du projet, ouvrir le fichier "1_run_server_flask.py" et faire un "run".

### Constater l'affichage du contenu de la table "t_theme"

* Démarrer le serveur MySql (uwamp ou xamp ou mamp, etc)
* Récupérer le projet stocké sur Gitlab avec l’IDE PyCharm.
  * Explications sur le MOODLE de l’EPSIC (Module 104).


### Pour cette démo

* Il y a un template CSS, stocké en local dans un répertoire (static) IMPOSE par FLASK.
* On réalise UNIQUEMENT (choix de OM de la 707) l'action READ du CRUD (Create Read Update Delete) sur la table "t_theme".
* Il faut tester le système de gestion des erreurs selon la liste du premier exercice.

### VOTRE travail pour cet exercice :

* Placer votre fichier DUMP au bon endroit comme pour le premier exercice.
  * N'oubliez pas les 3 commandes DROP;CREATE;USE
* Dans le fichier ".env" changez le nom de la BD par le nom de votre BD (NAME_BD_MYSQL="_____NOM_DE_VOTRE_BD")
* L'importer grâce au fichier zzzdemos/1_ImportationDumpSql.py
* Adapter les changements pour qu'UNE seule table puisse être 
* Niveau sup. : Adapter les changements pour que toutes les tables principales de votre projet s'affichent (pas les tables intermédiaires)


### Votre projet sur Gitlab
* Quel que soit l'état de votre exercice. Vous devez le mettre à ma disposition sur Gitlab comme le premier exercice.
* Faites peu de choses, mais il faut les faire.
* Il faut maîtriser un petit peu le "PUSH" sur git
* Faites des essais, lisez le petit tuto sur votre DISCORD
* Un truc simple : avant d’ouvrir PyCharm
  * Effacer le répertoire ".git" et ".idea" de votre projet.
  * Sur le site Gitlab faites un "NEW PROJECT", il vous montre toutes les commandes indispensables, copiez-les dans le bloc-note.
  * Ouvrir le terminal de PyCharm envoyez les commandes générées par Gitlab.
* S’il y a des problèmes techniques, nous en parlons la prochaine fois.

### Nous sommes en avance en comparaison de l'année précédente, donc pas de panique.

## Quelques liens utiles pour les ... (mot étrange !)
https://www.armandphilippot.com/dotenv-variables-environnement/
https://stackoverflow.com/questions/23554872/why-does-pycharm-propose-to-change-method-to-static
