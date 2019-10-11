DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
   item_id INT AUTO_INCREMENT,
   product_name VARCHAR(255),
   department_name VARCHAR(255),
   price DECIMAL(10,2) NOT NULL,
   stock_quantity INT NOT NULL,
   PRIMARY KEY (item_id)
);
INSERT INTO bamazonDB.products (product_name, department_name, price, stock_quantity)
VALUES 
    ("Why Zebras Don't Get Ulcers - Robert Zalpolsky", "Books", 21.55, 52),
    ("4 Pack of Hanes Tshirts", "Clothing ", 7.99, 43),
    ("Portable Speaker", "Electronics", 15.99, 36),
    ("Pac-Man: The Revenge", "Video Games", 9.99, 20),
    ("Beyonce 2", "Music ", 10.99, 18),
    ("The Cat in the Hat - Dr.Seuss", "Books", 12.29, 27),
    ("Blue Dress ", "Clothing ", 50.39, 12),
    ("Raspberry Pi 2B", "Electronics", 32.99, 11),
    ("Turtles In Time - SNES", "Video Games ", 49.99, 6),
    ("Beyonce 3", "Music ", 11.99, 59);