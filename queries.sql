-- Create database
-- CREATE DATABASE CompanyDatabase;

/*  Create Employees Table
    FullName        TEXT,
    Salary          INT,
    JobPosition     TEXT,
    PhoneExtension  TEXT,
    IsPartTime      BOOLEAN
*/
CREATE TABLE "Employees" (
  "FullName"        TEXT NOT NULL,
  "Salary"          INT,
  "JobPosition"     TEXT NOT NULL,
  "PhoneExtension"  TEXT,
  "IsPartTime"      BOOLEAN,
  "Id"              SERIAL PRIMARY KEY
);

-- Insert Dummy Rows
-- Dummy 1
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 1000, 'Clock Watcher', '1234', true);

-- Dummy 2
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jenny Jenny',2000,'HR Rep','5309', false);

-- Dummy 3
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Brenden Ramos',485,'Cook','0166',true);

-- Dummy 4
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Paula Bevan',492,'Cook','0170',true);

-- Dummy 5
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Latisha Kerr',2992,'Occupational Therapist','0169',false);

-- Dummy 6
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Fynley Grey',2568,'Mechanical Engineer','0161',false);

-- Dummy 7
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lexi-Mai Winters',1704,'Mathematician','0187',true);

-- Dummy 8
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mahnoor Noel',2588,'Writer','20156',false);

-- Dummy 9
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Valerie Yates',1049,'Logistician','0162',false);

-- Dummy 10
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mohamad Wharton',793,'Psychologist','0197',true);

-- Select all columns for all employees
SELECT * FROM "Employees";

-- Select only the full names and phone extensions for only full time employees
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = true;

-- Insert a new part time employee, as a software developer with a salary of 450.
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Earl McIntosh',450,'Software Developer','0667',true);

-- Update all cooks to have a salary of 500
UPDATE "Employees"
SET "Salary" = 500
WHERE "JobPosition" = 'Cook';

-- Delete Lazy Larry
DELETE FROM "Employees"
WHERE "FullName" = 'Lazy Larry';

-- Add Column ParkingSpot as VARCHAR(10)
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);


