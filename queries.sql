-- 1. List all patients with their doctors and diagnosis
SELECT p.name AS patient, d.name AS doctor, a.diagnosis
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- 2. Total revenue from all treatments
SELECT SUM(treatment_cost) AS total_revenue
FROM Treatments;

-- 3. Top 2 doctors by number of appointments
SELECT d.name, COUNT(*) AS total_appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.name
ORDER BY total_appointments DESC
LIMIT 2;

-- 4. Patients with more than 1 appointment
SELECT p.name, COUNT(*) AS appointment_count
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
GROUP BY p.name
HAVING COUNT(*) > 1;

-- 5. Unpaid or pending bills
SELECT * FROM Bills
WHERE payment_status != 'Paid';
