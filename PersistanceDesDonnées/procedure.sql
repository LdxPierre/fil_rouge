-- commande ne livraison
DELIMITER |

DROP PROCEDURE IF EXISTS commande_en_livraison|
CREATE PROCEDURE commande_en_livraison()
BEGIN
SELECT COUNT(order_id) AS `commande_livraison`
FROM orders
WHERE STATUS = 'transit';
END|

DELIMITER ;

-- delai moyen de livraison
DELIMITER |

DROP PROCEDURE IF EXISTS delai|
CREATE PROCEDURE delai()
BEGIN
SELECT AVG(DATEDIFF(ship_date, order_date))
FROM orders
WHERE ship_date IS NOT NULL;
END|

DELIMITER ;