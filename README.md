# fil_rouge

**Règles de gestion**

1. Un commercial est attribué à chaque client.
2. Un commercial spécifique s’occupe des clients particuliers.
3. Pour les clients particuliers, un paiement est exigé à la commande.
4. Pour les clients professionnels, le paiement se fait en différé (virement ou chèque).
5. Tous les produits sont catégorisés en rubrique / sous-rubrique.
6. Tous les clients particuliers ont le même coefficient.
7. Chaque client possède une référence unique.


**Schéma de la base de donnée**
![ROUGE1](https://user-images.githubusercontent.com/103575691/224259297-db5d9f7d-c858-4273-83f0-314d0d0a419c.jpg)


**Sauvegarde de la base de donnée**

Une sauvegarde complète de la base est effectuée tous les jours en dehors des heures d’activité (18H). Une sauvegarde du journal a également lieu tous les jours à 9H, 12H et 15H.
En cas de perte de données, uniquement 3H seront perdues.


**Les cas d'utilisation**

![useCase](https://user-images.githubusercontent.com/103575691/224975258-d27a6773-4d43-42b7-bb67-ea56b8f60018.jpg)


**Scénario pour le cas d'utilisation 'Enregistrer une commande'**

* Le client demande de se connecter au système
* Le système demande une combinaison identifiant / mot de passe valide
* Le client saisie une combinaison identifiant / mot de passe invalide
* Le système indique que la combinaison identifiant / mot de passe ne sont pas valides
* Le système affiche un message et propose de recommencer
* Le client saisie une combinaison identifiant / mot de passe valide
* Le système indique que la connexion est établie
* Le client demande de voir la liste des produits
* Le système affiche la liste des produits
* Le client sélectionne un produit
* Le système affiche les détails d'un produit
* Le client ajoute le produit au panier
* Le système indique que le produit a été ajouté au panier
* Le système affiche un message et propose de continuer ou de valider le panier
* Le client valide le panier
* Le systeme affiche le formulaire de livraison
* Le client saisie les informations de livraison
* Le système affiche que les informations de livraison sont valides
* Le systele affiche le formulaire de payement
* Le client saisie les informations de payement
* Le système indique que les informations de payement sont valides
* Le système affiche les informations saisie et demande une validation de commande
* Le client valide la commande
* Le système indique que le payement a été accepté
* Le système affiche un message avec le numéro de commande et propose de télécharger le bon de commande


**Diagramme de séquence**





**Diagramme d'activité**




**Graphe de navigation de l'application**




**Maquette de la partie boutique**
