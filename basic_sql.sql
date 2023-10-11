
CREATE TABLE clients (
    client_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    address TEXT,
    phone_number TEXT
);


CREATE TABLE appointments (
    appointment_id INTEGER PRIMARY KEY,
    client_id INTEGER,
    doctor_id INTEGER,
    appointment_date DATE,
    appointment_time TIME,
    purpose TEXT,
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);


CREATE TABLE doctors (
    doctor_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    specialization TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);


INSERT INTO clients (first_name, last_name, date_of_birth, address, phone_number)
VALUES ('John', 'Doe', '1990-05-15', '123 Main St', '555-123-4567');

INSERT INTO clients (first_name, last_name, date_of_birth, address, phone_number)
VALUES ('Jane', 'Smith', '1985-08-20', '456 Elm St', '555-987-6543');


INSERT INTO appointments (client_id, doctor_id, appointment_date, appointment_time, purpose)
VALUES (1, 1, '2023-10-15', '09:30:00', 'Checkup');

INSERT INTO appointments (client_id, doctor_id, appointment_date, appointment_time, purpose)
VALUES (2, 2, '2023-10-16', '10:15:00', 'Follow-up');


INSERT INTO doctors (first_name, last_name, specialization, department_id)
VALUES ('Dr. Sarah', 'Johnson', 'Cardiologist', 1);

INSERT INTO doctors (first_name, last_name, specialization, department_id)
VALUES ('Dr. Michael', 'Williams', 'Dermatologist', 2);


INSERT INTO departments (department_name)
VALUES ('Cardiology');

INSERT INTO departments (department_name)
VALUES ('Dermatology');


UPDATE clients
SET address = '789 Oak St', phone_number = '555-333-9999'
WHERE client_id = 1;


UPDATE appointments
SET purpose = 'Follow-up', appointment_date = '2023-11-01'
WHERE appointment_id = 1;


DELETE FROM clients WHERE client_id = 2;


INSERT INTO doctors (first_name, last_name, specialization, department_id)
VALUES ('Dr. Emily', 'Anderson', 'Pediatrician', 3);


INSERT INTO doctors (first_name, last_name, specialization, department_id)
VALUES ('Dr. Emily', 'Anderson', 'Pediatrician', 3);


INSERT INTO appointments (client_id, doctor_id, appointment_date, appointment_time, purpose)
VALUES (1, 3, '2023-11-15', '10:00:00', 'Pediatric checkup');


ALTER TABLE clients
MODIFY COLUMN first_name TEXT NOT NULL;

ALTER TABLE doctors
MODIFY COLUMN first_name TEXT NOT NULL;

ALTER TABLE departments
MODIFY COLUMN department_name TEXT NOT NULL;


ALTER TABLE clients
ADD CONSTRAINT unique_phone UNIQUE (phone_number);

ALTER TABLE clients
ADD CONSTRAINT valid_age CHECK ( date_of_birth >= 0);


ALTER TABLE appointments
ADD CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id);

