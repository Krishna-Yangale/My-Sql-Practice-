show databases;

use photo_store;

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL DEFAULT 'no email provided',
    amount INT,
    PRIMARY KEY(id)
);

DESC customers;

-- TODO: ADD some values to the customer table.

INSERT INTO customers(name,email,amount)
VALUES("Krishna",  "krishna@radiantcloud.co",50),
("Shiva",  "shiva@gmail.com",40),
("Raju",  "Raju@gmail.com",60),
("Akash",  "akash@gmail.com",45),
("Sagar",  "Sagar@gmail.com",55),
("Yash",  "yash@gmail.com",65),
("Jay",  "jay@gmail.com",80),
("Jay",  "jay@yahoon.com",60);



INSERT INTO customers(name,amount)
VALUES(
    "Shiva",
    50
)

SELECT * FROM customers;

-- TODO:answer some questions
-- can you give me names of all customers

SELECT name FROM customers;

-- can you give me emails of all customers

SELECT email FROM customers;

-- can you give me all purchases of customers

SELECT amount FROM customers;

-- TODO:update

SELECT * FROM customers WHERE name="Yash";

-- TODO:Yash email is incorrect it needs to be yash@yahoo.com
UPDATE customers SET email="yash@yahoo.com" WHERE name="Yash";

-- update when customers have same name.
SELECT * FROM customers WHERE name="Jay";
SELECT * FROM customers WHERE id=8;

UPDATE customers SET amount=35 WHERE id=8;

SELECT * from customers WHERE name="Raju";

DELETE  from customers WHERE name="Raju";

-- deleete all account ascociated with Jay;

SELECT *from customers WHERE name="Jay";

DELETE from customers WHERE name="Jay";
