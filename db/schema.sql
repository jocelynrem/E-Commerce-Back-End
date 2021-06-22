-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Category (
    id int NOT NULL AUTO_INCREMENT,
    category_name varchar(50) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM Category;

CREATE TABLE Product (
    id int NOT NULL AUTO_INCREMENT,
    product_name varchar(50) NOT NULL,
    price DECIMAL NOT NULL,
    stock int NOT NULL default 10,
    category_id int,
    FOREIGN KEY (category_id) REFERENCES Category (id),
    PRIMARY KEY (id)
);

SELECT * FROM Product;

CREATE TABLE Tag (
id int NOT NULL AUTO_INCREMENT,
tag_name VARCHAR(50),
PRIMARY KEY (id)
);

SELECT * FROM Tag;

CREATE TABLE ProductTag (
id int NOT NULL AUTO_INCREMENT,
product_id int,
tag_id int,
FOREIGN KEY (product_id) REFERENCES Product (id),
FOREIGN KEY (tag_id) REFERENCES Tag (id),
PRIMARY KEY (id)
);

SELECT * FROM ProductTag;