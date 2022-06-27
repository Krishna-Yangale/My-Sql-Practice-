
-- USE photo_store;

-- CREATE TABLE users(
--     id INT AUTO_INCREMENT ,
--     name VARCHAR(30),
--     email VARCHAR(60),
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE purchases(
--     id INT AUTO_INCREMENT ,
--     order_date DATE,
--     amount INT,
--     user_id INT,
--     PRIMARY KEY(id),
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- INSERT INTO users(name,email)VALUES('krishna','krishna@gmail.com'),
-- ('shiva','shiva@gmail.com'),
-- ('salman','salman@gmail.com'),
-- ('chris','chris@gmail.com');

INSERT INTO purchases(order_date,amount,user_id)
VALUES('2022-07-07',299,2);



