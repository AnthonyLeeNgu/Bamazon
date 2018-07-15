DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_id)
);

ALTER TABLE products ADD product_sales INT NOT NULL;

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    over_head_costs INT NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Pokeball', 'Toys', 100, 45);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('T-rex', 'Toys', 150, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Freeze-Ray', 'Toys', 250, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Ecto-1', 'Toys', 250, 1;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Spinsoaurus', 'Toys', 150, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Yogurt', 'Food', 5, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Capri Sun', 'Food', 5, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Diapers', 'Kids Stuff', 100, 55);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Yoga Mat', 'Fitness', 25, 452);



SELECT department_name
FROM products
JOIN departments
ON products.department_name=departments.department_name;


INSERT INTO departments (department_name, over_head_costs)
VALUES ('Toys', 5000);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Food', 1000);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Kid Stuff', 2000);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Fitness', 700);


