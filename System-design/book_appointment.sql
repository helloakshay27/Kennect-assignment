-- Create a new database
CREATE DATABASE IF NOT EXISTS book_appointment;

-- Switch to the newly created database
USE book_appointment;

-- Create the Patient table
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact VARCHAR(20)
);

-- Create the Doctor table
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Specialty VARCHAR(50)
);

-- Create the Clinic table
CREATE TABLE Clinic (
    ClinicID INT PRIMARY KEY,
    Name VARCHAR(255),
    Location VARCHAR(255)
);

-- Create the Appointment table
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    ClinicID INT,
    TimeSlot DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (ClinicID) REFERENCES Clinic(ClinicID)
);
