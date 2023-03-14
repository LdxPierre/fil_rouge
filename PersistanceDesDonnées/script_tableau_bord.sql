-- Chiffre d'affaires mois par mois pour une année sélectionnée
SELECT SUM(price_ht*quantity) AS CA
FROM order_detail
JOIN orders ON orders.order_id = order_detail.order_id
WHERE YEAR(order_date) = 2022;

-- Chiffre d'affaires généré pour un fournisseur
SELECT SUM(order_detail.price_ht*quantity) AS CA
FROM order_detail
JOIN product ON product.product_id = order_detail.product_id
WHERE product.supplier_id IN 
	(SELECT supplier_id FROM supplier WHERE `name`='Duis Sit Ltd');

-- TOP 10 des produits les plus commandés pour une année sélectionnée (référence et nom du produit, quantité commandée, fournisseur)
SELECT supplier_ref, `name`, SUM(quantity) AS quantité_commandé,supplier_id
FROM product
JOIN order_detail ON order_detail.product_id = product.product_id
WHERE order_id IN
	(SELECT order_id FROM orders WHERE YEAR(order_date) = 2023)
GROUP BY `name`
ORDER BY quantité_commandé DESC
LIMIT 10;

--TOP 10 des produits les plus rémunérateurs pour une année sélectionnée (référence et nom du produit, marge, fournisseur
SELECT supplier_ref, `name`, SUM(order_detail.price_ht-order_detail.supplier_price_ht) AS marge,supplier_id
FROM product
JOIN order_detail ON order_detail.product_id = product.product_id
WHERE order_id IN
	(SELECT order_id FROM orders WHERE YEAR(order_date) = 2023)
GROUP BY `name`
ORDER BY marge DESC
LIMIT 10;

--Top 10 des clients en nombre de commandes ou chiffre d'affaires
SELECT customer_id, COUNT(customer_id) AS nombre_commande
FROM orders
GROUP BY customer_id
ORDER BY nombre_commande DESC
LIMIT 10;

SELECT customer_id, SUM(price_ht-supplier_price_ht) AS chiffre_affaire
FROM order_detail
JOIN orders ON orders.order_id = order_detail.order_id
GROUP BY customer_id
ORDER BY chiffre_affaire DESC
LIMIT 10;

-- Répartition du chiffre d'affaires par type de client
SELECT category, SUM(price_ht-supplier_price_ht) AS chiffre_affaire
FROM order_detail
JOIN orders ON orders.order_id = order_detail.order_id
JOIN customer ON customer.customer_id = orders.customer_id
GROUP BY category
ORDER BY chiffre_affaire DESC;

--Nombre de commandes en cours de livraison.
SELECT COUNT(order_id) AS commande_livraison
FROM orders
WHERE STATUS = 'transit';