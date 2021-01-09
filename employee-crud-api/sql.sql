CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE employee(
    employeeId uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
    name VARCHAR(255)NOT NULL,
    jobRole VARCHAR(255)NOT NULL,
    salary NUMERIC(5,2),
    dateOfBirth DATE NOT NULL,
    employeeRegistration INTEGER NOT NULL
);

ALTER TABLE employee RENAME employeeRegistration TO employee_registration;
ALTER TABLE employee RENAME employeeId TO employee_id;
ALTER TABLE employee RENAME jobRole TO job_role;
ALTER TABLE employee RENAME dateOfBirth TO birth;