# fil_rouge

Règles de gestion

1 - Un commercial est attribué à chaque client.
2 - Un commercial spécifique s’occupe des clients particuliers.
3 - Pour les clients particuliers, un paiement est exigé à la commande.
4 - Pour les clients professionnels, le paiement se fait en différé (virement ou chèque).
5 - Tous les produits sont catégorisés en rubrique / sous-rubrique.
6 - Tous les clients particuliers ont le même coefficient.
7 - Chaque client possède une référence unique.


Schéma de la base de donnée
![ROUGE1](https://user-images.githubusercontent.com/103575691/224259297-db5d9f7d-c858-4273-83f0-314d0d0a419c.jpg)


Sauvegarde de la base de donnée

Une sauvegarde complète de la base est effectuée tous les jours en dehors des heures d’activité (18H). Une sauvegarde du journal a également lieu tous les jours à 9H, 12H et 15H.
En cas de perte de données, uniquement 3H seront perdues.
