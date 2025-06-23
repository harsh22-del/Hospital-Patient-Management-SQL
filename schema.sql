-- 1. Patients Table
CREATE TABLE Patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    contact VARCHAR(20),
    admission_date DATE
);

-- 2. Doctors Table
CREATE TABLE Doctors (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(50),
    department VARCHAR(50),
    contact VARCHAR(20)
);

-- 3. Appointments Table
CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_date DATE,
    diagnosis TEXT
);

-- 4. Treatments Table
CREATE TABLE Treatments (
    treatment_id SERIAL PRIMARY KEY,
    appointment_id INT REFERENCES Appointments(appointment_id),
    treatment_description TEXT,
    treatment_cost DECIMAL(10,2)
);

-- 5. Bills Table
CREATE TABLE Bills (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    bill_date DATE
);


