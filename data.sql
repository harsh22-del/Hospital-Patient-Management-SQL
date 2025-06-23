-- Patients
INSERT INTO Patients (name, gender, age, contact, admission_date)
VALUES 
('Ravi Kumar', 'Male', 45, '9876543210', '2024-06-01'),
('Priya Sharma', 'Female', 30, '9123456780', '2024-06-05'),
('Anil Singh', 'Male', 60, '9988776655', '2024-06-10');

-- Doctors
INSERT INTO Doctors (name, specialization, department, contact)
VALUES 
('Dr. Mehta', 'Cardiologist', 'Cardiology', '9001122334'),
('Dr. Rani', 'Neurologist', 'Neurology', '9011223344'),
('Dr. Joshi', 'General Physician', 'General', '9022334455');

-- Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, diagnosis)
VALUES 
(1, 1, '2024-06-01', 'High blood pressure'),
(2, 2, '2024-06-06', 'Migraine'),
(3, 3, '2024-06-11', 'Fever and weakness'),
(1, 3, '2024-06-12', 'Flu');

-- Treatments
INSERT INTO Treatments (appointment_id, treatment_description, treatment_cost)
VALUES 
(1, 'Medication for blood pressure', 1200.00),
(2, 'MRI Scan and medication', 5000.00),
(3, 'Basic blood test and medication', 800.00),
(4, 'Antibiotics and rest', 900.00);

-- Bills
INSERT INTO Bills (patient_id, total_amount, payment_status, bill_date)
VALUES 
(1, 2100.00, 'Paid', '2024-06-12'),
(2, 5000.00, 'Pending', '2024-06-06'),
(3, 800.00, 'Paid', '2024-06-11');
