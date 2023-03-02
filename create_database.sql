DROP DATABASE IF EXISTS green_village;
CREATE DATABASE green_village;
USE green_village;

CREATE TABLE product_category(
   category_id INT AUTO_INCREMENT,
   `name` VARCHAR(20)  NOT NULL,
   category_parent INT,
   PRIMARY KEY(category_id),
   FOREIGN KEY(category_parent) REFERENCES product_category(category_id)
);

CREATE TABLE employee(
   employee_id INT AUTO_INCREMENT,
   lastname VARCHAR(20)  NOT NULL,
   firstname VARCHAR(20)  NOT NULL,
   `password` VARCHAR(255)  NOT NULL,
   job_title VARCHAR(50),
   department VARCHAR(50) ,
   email VARCHAR(50)  NOT NULL,
   phone VARCHAR(20)  NOT NULL,
   responsable INT,
   PRIMARY KEY(employee_id),
   FOREIGN KEY(responsable) REFERENCES employee(employee_id)
);

CREATE TABLE supplier(
   supplier_id INT AUTO_INCREMENT,
   `name` VARCHAR(50)  NOT NULL,
   `address` VARCHAR(50)  NOT NULL,
   city VARCHAR(50)  NOT NULL,
   region VARCHAR(50)  NOT NULL,
   postal_code VARCHAR(20)  NOT NULL,
   country VARCHAR(20)  NOT NULL,
   contact_name VARCHAR(50) ,
   contact_title VARCHAR(50) ,
   phone VARCHAR(20)  NOT NULL,
   email VARCHAR(50) ,
   employee_id INT NOT NULL,
   KEY(`name`),
   PRIMARY KEY(supplier_id),
   FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE customer(
   customer_id INT AUTO_INCREMENT,
   `password` VARCHAR(255)  NOT NULL,
   category VARCHAR(5)  NOT NULL CHECK (category = 'part' OR category = 'pro'),
   customer_firstname VARCHAR(20) ,
   customer_lastname VARCHAR(20) ,
   company_name VARCHAR(50) ,
   contact_name VARCHAR(50) ,
   contact_title VARCHAR(50) ,
   email VARCHAR(50)  NOT NULL,
   phone VARCHAR(20) ,
   date_registery DATE NOT NULL DEFAULT CURRENT_DATE,
   `address` VARCHAR(50) ,
   city VARCHAR(50) ,
   region VARCHAR(20) ,
   postal_code VARCHAR(20) ,
   country VARCHAR(20) ,
   coefficient DECIMAL(3,2)   NOT NULL DEFAULT 1,
   employee_id INT NOT NULL,
   KEY(email),
   PRIMARY KEY(customer_id),
   FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE product(
   product_id INT AUTO_INCREMENT,
   `name` VARCHAR(50)  NOT NULL,
   product_desc TEXT,
   img VARCHAR(255) ,
   price_ht DECIMAL(7,2)   NOT NULL,
   supplier_price_ht DECIMAL(7,2)   NOT NULL,
   stock INT NOT NULL,
   `show` BOOLEAN NOT NULL,
   supplier_ref VARCHAR(50)  NOT NULL,
   category_id INT NOT NULL,
   supplier_id INT NOT NULL,
   KEY (name),
   PRIMARY KEY(product_id),
   FOREIGN KEY(category_id) REFERENCES product_category(category_id),
   FOREIGN KEY(supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE orders(
   order_id INT AUTO_INCREMENT,
   payement VARCHAR(10)  NOT NULL CHECK (payement = 'virement' OR payement = 'cheque' OR payement = 'commande'),
   discount DECIMAL(4,2)  ,
   order_date DATE NOT NULL DEFAULT CURRENT_DATE,
   status VARCHAR(10)  NOT NULL,
   ship_date DATE DEFAULT CURRENT_DATE,
   ship_name VARCHAR(50)  NOT NULL,
   ship_address VARCHAR(50)  NOT NULL,
   ship_city VARCHAR(50)  NOT NULL,
   ship_region VARCHAR(20)  NOT NULL,
   ship_postal_code VARCHAR(20)  NOT NULL,
   ship_country VARCHAR(20)  NOT NULL,
   bill_address VARCHAR(50)  NOT NULL,
   bill_city VARCHAR(50)  NOT NULL,
   bill_region VARCHAR(20)  NOT NULL,
   bill_postal_code VARCHAR(20)  NOT NULL,
   bill_country VARCHAR(20)  NOT NULL,
   customer_id INT NOT NULL,
   PRIMARY KEY(order_id),
   FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE order_detail(
   product_id INT,
   order_id INT,
   quantity INT NOT NULL,
   discount DECIMAL(4,2)  ,
   PRIMARY KEY(product_id, order_id),
   FOREIGN KEY(product_id) REFERENCES product(product_id),
   FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

CREATE TABLE cart(
   product_id INT,
   customer_id INT,
   quantity INT NOT NULL,
   PRIMARY KEY(product_id, customer_id),
   FOREIGN KEY(product_id) REFERENCES product(product_id),
   FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);