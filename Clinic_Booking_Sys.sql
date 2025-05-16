CREATE DATABASE Clinic_Booking;
USE Clinic_Booking;
-- Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(20) UNIQUE, -- Ensure each patient has a unique contact number
    email VARCHAR(100) UNIQUE,        -- Ensure each patient has a unique email
    address VARCHAR(255),
    medical_history TEXT,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    contact_number VARCHAR(20) UNIQUE, -- Ensure each doctor has a unique contact number
    email VARCHAR(100) UNIQUE         -- Ensure each doctor has a unique email
);

-- Services Table
CREATE TABLE Services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(100) NOT NULL UNIQUE, -- Ensure each service name is unique
    description TEXT,
    duration_minutes INT                      -- Expected duration of the service in minutes
);

-- Time_Slots Table (Represents predefined availability, might be redundant with Appointments but useful for initial scheduling)
CREATE TABLE Time_Slots (
    slot_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT NOT NULL,
    start_datetime DATETIME NOT NULL,
    end_datetime DATETIME NOT NULL,
    is_available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_datetime DATETIME NOT NULL,
    appointment_type VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Scheduled', -- e.g., Scheduled, Confirmed, Cancelled, Completed
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Staff Table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    contact_number VARCHAR(20) UNIQUE, -- Ensure each staff member has a unique contact number
    email VARCHAR(100) UNIQUE         -- Ensure each staff member has a unique email
);

-- Users Table (For authentication and authorization)
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE, -- Ensure usernames are unique
    password_hash VARCHAR(255) NOT NULL, -- Store hashed passwords
    role VARCHAR(20) NOT NULL,          -- e.g., Patient, Doctor, Receptionist
    related_entity_id INT NOT NULL,     -- Links to the specific patient_id, doctor_id, or staff_id
    UNIQUE (role, related_entity_id)     -- Ensure a user role is uniquely linked to an entity
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Pending', -- For instance,Pending, Paid, Refunded
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insurance_Providers Table
CREATE TABLE Insurance_Providers (
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    provider_name VARCHAR(100) NOT NULL UNIQUE, -- Ensure provider names are unique
    contact_information TEXT
);

-- Patient_Insurance Table (Many-to-Many relationship between Patients and Insurance_Providers)
CREATE TABLE Patient_Insurance (
    patient_id INT NOT NULL,
    provider_id INT NOT NULL,
    policy_number VARCHAR(100),
    PRIMARY KEY (patient_id, provider_id), -- Composite primary key
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES Insurance_Providers(provider_id)
);

-- Appointment_Rooms Table (Many-to-Many relationship between Appointments and table)
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(50) NOT NULL UNIQUE, -- Ensure room names are unique
    capacity INT
);

CREATE TABLE Appointment_Rooms (
    appointment_id INT NOT NULL,
    room_id INT NOT NULL,
    PRIMARY KEY (appointment_id, room_id), -- Composite primary key
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Prescriptions Table.
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    medication_name VARCHAR(100) NOT NULL,
    dosage VARCHAR(50),
    frequency VARCHAR(50),
    start_date DATE,
    end_date DATE,
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Medical_Records Table
CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    appointment_id INT, -- May be NULL if a record is created outside an appointment
    record_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    diagnosis TEXT,
    treatment TEXT,
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
