PatientID (INT): Unique identifier for each patient.
BillDate (DATE): Date of the medical bill.
TotalCost (DECIMAL): Total cost of the medical bill.
InsuranceCoverage (DECIMAL): Amount covered by insurance.
PatientPayment (DECIMAL): Amount paid by the patient.
SQL Code:

-- Create a table for medical billing records
CREATE TABLE MedicalBilling (
PatientID INT,
BillDate DATE,
TotalCost DECIMAL(10,2),
InsuranceCoverage DECIMAL(10,2),
PatientPayment DECIMAL(10,2)
);

-- Insert sample data into the table
INSERT INTO MedicalBilling (PatientID, BillDate, TotalCost, InsuranceCoverage, PatientPayment)
VALUES
(1, '2022-01-15', 250.00, 200.00, 50.00),
(2, '2022-02-20', 500.00, 400.00, 100.00),
(3, '2022-03-10', 1000.00, 800.00, 200.00),
(4, '2022-04-05', 750.00, 500.00, 250.00),
(5, '2022-05-12', 1200.00, 1000.00, 200.00);

-- Calculate the total revenue
SELECT SUM(TotalCost) AS TotalRevenue
FROM MedicalBilling;

-- Calculate the average patient payment
SELECT AVG(PatientPayment) AS AveragePatientPayment
FROM MedicalBilling;

-- Calculate the insurance coverage percentage
SELECT (SUM(InsuranceCoverage) / SUM(TotalCost)) * 100 AS InsuranceCoveragePercentage
FROM MedicalBilling;

-- Retrieve the top 5 highest billed patients
SELECT
PatientID,
TotalCost
FROM
MedicalBilling
ORDER BY
TotalCost DESC
LIMIT 5;