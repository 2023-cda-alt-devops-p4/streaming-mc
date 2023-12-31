# streaming


*Design a database, Store data*

## Desciption

## Setup

> docker compose up

### Database structure

*Incredible MCD*
![Model conceptuel de données](merise/looping_img.PNG)


*Incredible MLD*
![Model logique de données](merise/mldlooping.png)


*Incredible MPD*
![Model physique de données](merise/mpd.png)

### Queries

*A minimal set of queries to test your database:*

✅Retrieve the titles and release dates of movies from the most recent to the oldest.

```sql
SELECT title_film, release_date FROM film ORDER BY release_Date DESC;
```

⬜Get the names, first names, and ages of actors/actresses over 30 years old in ⬜alphabetical order.
⬜Retrieve the list of lead actors/actresses for a given movie.
⬜Fetch the list of movies for a given actor/actress.
⬜Add a new movie.
⬜Add an actor/actress.
⬜Update a movie.
⬜Delete an actor/actress.
⬜Display the 3 most recently added actors/actresses

*advanced operations:*

⬜Use a stored procedure to list movies directed by a specified director as a parameter.
⬜Use a trigger to keep a record of all modifications made to the users' table. An ⬜archive table will store the update date, the user's identifier, the old value, and the new value.

### Deliverables

*A GitHub repository containing:*

✅ Docker environment  
✅ Data dictionary  
✅ Conceptual Data Model   
✅ Physical Data Model   
✅ Logical Data Model   
✅ A file for generating the database    
⬜ Query set in the README.md  

## Evaluation par les pairs
# Critères d'évaluation

- [✔️] OK
- [:x:] NOT OK

*replace check markdown after evaluation*



## Livrables

Un dépôt GitHub contenant :
- [✔️] L'environnement docker
- [✔️] Le dictionnaire de données
- [✔️] MCD
- [✔️] MPD
- [✔️] MLD
- [✔️] Un fichier permettant de générer la bdd (incluant quelques données)
- [✔️] Le jeu de requêtes dans le *README.md*

## Critères de performance

- [ ] Récupération facile de votre environnement
- [✔️] Exactitude des relations entre les tables
- [ ] Trigger* mis en place
- [✔️] Bonne présentation des requêtes sur le *README.md*
- [ ] Exécution des requêtes sans erreur

### Les requêtes

- [ ] Les titres et dates de sortie des films du plus récent au plus ancien
- [ ] Les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique
- [ ] La liste des acteurs/actrices principaux pour un film donné
- [ ] La liste des films pour un acteur/actrice donné
- [ ] Ajouter un film
- [ ] Ajouter un acteur/actrice
- [ ] Modifier un film
- [ ] Supprimer un acteur/actrice
- [ ] Afficher les 3 derniers acteurs/actrices ajouté(e)s

### Procédures

- [ ] Lister grâce à une procédure stockée les films d'un réalisateur donné en paramètre

### Triggers

- [ ] Garder grâce à un trigger une trace de toutes les modifications apportées à la table des utilisateurs. Ainsi, une table d'archive conservera la date de la mise à jour, l'identifiant de l'utilisateur concerné, l'ancienne valeur ainsi que la nouvelle.
- [ ] Pour chaque entrée dans la base de données, il y aura la date de création et de modification.

## Author

* Melanie Chauvin

## License
