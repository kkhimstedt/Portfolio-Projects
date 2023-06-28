PatientID (INT): Unique identifier for each patient.
Age (INT): Age of the patient.
Gender (VARCHAR): Gender of the patient.
BloodType (VARCHAR): Blood type of the patient.
MedicalCondition (VARCHAR): Medical condition of the patient.
Medication (VARCHAR): Medication prescribed to the patient.
AppointmentDate (DATE): Date of the patient's appointment.
Doctor (VARCHAR): Name of the doctor for the appointment.
Clinic (VARCHAR): Name of the clinic where the appointment took place.

SQL Code:

-- Create a table for the patient records
CREATE TABLE PatientRecords (
PatientID INT PRIMARY KEY,
Age INT,
Gender VARCHAR(10),
BloodType VARCHAR(10),
MedicalCondition VARCHAR(100),
Medication VARCHAR(100),
AppointmentDate DATE,
Doctor VARCHAR(50),
Clinic VARCHAR(50)
);

-- Insert sample data into the table
INSERT INTO PatientRecords (PatientID, Age, Gender, BloodType, MedicalCondition, Medication, AppointmentDate, Doctor, Clinic)
VALUES
(1, 45, 'Male', 'A+', 'Hypertension', 'Lisinopril', '2022-01-15', 'Dr. Johnson', 'ABC Clinic'),
(2, 32, 'Female', 'O-', 'Diabetes', 'Metformin', '2022-02-20', 'Dr. Anderson', 'XYZ Clinic'),
(3, 50, 'Male', 'B+', 'Arthritis', 'Ibuprofen', '2022-03-10', 'Dr. Wilson', 'DEF Clinic'),
(4, 28, 'Female', 'AB+', 'Asthma', 'Albuterol', '2022-04-05', 'Dr. Lee', 'GHI Clinic'),
(5, 60, 'Male', 'O+', 'Heart Disease', 'Aspirin', '2022-05-12', 'Dr. Smith', 'JKL Clinic');

-- Sample queries for analysis

-- 1. Count the number of patients by medical condition
SELECT MedicalCondition, COUNT(*) AS PatientCount
FROM PatientRecords
GROUP BY MedicalCondition;

-- 2. Find the most common medications prescribed
SELECT Medication, COUNT(*) AS PrescriptionCount
FROM PatientRecords
GROUP BY Medication
ORDER BY PrescriptionCount DESC
LIMIT 5;

-- 3. Calculate the average age of patients by gender
SELECT Gender, AVG(Age) AS AverageAge
FROM PatientRecords
GROUP BY Gender;

