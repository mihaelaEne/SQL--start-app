
create  database test;


use test;


CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    age INTEGER,
    balance DECIMAL(10, 2),
    is_admin BIT
);

INSERT INTO users (name, age, balance, is_admin)
VALUES
    ('John Smith', 28, 450.00, 1),
    ('Darren Walker', 27, 200.00, 1),
    ('Jane Morris', 33, 496.24, 0);


SELECT name,balance,age FROM users;