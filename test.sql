
drop table departments,employees,transactions,countries;

CREATE TABLE users (id INTEGER, name TEXT, age INTEGER, balance INTEGER, is_admin BOOLEAN);
INSERT into users (id, name, age, balance, is_admin) values (1, 'John Smith', 28, 450.00, true);
INSERT into users (id, name, age, balance, is_admin) values (2, 'Darren Walker', 27, 200.00, true);
INSERT into users (id, name, age, balance, is_admin) values (2, 'Jane Morris', 33, 496.24, false);

CREATE TABLE people (
    id INTEGER,
    handle TEXT,
    name TEXT, 
    age INTEGER, 
    balance INTEGER, 
    is_admin BOOLEAN
);


ALTER TABLE people 
RENAME TO users;

ALTER TABLE users
RENAME COLUMN handle TO username;

ALTER TABLE users
ADD COLUMN password TEXT;

CREATE TABLE transactions (
    id INTEGER, 
    recipient_id INTEGER, 
    sender_id INTEGER, 
    note TEXT, 
    amount INTEGER
);


INSERT INTO transactions (id, recipient_id, sender_id, note, amount)
VALUES (1, 14, 26, "Testing transaction!", 10.50);

INSERT INTO transactions (id, sender_id)
VALUES (2, 4);

INSERT INTO transactions (recipient_id, note, amount)
VALUES (5, "Oil change, full synthetic", 140.22);

ALTER TABLE transactions
ADD COLUMN transaction_type TEXT;

ALTER TABLE transactions
ADD COLUMN was_successful BOOLEAN;


CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    CONSTRAINT fk_departments
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);

CREATE TABLE transactions (
    id INTEGER PRIMARY KEY,
    sender_id INTEGER,
    recipient_id INTEGER,
    memo TEXT NOT NULL,
    amount INTEGER NOT NULL,
    balance INTEGER NOT NULL
);

INSERT into users (
    id,
    name,
    country_code
) values (
    0,
    "Jerry",
    "US"
);
CREATE table countries(code TEXT PRIMARY KEY, name TEXT);

drop table users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    country_code TEXT NOT NULL,
    username TEXT ,
    password TEXT,
    is_admin BOOLEAN,
    FOREIGN KEY (country_code)
    REFERENCES countries(code)
);

INSERT into countries (
    code,
    name
) values (
    "US",
    "United States of America"
);

INSERT into countries (
    code,
    name
) values (
    "IN",
    "India"
);

INSERT into users (
    id,
    name,
    country_code
) values (
    0,
    "Jerry",
    "US"
);

INSERT into users (
    id,
    name,
    country_code
) values (
    1,
    "Amit",
    "IN"
);



drop table transactions;
CREATE TABLE transactions (
    id INTEGER PRIMARY KEY,
    recipient_id INTEGER,
    sender_id INTEGER,
    note TEXT,
    amount INTEGER,
  was_successful BOOLEAN
    );

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (1, 9, 4, "Testing transaction!", 10.50, true);

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (2, 5, 10, "Thanks for lunch!", 9.56, true);

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (3, 6, 2, "Car problems", 256.21, true);

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (4, 7, 8, "Happy birthday!!", 50, true);

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (5, 9, 11, "MTG Draft", 50, false);

INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (288, 5, 107, "Thanks for lunch!", 9.56, true);INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (72, 58, 107, "Thanks for lunch!", 9.56, true);INSERT INTO transactions (id, recipient_id, sender_id, note, amount, was_successful)
VALUES (772, 85, 180, "Thanks for lunch!", 9.56, true);



select * from transactions
where note LIKE '%lunch%'
limit 3;



