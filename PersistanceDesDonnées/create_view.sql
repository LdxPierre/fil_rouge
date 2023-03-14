-- Jointure produits / fournisseurs
DROP VIEW IF EXISTS produit_fournisseur;
CREATE VIEW produit_fournisseur
AS
SELECT product.*, supplier.name AS supplier_name, supplier.address, supplier.city, supplier.region, supplier.postal_code, supplier.country, supplier.contact_name, supplier.contact_title, supplier.phone, supplier.email 
FROM product
JOIN supplier ON supplier.supplier_id = product.supplier_id;


-- Jointure produits / Rubrique
DROP VIEW IF EXISTS produit_rubrique;
CREATE VIEW produit_rubrique
AS
SELECT product.*, product_category.name AS category_name
FROM product
JOIN product_category ON product_category.category_id = product.category_id;
