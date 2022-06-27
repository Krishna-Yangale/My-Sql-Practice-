-- show databases;
-- select database();
-- use photo_store;
-- select database();

-- CREATE TABLE cameras(
--     model_name VARCHAR(30),
--     quantity INT
-- );
-- DESC cameras;
-- TODO:camera table done

-- DROP TABLE cameras;
-- SHOW TABLES;

-- CREATE TABLE canon_cameras(
--     model_name VARCHAR(50),
--     quantity INT
-- );

-- DESC canon_cameras;

-- INSERT INTO canon_cameras VALUES("70D",12);
-- INSERT INTO canon_cameras VALUES("80D",19);
-- INSERT INTO canon_cameras VALUES("EOS-R",25);
-- INSERT INTO canon_cameras VALUES("EOS-r5",80);
-- INSERT INTO canon_cameras VALUES("EOS-r6",50);
-- INSERT INTO canon_cameras(model_name,quantity)
-- VALUES("70D",12),("80D",19),("EOS-R",25),("EOS-r5",80),("EOS-r6",50);


-- TODO:Answering customers questions

SELECT * FROM canon_cameras;


-- TODO:What models do you have?
-- SELECT model_name FROM canon_cameras;

-- TODO:How many cameras availble for model 80D?s
-- SELECT model_name,quantity FROM canon_cameras WHERE model_name="80D";

-- SELECT model_name,quantity FROM canon_cameras WHERE quantity>=50;

-- INSERT INTO canon_cameras(model_name) VALUES("M5D");

-- INSERT INTO canon_cameras(quantity) VALUES(55);

