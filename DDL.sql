CREATE DATABASE Hospital_Database_Management_System_With_Patients_Treatment_Analysis;
USE Hospital_Database_Management_System_With_Patients_Treatment_Analysis;


-- Create a Department Table
CREATE TABLE Department (
    Department_ID VARCHAR(50) PRIMARY KEY,
    Department_Name VARCHAR(255),
    Department_Description VARCHAR(255)
);
INSERT INTO Department (Department_ID, Department_Name,	Department_Description) VALUES ('Dpt01',	'Cardiology',	'Focuses on heart-related diseases and treatments'); 
INSERT INTO Department (Department_ID, Department_Name,	Department_Description) VALUES ('Dpt02',	'Neurology',	'Specializes in brain, spinal cord, and nerve disorders');
INSERT INTO Department (Department_ID, Department_Name,	Department_Description) VALUES ('Dpt03',	'Orthopedics',	'Deals with musculoskeletal system issues'); 
INSERT INTO Department (Department_ID, Department_Name,	Department_Description) VALUES ('Dpt04',	'Pediatrics',	'Provides care for infants, children, and adolescents'); 
INSERT INTO Department (Department_ID, Department_Name,	Department_Description) VALUES ('Dpt05',	'Oncology',	'Concentrates on cancer diagnosis and treatment'); 

-- Create a Doctor's Table
CREATE TABLE Doctor (
    Doctor_ID VARCHAR(5) PRIMARY KEY,
    Doctor_Name VARCHAR(255),
    Speciality VARCHAR(255),
    Qualification VARCHAR(255),
    Doctor_Contact VARCHAR(30),
    Department_ID VARCHAR(10),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D001', 'Wayne Meyer', 'Cardiology', 'MD in Pediatrics', '509.010.3466x987', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D002', 'Joshua Harris', 'Oncology', 'MD in Pediatrics', '918-575-3259', 'Dpt04');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D003', 'Karina Reid', 'Cardiology', 'PhD in Medicine', '001-090-992-9438x025', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D004', 'Garrett Frank', 'Pediatrics', 'MSc in Cardiology', '573-046-7480x712', 'Dpt05');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D005', 'James Martin', 'Orthopedics', 'MBBS', '363.448.9457x1529', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D006', 'Tracy Chapman', 'Orthopedics', 'MD', '(338)773-9605x2359', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D007', 'Steven Cox', 'Pediatrics', 'MSc in Cardiology', '(288)130-5986x58681', 'Dpt04');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D008', 'Angel Castaneda', 'Pediatrics', 'PhD in Medicine', '904.689.0391', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D009', 'Joseph Miller', 'Orthopedics', 'MD', '001-050-956-8199x072', 'Dpt01');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D010', 'Kenneth Ruiz', 'Neurology', 'MD in Pediatrics', '(139)415-7348x9753', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D011', 'Nathan Bautista', 'Pediatrics', 'MD in Pediatrics', '844-908-2803', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D012', 'Mr. Tyler Lucas', 'Pediatrics', 'MD in Pediatrics', '+1-851-030-7734', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D013', 'Sara Smith', 'Orthopedics', 'MD in Pediatrics', '614.243.7269', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D014', 'Ronald Carter', 'Neurology', 'MSc in Cardiology', '629.917.0633x2024', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D015', 'Bridget Green', 'Orthopedics', 'MBBS', '001-622-137-2760', 'Dpt02');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D016', 'Edward Petersen', 'Orthopedics', 'MD', '246-023-1348x31750', 'Dpt01');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D017', 'Brenda Brown', 'Orthopedics', 'MD', '(030)924-3078', 'Dpt03');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D018', 'James Harris', 'Oncology', 'MBBS', '001-023-905-7419x29267', 'Dpt01');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D019', 'Robert Brown', 'Oncology', 'MD in Pediatrics', '(295)458-9150x9775', 'Dpt01');
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Speciality, Qualification, Doctor_Contact, Department_ID) VALUES ('D020', 'Ariana Bautista', 'Neurology', 'MD in Pediatrics', '063.819.4608', 'Dpt04');


-- Create a Patient Table
CREATE TABLE Patient (
    Patient_ID VARCHAR(6)  PRIMARY KEY,
    Patient_Name VARCHAR(255),
    Patient_DOB DATE,
    Medical VARCHAR(255),
    Patient_Contact VARCHAR(20)
);
 
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P001', 'Frederick Solis', '1928-11-07', 'None', '858-784-2944');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P002', 'Barbara Byrd', '1973-03-09', 'Diabetes', '176-773-3420');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P003', 'Jacob Joseph', '1971-06-10', 'Hypertension', '631-405-4422');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P004', 'Brooke Carson', '1957-02-19', 'Asthma', '613-322-9476');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P005', 'Jeffery Hughes', '1995-02-26', 'Heart Disease', '305-930-4976');INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P006', 'Margaret Wilson', '1963-04-24', 'Heart Disease', '368-676-1518');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P007', 'Joseph Davis', '2000-11-09', 'Heart Disease', '695-273-1723');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P008', 'John Preston', '1958-11-16', 'Hypertension', '604-759-4003');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P009', 'Chase Osborne', '1949-10-17', 'None', '350-491-4297');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P010', 'Juan Bauer', '1996-05-15', 'Hypertension', '777-178-4535');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P011', 'Jennifer Wilson', '2006-09-23', 'Heart Disease', '438-956-1644');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P012', 'Michael Little', '1957-12-11', 'None', '549-660-5034');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P013', 'Sandra Sexton', '1979-10-15', 'None', '762-962-4634');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P014', 'Steven Mason', '1975-12-14', 'Heart Disease', '112-838-3000');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P015', 'Kim Henderson', '1926-08-16', 'Hypertension', '155-668-8911');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P016', 'Anthony Little', '2001-02-05', 'Diabetes', '321-940-2902');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P017', 'Kimberly Norton', '1962-03-27', 'Hypertension', '205-776-2539');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P018', 'Judy Reeves', '1941-07-14', 'Heart Disease', '118-112-5340');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P019', 'Teresa Buckley', '1954-09-06', 'Diabetes', '196-393-7431');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P020', 'Steven Weaver', '1938-04-10', 'Asthma', '188-780-3115');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P021', 'Crystal Freeman', '1942-03-12', 'Hypertension', '935-469-5387');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P022', 'Vickie Washington', '1998-02-18', 'None', '798-366-9774');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P023', 'Kyle Smith', '1997-10-12', 'Heart Disease', '826-781-2992');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P024', 'Donald Ferguson', '2023-06-01', 'Hypertension', '770-488-9985');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P025', 'Sydney Johnson', '2007-09-07', 'Hypertension', '421-916-7513');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P026', 'Helen Carr', '2023-09-29', 'Heart Disease', '424-847-4782');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P027', 'Sharon Wu', '1994-05-02', 'Diabetes', '859-286-2458');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P028', 'Jason Murphy', '1956-09-30', 'Hypertension', '748-495-7540');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P029', 'Kristin Gross', '2015-07-22', 'Heart Disease', '203-979-2759');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P030', 'Ashley Allen', '1939-11-25', 'Heart Disease', '248-924-1568');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P031', 'Alexandra Hays', '1953-08-14', 'Asthma', '847-652-1000');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P032', 'Donna Campbell', '2006-01-01', 'Diabetes', '334-248-5018');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P033', 'Mark Vargas', '1922-11-23', 'Diabetes', '272-722-7059');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P034', 'Kathy Hansen', '1995-03-14', 'None', '920-212-8853');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P035', 'Stephanie Pham', '1944-08-04', 'None', '531-452-9329');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P036', 'Kelsey Lane', '1926-06-27', 'Heart Disease', '472-278-2253');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P037', 'Jackson Peck', '1948-07-30', 'Heart Disease', '236-844-9527');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P038', 'Richard Shannon', '1974-06-04', 'None', '232-577-5915');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P039', 'Corey Hall', '1989-09-21', 'Asthma', '139-812-8725');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P040', 'Teresa Pearson', '1983-08-21', 'Asthma', '604-577-2437');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P041', 'Virginia Patton', '1943-12-24', 'Heart Disease', '467-454-7954');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P042', 'Linda Morgan', '1986-07-25', 'Heart Disease', '520-339-9080');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P043', 'Darlene Adams', '1947-12-27', 'Diabetes', '678-323-4681');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P044', 'Aaron Mclaughlin', '1941-03-17', 'Hypertension', '265-854-8539');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P045', 'Tyler Luna DVM', '1926-07-18', 'None', '677-758-1849');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P046', 'Richard Rodriguez', '2003-09-01', 'None', '418-718-4499');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P047', 'Sarah Castro', '2005-05-04', 'Hypertension', '892-707-9774');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P048', 'Robert Hill', '1954-10-18', 'Diabetes', '605-913-4981');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P049', 'Barbara Evans', '1926-08-13', 'Hypertension', '358-939-4933');
INSERT INTO Patient (Patient_ID, Patient_Name, Patient_DOB, Medical, Patient_Contact) VALUES ('P050', 'Terry Adams', '2011-08-14', 'Asthma', '214-846-8155');

-- Create an Appointment Table
CREATE TABLE Appointment (
    Appointment_ID VARCHAR(6) PRIMARY KEY,
    Appointment_Date DATE,
    Appointment_Time TIME,
    Patient_ID VARCHAR(6),
    Doctor_ID VARCHAR(6),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0001', '2023-04-21', '9:00', 'P045', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0002', '2023-08-23', '15:00', 'P036', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0003', '2023-10-23', '17:00', 'P016', 'D001');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0004', '2023-03-08', '10:00', 'P030', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0005', '2023-06-12', '16:00', 'P015', 'D001');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0006', '2023-01-23', '16:00', 'P003', 'D019');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0007', '2023-05-05', '16:00', 'P035', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0008', '2023-02-25', '14:00', 'P022', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0009', '2023-01-23', '15:00', 'P046', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0010', '2023-08-24', '14:00', 'P019', 'D002');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0011', '2023-05-21', '11:00', 'P003', 'D017');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0012', '2023-10-24', '13:00', 'P001', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0013', '2023-01-11', '14:00', 'P041', 'D004');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0014', '2023-08-24', '16:00', 'P049', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0015', '2023-10-29', '10:00', 'P003', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0016', '2023-01-05', '16:00', 'P021', 'D008');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0017', '2023-06-22', '14:00', 'P030', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0018', '2023-12-05', '17:00', 'P008', 'D008');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0019', '2023-11-23', '9:00', 'P001', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0020', '2023-02-08', '10:00', 'P045', 'D013');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0021', '2023-04-08', '10:00', 'P016', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0022', '2023-06-28', '9:00', 'P028', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0023', '2023-05-05', '16:00', 'P006', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0024', '2023-01-14', '16:00', 'P050', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0025', '2023-12-23', '10:00', 'P036', 'D008');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0026', '2023-01-07', '10:00', 'P034', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0027', '2023-10-01', '16:00', 'P001', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0028', '2023-12-26', '17:00', 'P025', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0029', '2023-12-21', '12:00', 'P018', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0030', '2023-03-17', '16:00', 'P002', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0031', '2023-12-03', '17:00', 'P020', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0032', '2023-05-19', '13:00', 'P033', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0033', '2023-10-30', '16:00', 'P025', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0034', '2023-03-15', '11:00', 'P012', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0035', '2023-11-23', '14:00', 'P021', 'D017');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0036', '2023-12-07', '11:00', 'P039', 'D016');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0037', '2023-09-22', '17:00', 'P047', 'D004');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0038', '2023-09-08', '9:00', 'P045', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0039', '2023-12-28', '17:00', 'P023', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0040', '2023-05-09', '15:00', 'P024', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0041', '2023-10-08', '13:00', 'P019', 'D003');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0042', '2023-10-29', '16:00', 'P036', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0043', '2023-08-07', '13:00', 'P050', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0044', '2023-02-10', '12:00', 'P032', 'D001');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0045', '2023-06-15', '12:00', 'P024', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0046', '2023-01-09', '9:00', 'P009', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0047', '2023-05-05', '12:00', 'P009', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0048', '2023-08-26', '16:00', 'P013', 'D013');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0049', '2023-09-17', '11:00', 'P014', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0050', '2023-07-10', '9:00', 'P021', 'D013');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0051', '2023-07-03', '12:00', 'P047', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0052', '2023-02-17', '9:00', 'P003', 'D006');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0053', '2023-09-02', '9:00', 'P014', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0054', '2023-12-20', '14:00', 'P014', 'D004');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0055', '2023-12-17', '12:00', 'P013', 'D004');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0056', '2023-07-09', '16:00', 'P037', 'D002');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0057', '2023-12-03', '17:00', 'P008', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0058', '2023-06-27', '11:00', 'P029', 'D019');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0059', '2023-07-15', '13:00', 'P007', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0060', '2023-09-05', '17:00', 'P004', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0061', '2023-05-23', '11:00', 'P048', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0062', '2023-06-07', '9:00', 'P040', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0063', '2023-12-07', '9:00', 'P035', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0064', '2023-05-27', '12:00', 'P001', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0065', '2023-11-02', '17:00', 'P028', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0066', '2023-11-01', '17:00', 'P026', 'D002');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0067', '2023-06-13', '9:00', 'P012', 'D013');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0068', '2023-08-19', '12:00', 'P004', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0069', '2023-03-29', '10:00', 'P041', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0070', '2023-05-19', '15:00', 'P043', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0071', '2023-07-09', '10:00', 'P035', 'D006');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0072', '2023-03-16', '12:00', 'P021', 'D013');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0073', '2023-03-19', '11:00', 'P008', 'D015');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0074', '2023-12-23', '17:00', 'P045', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0075', '2023-01-04', '14:00', 'P049', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0076', '2023-09-09', '14:00', 'P022', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0077', '2023-03-17', '9:00', 'P047', 'D012');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0078', '2023-12-26', '14:00', 'P050', 'D017');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0079', '2023-10-08', '16:00', 'P023', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0080', '2023-01-25', '16:00', 'P042', 'D004');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0081', '2023-07-12', '10:00', 'P029', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0082', '2023-04-20', '9:00', 'P025', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0083', '2023-05-30', '12:00', 'P034', 'D007');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0084', '2023-07-15', '12:00', 'P032', 'D002');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0085', '2023-07-30', '15:00', 'P026', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0086', '2023-12-17', '11:00', 'P016', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0087', '2023-06-10', '16:00', 'P018', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0088', '2023-05-16', '12:00', 'P047', 'D003');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0089', '2023-08-03', '11:00', 'P046', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0090', '2023-07-31', '12:00', 'P005', 'D009');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0091', '2023-11-26', '15:00', 'P030', 'D018');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0092', '2023-10-21', '12:00', 'P016', 'D014');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0093', '2023-07-08', '12:00', 'P046', 'D003');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0094', '2023-10-03', '17:00', 'P010', 'D010');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0095', '2023-09-08', '10:00', 'P008', 'D006');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0096', '2023-03-03', '11:00', 'P050', 'D005');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0097', '2023-02-12', '15:00', 'P020', 'D011');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0098', '2023-07-02', '15:00', 'P045', 'D002');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0099', '2023-12-30', '13:00', 'P012', 'D020');
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Appointment_Time, Patient_ID, Doctor_ID) VALUES ('A0100', '2023-01-30', '17:00', 'P025', 'D015');

-- Create Medical Equipment Table
CREATE TABLE Medical_Equipment (
    Equipment_ID VARCHAR(6) PRIMARY KEY,
    Equipment_Name VARCHAR(25),
    Equipment_Description VARCHAR(255),
    Maintance_Record VARCHAR(255),
    Department_ID VARCHAR(6),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E001', 'ECG Monitor', 'Used for ecg monitor', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E002', 'ECG Monitor', 'Used for ecg monitor', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E003', 'ECG Monitor', 'Used for ecg monitor', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E004', 'Ventilator', 'Used for ventilator', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E005', 'MRI Scanner', 'Used for mri scanner', 'Regularly serviced');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E006', 'X-ray Machine', 'Used for x-ray machine', 'Underwent major repair recently');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E007', 'Ventilator', 'Used for ventilator', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E008', 'MRI Scanner', 'Used for mri scanner', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E009', 'ECG Monitor', 'Used for ecg monitor', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E010', 'Ultrasound Machine', 'Used for ultrasound machine', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E011', 'MRI Scanner', 'Used for mri scanner', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E012', 'ECG Monitor', 'Used for ecg monitor', 'Underwent major repair recently');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E013', 'X-ray Machine', 'Used for x-ray machine', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E014', 'X-ray Machine', 'Used for x-ray machine', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E015', 'Ventilator', 'Used for ventilator', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E016', 'ECG Monitor', 'Used for ecg monitor', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E017', 'Ultrasound Machine', 'Used for ultrasound machine', 'Underwent major repair recently');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E018', 'ECG Monitor', 'Used for ecg monitor', 'Underwent major repair recently');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E019', 'MRI Scanner', 'Used for mri scanner', 'Regularly serviced');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E020', 'MRI Scanner', 'Used for mri scanner', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E021', 'X-ray Machine', 'Used for x-ray machine', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E022', 'MRI Scanner', 'Used for mri scanner', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E023', 'Ventilator', 'Used for ventilator', 'Underwent major repair recently');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E024', 'ECG Monitor', 'Used for ecg monitor', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E025', 'Ventilator', 'Used for ventilator', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E026', 'Ventilator', 'Used for ventilator', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E027', 'Ultrasound Machine', 'Used for ultrasound machine', 'In excellent condition');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E028', 'ECG Monitor', 'Used for ecg monitor', 'Calibrated last month');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E029', 'Ventilator', 'Used for ventilator', 'Inspected for compliance');
INSERT INTO Medical_Equipment (Equipment_ID, Equipment_Name, Equipment_Description, Maintance_Record) VALUES ('E030', 'X-ray Machine', 'Used for x-ray machine', 'Underwent major repair recently');

-- Create a Diagnosis Table
CREATE TABLE Diagnosis (
    Diagnosis_ID VARCHAR(6) PRIMARY KEY,
    Diagnosis_Date DATE,
    Disease VARCHAR(25),
    Patient_ID VARCHAR(6),
    Doctor_ID VARCHAR(6),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0001', '2023-01-25', 'Diabetes Type 2', 'P032', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0002', '2023-02-20', 'Coronary Artery Disease', 'P040', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0003', '2023-05-02', 'Hypertension', 'P018', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0004', '2023-09-28', 'Osteoarthritis', 'P011', 'D004');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0005', '2023-02-12', 'Diabetes Type 2', 'P003', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0006', '2023-02-26', 'Coronary Artery Disease', 'P039', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0007', '2023-03-18', 'Asthma', 'P033', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0008', '2023-10-03', 'Diabetes Type 2', 'P006', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0009', '2023-04-13', 'Hypertension', 'P011', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0010', '2023-04-07', 'Diabetes Type 2', 'P033', 'D004');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0011', '2023-05-27', 'Coronary Artery Disease', 'P016', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0012', '2023-01-23', 'Asthma', 'P010', 'D011');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0013', '2023-04-11', 'Hypertension', 'P049', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0014', '2023-02-07', 'Hypertension', 'P021', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0015', '2023-07-02', 'Hypertension', 'P014', 'D006');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0016', '2023-06-18', 'Hypertension', 'P001', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0017', '2023-03-19', 'Diabetes Type 2', 'P044', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0018', '2023-11-15', 'Diabetes Type 2', 'P046', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0019', '2023-07-05', 'Osteoarthritis', 'P011', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0020', '2023-10-14', 'Coronary Artery Disease', 'P031', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0021', '2023-10-25', 'Coronary Artery Disease', 'P024', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0022', '2023-04-27', 'Diabetes Type 2', 'P017', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0023', '2023-03-08', 'Osteoarthritis', 'P002', 'D017');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0024', '2023-04-25', 'Hypertension', 'P004', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0025', '2023-07-25', 'Hypertension', 'P003', 'D010');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0026', '2023-03-13', 'Asthma', 'P011', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0027', '2023-03-24', 'Coronary Artery Disease', 'P019', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0028', '2023-07-05', 'Osteoarthritis', 'P038', 'D016');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0029', '2023-01-23', 'Osteoarthritis', 'P002', 'D015');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0030', '2023-09-23', 'Coronary Artery Disease', 'P024', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0031', '2023-05-04', 'Diabetes Type 2', 'P036', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0032', '2023-02-17', 'Diabetes Type 2', 'P032', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0033', '2023-01-28', 'Osteoarthritis', 'P031', 'D020');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0034', '2023-01-30', 'Diabetes Type 2', 'P040', 'D017');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0035', '2023-08-26', 'Osteoarthritis', 'P048', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0036', '2023-04-12', 'Diabetes Type 2', 'P021', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0037', '2023-10-07', 'Diabetes Type 2', 'P043', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0038', '2023-03-06', 'Osteoarthritis', 'P020', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0039', '2023-02-28', 'Hypertension', 'P023', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0040', '2023-01-02', 'Coronary Artery Disease', 'P047', 'D020');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0041', '2023-03-27', 'Diabetes Type 2', 'P048', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0042', '2023-10-18', 'Coronary Artery Disease', 'P017', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0043', '2023-03-11', 'Asthma', 'P038', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0044', '2023-06-30', 'Coronary Artery Disease', 'P027', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0045', '2023-02-10', 'Asthma', 'P017', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0046', '2023-07-30', 'Diabetes Type 2', 'P031', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0047', '2023-10-21', 'Osteoarthritis', 'P035', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0048', '2023-08-27', 'Asthma', 'P025', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0049', '2023-09-11', 'Coronary Artery Disease', 'P015', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0050', '2023-05-10', 'Coronary Artery Disease', 'P019', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0051', '2023-03-23', 'Diabetes Type 2', 'P024', 'D016');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0052', '2023-10-04', 'Hypertension', 'P015', 'D011');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0053', '2023-08-18', 'Hypertension', 'P013', 'D015');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0054', '2023-05-09', 'Hypertension', 'P041', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0055', '2023-09-28', 'Diabetes Type 2', 'P013', 'D020');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0056', '2023-05-14', 'Diabetes Type 2', 'P034', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0057', '2023-11-15', 'Diabetes Type 2', 'P014', 'D001');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0058', '2023-03-30', 'Diabetes Type 2', 'P036', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0059', '2023-05-05', 'Diabetes Type 2', 'P036', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0060', '2023-09-06', 'Osteoarthritis', 'P033', 'D017');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0061', '2023-01-21', 'Osteoarthritis', 'P023', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0062', '2023-09-03', 'Asthma', 'P018', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0063', '2023-07-10', 'Asthma', 'P035', 'D017');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0064', '2023-11-20', 'Coronary Artery Disease', 'P036', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0065', '2023-02-08', 'Asthma', 'P047', 'D010');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0066', '2023-08-22', 'Coronary Artery Disease', 'P025', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0067', '2023-02-09', 'Hypertension', 'P038', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0068', '2023-10-24', 'Coronary Artery Disease', 'P005', 'D015');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0069', '2023-04-21', 'Hypertension', 'P003', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0070', '2023-05-29', 'Diabetes Type 2', 'P046', 'D020');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0071', '2023-03-31', 'Hypertension', 'P038', 'D015');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0072', '2023-02-20', 'Coronary Artery Disease', 'P041', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0073', '2023-10-20', 'Osteoarthritis', 'P018', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0074', '2023-06-25', 'Hypertension', 'P005', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0075', '2023-07-20', 'Osteoarthritis', 'P027', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0076', '2023-08-17', 'Asthma', 'P041', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0077', '2023-02-27', 'Asthma', 'P039', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0078', '2023-05-05', 'Hypertension', 'P044', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0079', '2023-08-21', 'Coronary Artery Disease', 'P025', 'D015');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0080', '2023-05-13', 'Diabetes Type 2', 'P004', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0081', '2023-04-15', 'Osteoarthritis', 'P025', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0082', '2023-03-26', 'Hypertension', 'P027', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0083', '2023-08-01', 'Hypertension', 'P033', 'D003');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0084', '2023-01-27', 'Coronary Artery Disease', 'P005', 'D010');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0085', '2023-01-20', 'Diabetes Type 2', 'P034', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0086', '2023-10-18', 'Hypertension', 'P018', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0087', '2023-01-17', 'Asthma', 'P031', 'D012');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0088', '2023-08-27', 'Hypertension', 'P012', 'D008');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0089', '2023-01-11', 'Hypertension', 'P019', 'D014');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0090', '2023-06-04', 'Diabetes Type 2', 'P005', 'D019');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0091', '2023-01-13', 'Diabetes Type 2', 'P037', 'D011');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0092', '2023-09-24', 'Diabetes Type 2', 'P018', 'D002');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0093', '2023-08-30', 'Asthma', 'P009', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0094', '2023-10-29', 'Coronary Artery Disease', 'P045', 'D007');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0095', '2023-10-20', 'Osteoarthritis', 'P022', 'D010');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0096', '2023-11-20', 'Asthma', 'P021', 'D009');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0097', '2023-01-13', 'Osteoarthritis', 'P035', 'D018');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0098', '2023-09-27', 'Asthma', 'P039', 'D005');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0099', '2023-05-26', 'Coronary Artery Disease', 'P003', 'D013');
INSERT INTO Diagnosis (Diagnosis_ID, Diagnosis_Date, Disease, Patient_ID, Doctor_ID) VALUES ('D0100', '2023-11-08', 'Asthma', 'P014', 'D005');

-- Create a Treatment Table
CREATE TABLE Treatment (
    Treatment_ID VARCHAR(6) PRIMARY KEY,
    Notes TEXT,
    Patient_ID VARCHAR(6),
    Doctor_ID VARCHAR(6),
    Treatment_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0001', 'Emergency treatment for injury', 'P033', 'D009', '2023-12-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0002', 'Routine check-up and consultation', 'P026', 'D012', '2023-12-17');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0003', 'Surgical procedure performed', 'P020', 'D017', '2023-12-31');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0004', 'Surgical procedure performed', 'P017', 'D015', '2023-12-02');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0005', 'Routine check-up and consultation', 'P034', 'D018', '2023-12-09');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0006', 'Routine check-up and consultation', 'P038', 'D018', '2023-12-14');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0007', 'Emergency treatment for injury', 'P008', 'D009', '2023-12-01');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0008', 'Routine check-up and consultation', 'P001', 'D012', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0009', 'Emergency treatment for injury', 'P004', 'D008', '2023-12-21');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0010', 'Routine check-up and consultation', 'P025', 'D002', '2023-12-03');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0011', 'Emergency treatment for injury', 'P049', 'D009', '2023-12-25');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0012', 'Physical therapy session', 'P020', 'D016', '2023-12-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0013', 'Diagnostic imaging analysis', 'P041', 'D016', '2023-11-28');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0014', 'Physical therapy session', 'P020', 'D014', '2023-11-27');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0015', 'Physical therapy session', 'P014', 'D001', '2023-12-13');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0016', 'Routine check-up and consultation', 'P028', 'D017', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0017', 'Surgical procedure performed', 'P026', 'D004', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0018', 'Routine check-up and consultation', 'P044', 'D015', '2023-12-02');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0019', 'Surgical procedure performed', 'P044', 'D019', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0020', 'Physical therapy session', 'P022', 'D018', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0021', 'Diagnostic imaging analysis', 'P011', 'D013', '2023-11-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0022', 'Surgical procedure performed', 'P049', 'D004', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0023', 'Routine check-up and consultation', 'P023', 'D017', '2023-11-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0024', 'Diagnostic imaging analysis', 'P005', 'D020', '2023-12-03');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0025', 'Diagnostic imaging analysis', 'P019', 'D019', '2023-12-16');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0026', 'Diagnostic imaging analysis', 'P002', 'D012', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0027', 'Physical therapy session', 'P014', 'D013', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0028', 'Physical therapy session', 'P026', 'D016', '2023-12-13');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0029', 'Routine check-up and consultation', 'P050', 'D012', '2023-12-15');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0030', 'Physical therapy session', 'P046', 'D016', '2023-12-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0031', 'Diagnostic imaging analysis', 'P036', 'D014', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0032', 'Emergency treatment for injury', 'P032', 'D004', '2023-11-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0033', 'Emergency treatment for injury', 'P002', 'D007', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0034', 'Diagnostic imaging analysis', 'P007', 'D011', '2023-12-22');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0035', 'Routine check-up and consultation', 'P019', 'D010', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0036', 'Routine check-up and consultation', 'P028', 'D010', '2023-12-14');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0037', 'Physical therapy session', 'P022', 'D012', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0038', 'Diagnostic imaging analysis', 'P028', 'D002', '2023-12-15');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0039', 'Routine check-up and consultation', 'P017', 'D004', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0040', 'Emergency treatment for injury', 'P045', 'D007', '2023-12-24');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0041', 'Surgical procedure performed', 'P014', 'D011', '2023-12-09');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0042', 'Emergency treatment for injury', 'P044', 'D005', '2023-11-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0043', 'Surgical procedure performed', 'P025', 'D010', '2023-12-31');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0044', 'Emergency treatment for injury', 'P010', 'D012', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0045', 'Routine check-up and consultation', 'P046', 'D013', '2023-12-02');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0046', 'Emergency treatment for injury', 'P011', 'D010', '2023-12-15');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0047', 'Surgical procedure performed', 'P036', 'D013', '2023-11-26');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0048', 'Routine check-up and consultation', 'P043', 'D005', '2023-12-21');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0049', 'Routine check-up and consultation', 'P014', 'D014', '2023-12-21');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0050', 'Surgical procedure performed', 'P020', 'D011', '2023-11-27');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0051', 'Diagnostic imaging analysis', 'P044', 'D018', '2023-12-15');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0052', 'Emergency treatment for injury', 'P046', 'D003', '2023-12-14');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0053', 'Surgical procedure performed', 'P005', 'D020', '2023-11-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0054', 'Surgical procedure performed', 'P005', 'D013', '2023-12-19');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0055', 'Surgical procedure performed', 'P031', 'D008', '2023-12-05');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0056', 'Diagnostic imaging analysis', 'P043', 'D002', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0057', 'Surgical procedure performed', 'P009', 'D015', '2023-12-22');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0058', 'Surgical procedure performed', 'P027', 'D003', '2023-12-19');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0059', 'Emergency treatment for injury', 'P034', 'D002', '2023-12-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0060', 'Routine check-up and consultation', 'P042', 'D007', '2023-12-14');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0061', 'Diagnostic imaging analysis', 'P023', 'D008', '2023-12-04');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0062', 'Emergency treatment for injury', 'P013', 'D005', '2023-12-24');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0063', 'Diagnostic imaging analysis', 'P049', 'D019', '2023-12-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0064', 'Physical therapy session', 'P008', 'D020', '2023-12-03');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0065', 'Diagnostic imaging analysis', 'P015', 'D020', '2023-12-15');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0066', 'Physical therapy session', 'P045', 'D005', '2023-11-26');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0067', 'Diagnostic imaging analysis', 'P025', 'D001', '2023-12-07');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0068', 'Emergency treatment for injury', 'P022', 'D015', '2023-12-16');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0069', 'Physical therapy session', 'P020', 'D020', '2023-11-24');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0070', 'Routine check-up and consultation', 'P004', 'D018', '2023-11-26');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0071', 'Diagnostic imaging analysis', 'P003', 'D017', '2023-12-18');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0072', 'Diagnostic imaging analysis', 'P007', 'D008', '2023-12-25');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0073', 'Routine check-up and consultation', 'P026', 'D013', '2023-12-20');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0074', 'Diagnostic imaging analysis', 'P002', 'D001', '2023-12-10');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0075', 'Emergency treatment for injury', 'P016', 'D002', '2023-12-03');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0076', 'Surgical procedure performed', 'P039', 'D012', '2023-12-18');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0077', 'Emergency treatment for injury', 'P049', 'D009', '2023-12-03');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0078', 'Physical therapy session', 'P009', 'D005', '2023-12-21');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0079', 'Surgical procedure performed', 'P001', 'D002', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0080', 'Surgical procedure performed', 'P049', 'D009', '2023-11-22');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0081', 'Emergency treatment for injury', 'P012', 'D002', '2023-11-25');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0082', 'Routine check-up and consultation', 'P005', 'D009', '2023-12-29');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0083', 'Diagnostic imaging analysis', 'P020', 'D002', '2023-12-01');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0084', 'Surgical procedure performed', 'P049', 'D007', '2023-12-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0085', 'Surgical procedure performed', 'P032', 'D011', '2023-12-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0086', 'Emergency treatment for injury', 'P049', 'D020', '2023-12-11');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0087', 'Physical therapy session', 'P018', 'D005', '2023-12-21');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0088', 'Physical therapy session', 'P010', 'D017', '2023-12-07');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0089', 'Surgical procedure performed', 'P035', 'D001', '2023-12-23');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0090', 'Routine check-up and consultation', 'P036', 'D015', '2023-12-19');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0091', 'Routine check-up and consultation', 'P016', 'D016', '2023-11-26');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0092', 'Emergency treatment for injury', 'P030', 'D015', '2023-12-25');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0093', 'Emergency treatment for injury', 'P012', 'D011', '2023-12-30');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0094', 'Emergency treatment for injury', 'P020', 'D018', '2023-12-22');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0095', 'Surgical procedure performed', 'P019', 'D013', '2023-12-20');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0096', 'Routine check-up and consultation', 'P020', 'D006', '2023-12-16');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0097', 'Surgical procedure performed', 'P019', 'D004', '2023-11-27');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0098', 'Routine check-up and consultation', 'P008', 'D014', '2023-12-17');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0099', 'Surgical procedure performed', 'P042', 'D002', '2023-12-22');
INSERT INTO Treatment (Treatment_ID, Notes, Patient_ID, Doctor_ID, Treatment_Date) VALUES ('T0100', 'Emergency treatment for injury', 'P012', 'D004', '2023-12-05');

-- Create a Medication Table
CREATE TABLE Medication (
    Medication_ID VARCHAR(6) PRIMARY KEY,
    Medication_Name VARCHAR(20),
    Dosages VARCHAR(20),
    Patient_ID VARCHAR(6),
    Doctor_ID VARCHAR(6),
    Prescription_Date DATE,
    Treatment_ID VARCHAR(6),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Treatment_ID) REFERENCES Treatment(Treatment_ID)
);

INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0001', 'Amoxicillin', '3 times a day', 'P048', 'D020', '2023-07-26', 'T0049');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0002', 'Lisinopril', '2 times a day', 'P029', 'D016', '2023-01-18', 'T0008');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0003', 'Lisinopril', '1 times a day', 'P035', 'D017', '2023-05-15', 'T0004');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0004', 'Ibuprofen', '2 times a day', 'P030', 'D016', '2023-08-28', 'T0028');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0005', 'Atorvastatin', '2 times a day', 'P043', 'D016', '2023-09-24', 'T0038');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0006', 'Metformin', '1 times a day', 'P024', 'D011', '2023-01-25', 'T0027');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0007', 'Amoxicillin', '2 times a day', 'P025', 'D009', '2023-07-30', 'T0094');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0008', 'Atorvastatin', '1 times a day', 'P014', 'D009', '2023-05-23', 'T0019');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0009', 'Lisinopril', '1 times a day', 'P009', 'D002', '2023-07-04', 'T0043');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0010', 'Metformin', '3 times a day', 'P009', 'D003', '2023-03-21', 'T0027');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0011', 'Amoxicillin', '2 times a day', 'P022', 'D005', '2023-10-23', 'T0014');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0012', 'Atorvastatin', '2 times a day', 'P050', 'D005', '2023-06-10', 'T0034');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0013', 'Atorvastatin', '1 times a day', 'P038', 'D002', '2023-02-27', 'T0024');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0014', 'Lisinopril', '3 times a day', 'P025', 'D010', '2023-01-19', 'T0091');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0015', 'Metformin', '1 times a day', 'P020', 'D020', '2023-01-29', 'T0015');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0016', 'Amoxicillin', '1 times a day', 'P045', 'D019', '2023-04-06', 'T0045');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0017', 'Metformin', '1 times a day', 'P026', 'D008', '2023-10-04', 'T0021');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0018', 'Metformin', '3 times a day', 'P004', 'D002', '2023-04-17', 'T0016');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0019', 'Lisinopril', '2 times a day', 'P036', 'D001', '2023-01-02', 'T0080');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0020', 'Atorvastatin', '1 times a day', 'P018', 'D019', '2023-05-23', 'T0085');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0021', 'Lisinopril', '2 times a day', 'P017', 'D019', '2023-02-23', 'T0040');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0022', 'Metformin', '1 times a day', 'P032', 'D008', '2023-11-02', 'T0037');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0023', 'Lisinopril', '2 times a day', 'P044', 'D017', '2023-08-29', 'T0010');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0024', 'Metformin', '2 times a day', 'P009', 'D017', '2023-06-04', 'T0056');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0025', 'Atorvastatin', '3 times a day', 'P028', 'D015', '2023-10-14', 'T0100');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0026', 'Metformin', '1 times a day', 'P045', 'D002', '2023-01-16', 'T0086');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0027', 'Atorvastatin', '3 times a day', 'P011', 'D018', '2023-08-18', 'T0040');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0028', 'Metformin', '1 times a day', 'P007', 'D014', '2023-03-03', 'T0055');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0029', 'Atorvastatin', '1 times a day', 'P017', 'D002', '2023-07-13', 'T0033');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0030', 'Ibuprofen', '1 times a day', 'P047', 'D004', '2023-08-01', 'T0064');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0031', 'Amoxicillin', '3 times a day', 'P014', 'D005', '2023-04-30', 'T0032');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0032', 'Ibuprofen', '1 times a day', 'P010', 'D017', '2023-09-08', 'T0028');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0033', 'Lisinopril', '2 times a day', 'P006', 'D010', '2023-04-12', 'T0085');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0034', 'Amoxicillin', '1 times a day', 'P037', 'D020', '2023-04-19', 'T0053');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0035', 'Metformin', '3 times a day', 'P035', 'D002', '2023-06-12', 'T0018');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0036', 'Ibuprofen', '2 times a day', 'P020', 'D016', '2023-07-30', 'T0012');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0037', 'Lisinopril', '2 times a day', 'P036', 'D012', '2023-03-28', 'T0073');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0038', 'Atorvastatin', '1 times a day', 'P012', 'D014', '2023-02-26', 'T0023');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0039', 'Atorvastatin', '2 times a day', 'P010', 'D009', '2023-08-22', 'T0075');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0040', 'Ibuprofen', '2 times a day', 'P021', 'D016', '2023-03-15', 'T0004');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0041', 'Atorvastatin', '3 times a day', 'P015', 'D010', '2023-06-29', 'T0071');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0042', 'Ibuprofen', '2 times a day', 'P039', 'D018', '2023-03-08', 'T0083');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0043', 'Lisinopril', '2 times a day', 'P008', 'D018', '2023-04-02', 'T0006');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0044', 'Ibuprofen', '2 times a day', 'P050', 'D010', '2023-09-07', 'T0032');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0045', 'Ibuprofen', '3 times a day', 'P037', 'D014', '2023-09-12', 'T0093');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0046', 'Metformin', '1 times a day', 'P005', 'D016', '2023-10-28', 'T0019');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0047', 'Metformin', '1 times a day', 'P049', 'D003', '2023-10-08', 'T0060');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0048', 'Amoxicillin', '3 times a day', 'P019', 'D007', '2023-04-27', 'T0019');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0049', 'Amoxicillin', '2 times a day', 'P040', 'D009', '2023-03-12', 'T0085');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0050', 'Atorvastatin', '3 times a day', 'P020', 'D020', '2023-03-12', 'T0025');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0051', 'Amoxicillin', '3 times a day', 'P009', 'D004', '2023-04-20', 'T0050');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0052', 'Amoxicillin', '2 times a day', 'P032', 'D012', '2023-10-21', 'T0050');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0053', 'Atorvastatin', '1 times a day', 'P031', 'D003', '2023-10-13', 'T0099');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0054', 'Amoxicillin', '2 times a day', 'P044', 'D016', '2023-05-11', 'T0025');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0055', 'Ibuprofen', '3 times a day', 'P038', 'D014', '2023-02-25', 'T0075');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0056', 'Amoxicillin', '2 times a day', 'P047', 'D020', '2023-08-21', 'T0059');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0057', 'Lisinopril', '3 times a day', 'P003', 'D007', '2023-05-06', 'T0050');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0058', 'Atorvastatin', '1 times a day', 'P002', 'D016', '2023-06-27', 'T0006');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0059', 'Amoxicillin', '3 times a day', 'P050', 'D003', '2023-07-26', 'T0005');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0060', 'Lisinopril', '1 times a day', 'P030', 'D015', '2023-04-25', 'T0087');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0061', 'Metformin', '1 times a day', 'P018', 'D012', '2023-05-17', 'T0013');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0062', 'Lisinopril', '1 times a day', 'P045', 'D014', '2023-05-10', 'T0032');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0063', 'Metformin', '3 times a day', 'P033', 'D008', '2023-02-11', 'T0057');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0064', 'Metformin', '3 times a day', 'P039', 'D001', '2023-08-08', 'T0037');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0065', 'Ibuprofen', '3 times a day', 'P044', 'D020', '2023-10-04', 'T0069');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0066', 'Atorvastatin', '1 times a day', 'P036', 'D011', '2023-03-25', 'T0050');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0067', 'Amoxicillin', '1 times a day', 'P006', 'D017', '2023-10-09', 'T0001');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0068', 'Atorvastatin', '3 times a day', 'P010', 'D018', '2023-06-27', 'T0094');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0069', 'Atorvastatin', '1 times a day', 'P050', 'D015', '2023-02-13', 'T0099');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0070', 'Ibuprofen', '3 times a day', 'P012', 'D015', '2023-02-19', 'T0004');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0071', 'Atorvastatin', '2 times a day', 'P033', 'D013', '2023-05-15', 'T0075');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0072', 'Amoxicillin', '2 times a day', 'P017', 'D019', '2023-06-27', 'T0016');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0073', 'Ibuprofen', '1 times a day', 'P050', 'D019', '2023-09-21', 'T0051');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0074', 'Metformin', '1 times a day', 'P046', 'D009', '2023-07-07', 'T0041');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0075', 'Metformin', '1 times a day', 'P018', 'D014', '2023-03-12', 'T0008');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0076', 'Metformin', '1 times a day', 'P039', 'D006', '2023-05-28', 'T0003');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0077', 'Metformin', '3 times a day', 'P029', 'D004', '2023-03-01', 'T0039');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0078', 'Lisinopril', '3 times a day', 'P008', 'D009', '2023-07-05', 'T0024');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0079', 'Atorvastatin', '1 times a day', 'P029', 'D002', '2023-04-16', 'T0063');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0080', 'Amoxicillin', '2 times a day', 'P030', 'D003', '2023-07-27', 'T0006');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0081', 'Lisinopril', '1 times a day', 'P017', 'D019', '2023-11-07', 'T0068');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0082', 'Ibuprofen', '1 times a day', 'P026', 'D002', '2023-06-21', 'T0007');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0083', 'Ibuprofen', '2 times a day', 'P002', 'D011', '2023-03-26', 'T0047');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0084', 'Amoxicillin', '2 times a day', 'P026', 'D012', '2023-08-16', 'T0074');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0085', 'Amoxicillin', '1 times a day', 'P028', 'D012', '2023-10-28', 'T0041');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0086', 'Metformin', '2 times a day', 'P006', 'D006', '2023-10-12', 'T0053');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0087', 'Atorvastatin', '1 times a day', 'P047', 'D009', '2023-10-16', 'T0060');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0088', 'Atorvastatin', '2 times a day', 'P026', 'D019', '2023-04-10', 'T0032');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0089', 'Metformin', '1 times a day', 'P026', 'D018', '2023-11-09', 'T0092');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0090', 'Amoxicillin', '1 times a day', 'P001', 'D004', '2023-08-28', 'T0094');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0091', 'Atorvastatin', '1 times a day', 'P047', 'D010', '2023-02-25', 'T0016');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0092', 'Ibuprofen', '1 times a day', 'P039', 'D010', '2023-05-17', 'T0069');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0093', 'Atorvastatin', '1 times a day', 'P009', 'D020', '2023-09-05', 'T0009');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0094', 'Lisinopril', '1 times a day', 'P012', 'D013', '2023-07-09', 'T0030');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0095', 'Metformin', '1 times a day', 'P040', 'D019', '2023-04-11', 'T0012');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0096', 'Metformin', '1 times a day', 'P014', 'D015', '2023-10-16', 'T0011');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0097', 'Amoxicillin', '2 times a day', 'P033', 'D003', '2023-05-18', 'T0038');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0098', 'Atorvastatin', '3 times a day', 'P006', 'D014', '2023-02-09', 'T0056');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0099', 'Metformin', '3 times a day', 'P044', 'D019', '2023-08-18', 'T0093');
INSERT INTO Medication (Medication_ID, Medication_Name, Dosages, Patient_ID, Doctor_ID, Prescription_Date, Treatment_ID) VALUES ('M0100', 'Atorvastatin', '2 times a day', 'P018', 'D015', '2023-10-23', 'T0058');

-- Create Bills Table
CREATE TABLE Bills (
    Bill_ID VARCHAR(6) PRIMARY KEY,
    Patient_ID VARCHAR(6),
    Total DECIMAL(10, 2),
    Equipment_Cost DECIMAL(10, 2),
    Medical_Cost DECIMAL(10, 2),
    Treatment_Cost DECIMAL(10, 2),
    Bill_Date DATE,
    Department_ID VARCHAR(6),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0001', 'P018', '4111', '3254', '2651', '1963', '2023-09-10', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0002', 'P028', '527', '2883', '2844', '802', '2023-01-24', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0003', 'P036', '5568', '646', '132', '1091', '2023-10-30', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0004', 'P026', '3971', '4224', '549', '1199', '2023-06-11', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0005', 'P010', '2627', '866', '2062', '297', '2023-03-22', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0006', 'P032', '2765', '3325', '305', '1835', '2023-05-30', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0007', 'P016', '9686', '1705', '852', '1119', '2023-04-07', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0008', 'P031', '4138', '3480', '2876', '1736', '2023-03-12', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0009', 'P044', '7507', '1679', '920', '90', '2023-03-23', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0010', 'P007', '3937', '4578', '1250', '1371', '2023-07-27', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0011', 'P027', '4893', '4122', '428', '922', '2023-11-14', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0012', 'P021', '1101', '113', '2203', '1620', '2023-04-25', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0013', 'P034', '5812', '731', '913', '339', '2023-06-20', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0014', 'P016', '3506', '4213', '1539', '1247', '2023-04-16', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0015', 'P026', '2004', '4931', '2994', '1458', '2023-10-06', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0016', 'P028', '1447', '299', '88', '524', '2023-05-19', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0017', 'P001', '9427', '3409', '2210', '701', '2023-01-13', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0018', 'P011', '7937', '1657', '299', '17', '2023-07-03', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0019', 'P043', '7217', '132', '1992', '1342', '2023-06-03', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0020', 'P010', '7339', '4137', '1087', '1066', '2023-01-04', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0021', 'P006', '1810', '4433', '1005', '929', '2023-06-09', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0022', 'P030', '675', '2310', '1442', '369', '2023-07-10', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0023', 'P026', '5840', '2925', '136', '290', '2023-03-09', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0024', 'P049', '7626', '4115', '379', '932', '2023-07-28', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0025', 'P036', '1890', '3790', '1447', '335', '2023-07-10', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0026', 'P001', '4324', '879', '2046', '1394', '2023-06-21', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0027', 'P036', '7119', '2893', '1179', '1536', '2023-02-27', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0028', 'P009', '1307', '337', '2329', '364', '2023-12-19', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0029', 'P014', '8298', '1446', '1191', '1112', '2023-06-08', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0030', 'P047', '4515', '2446', '2099', '244', '2023-04-09', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0031', 'P033', '448', '3419', '2082', '936', '2023-03-21', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0032', 'P014', '6729', '3650', '2959', '1244', '2023-09-23', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0033', 'P003', '9029', '3747', '1709', '1515', '2023-03-04', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0034', 'P018', '3460', '3676', '335', '1977', '2023-11-19', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0035', 'P034', '3940', '4252', '1632', '1932', '2023-11-12', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0036', 'P022', '763', '3871', '2443', '1625', '2023-11-11', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0037', 'P004', '5358', '3139', '2732', '1004', '2023-09-23', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0038', 'P035', '2114', '4848', '1125', '1794', '2023-01-23', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0039', 'P028', '3918', '4591', '2892', '761', '2023-03-22', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0040', 'P036', '8358', '3512', '821', '1338', '2023-01-14', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0041', 'P036', '6241', '2226', '32', '1846', '2023-05-10', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0042', 'P011', '3460', '3568', '1875', '1263', '2023-06-02', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0043', 'P018', '4446', '2984', '1648', '1317', '2023-09-16', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0044', 'P015', '3892', '2222', '1560', '1955', '2023-01-04', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0045', 'P001', '5402', '2825', '1518', '709', '2023-01-20', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0046', 'P033', '5580', '673', '1768', '287', '2023-11-25', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0047', 'P029', '2813', '1780', '872', '1126', '2023-06-13', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0048', 'P029', '3017', '2207', '2877', '1141', '2023-07-16', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0049', 'P045', '9365', '561', '1072', '451', '2023-10-01', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0050', 'P025', '7894', '2332', '1029', '1041', '2023-10-23', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0051', 'P040', '514', '3454', '648', '1082', '2023-09-14', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0052', 'P029', '2398', '240', '2402', '528', '2023-02-15', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0053', 'P028', '3033', '434', '944', '1198', '2023-05-27', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0054', 'P022', '2900', '1337', '2347', '671', '2023-05-16', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0055', 'P028', '2544', '2254', '2580', '1742', '2023-03-06', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0056', 'P006', '2504', '3748', '1546', '1954', '2023-06-20', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0057', 'P009', '6983', '1007', '2124', '974', '2023-10-15', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0058', 'P010', '6441', '687', '2238', '1041', '2023-10-18', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0059', 'P038', '677', '2339', '474', '512', '2023-11-12', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0060', 'P008', '8419', '4454', '248', '1095', '2023-01-29', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0061', 'P027', '6505', '3157', '2805', '649', '2023-02-03', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0062', 'P013', '2687', '3926', '803', '881', '2023-02-16', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0063', 'P025', '4145', '2837', '1830', '565', '2023-04-15', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0064', 'P017', '6017', '2242', '1092', '945', '2023-04-24', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0065', 'P017', '5341', '4711', '1399', '1550', '2023-07-18', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0066', 'P026', '2271', '1359', '2390', '1995', '2023-04-12', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0067', 'P015', '5507', '1478', '679', '1602', '2023-05-27', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0068', 'P027', '4210', '2026', '106', '360', '2023-12-07', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0069', 'P018', '8326', '4085', '539', '129', '2023-08-12', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0070', 'P029', '6431', '2138', '2229', '1800', '2023-06-15', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0071', 'P001', '9084', '4264', '2993', '1791', '2023-04-30', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0072', 'P036', '9864', '3121', '1060', '1332', '2023-12-19', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0073', 'P011', '9184', '2706', '671', '792', '2023-06-17', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0074', 'P031', '2746', '1633', '2326', '673', '2023-02-19', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0075', 'P015', '3781', '2383', '2877', '1969', '2023-11-15', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0076', 'P044', '453', '175', '1799', '1232', '2023-11-18', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0077', 'P014', '9716', '1388', '1002', '959', '2023-01-26', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0078', 'P029', '2280', '2667', '2089', '1462', '2023-01-18', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0079', 'P044', '3333', '3265', '1279', '495', '2023-01-17', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0080', 'P045', '9309', '3780', '2678', '902', '2023-11-24', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0081', 'P032', '3649', '4305', '1425', '1725', '2023-05-04', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0082', 'P028', '2551', '4364', '2911', '335', '2023-03-25', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0083', 'P017', '1641', '1333', '2314', '1615', '2023-07-28', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0084', 'P043', '5720', '2459', '1915', '1823', '2023-08-26', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0085', 'P001', '7529', '1483', '1674', '1577', '2023-11-08', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0086', 'P011', '3123', '4127', '1960', '524', '2023-12-06', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0087', 'P037', '2310', '2852', '1440', '431', '2023-09-16', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0088', 'P028', '6560', '3698', '360', '1498', '2023-07-09', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0089', 'P049', '6347', '1081', '1540', '547', '2023-08-30', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0090', 'P005', '5314', '2707', '1136', '249', '2023-07-29', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0091', 'P016', '6653', '1963', '55', '789', '2023-08-05', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0092', 'P013', '7667', '2240', '750', '1284', '2023-07-09', 'Dpt02');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0093', 'P005', '1980', '3811', '2255', '462', '2023-09-19', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0094', 'P050', '7688', '659', '1517', '967', '2023-05-12', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0095', 'P023', '3530', '460', '1718', '761', '2023-10-22', 'Dpt03');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0096', 'P021', '2578', '3310', '2638', '1863', '2023-12-23', 'Dpt01');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0097', 'P050', '4372', '3644', '2766', '31', '2023-05-08', 'Dpt04');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0098', 'P026', '4743', '2421', '1129', '1641', '2023-11-04', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0099', 'P048', '4534', '642', '2509', '847', '2023-12-05', 'Dpt05');
INSERT INTO Bills (Bill_ID, Patient_ID, Total, Equipment_Cost, Medical_Cost, Treatment_Cost, Bill_Date, Department_ID) VALUES ('B0100', 'P029', '7313', '601', '2704', '1705', '2023-06-27', 'Dpt02');

-- Create Treats Table
CREATE TABLE Treats (
    Patient_ID VARCHAR(6),
    Treatment_ID VARCHAR(6),
    Doctor_ID VARCHAR(6),
    PRIMARY KEY (Patient_ID, Treatment_ID, Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Treatment_ID) REFERENCES Treatment(Treatment_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P039', 'T0001', 'D004');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P042', 'T0002', 'D019');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0003', 'D011');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P047', 'T0004', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P043', 'T0005', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P048', 'T0006', 'D005');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P049', 'T0007', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P011', 'T0008', 'D010');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P042', 'T0009', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P044', 'T0010', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P032', 'T0011', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P009', 'T0012', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P041', 'T0013', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P043', 'T0014', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P007', 'T0015', 'D010');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P034', 'T0016', 'D002');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P040', 'T0017', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P002', 'T0018', 'D014');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P035', 'T0019', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P022', 'T0020', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P041', 'T0021', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0022', 'D016');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P019', 'T0023', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P031', 'T0024', 'D014');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P021', 'T0025', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P012', 'T0026', 'D011');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P002', 'T0027', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P045', 'T0028', 'D017');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P042', 'T0029', 'D010');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P036', 'T0030', 'D016');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P040', 'T0031', 'D015');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P045', 'T0032', 'D020');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P004', 'T0033', 'D004');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P001', 'T0034', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P031', 'T0035', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P033', 'T0036', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P003', 'T0037', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0038', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P043', 'T0039', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P047', 'T0040', 'D016');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P020', 'T0041', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P012', 'T0042', 'D010');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P024', 'T0043', 'D020');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0044', 'D002');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P016', 'T0045', 'D020');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P008', 'T0046', 'D001');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P050', 'T0047', 'D017');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P009', 'T0048', 'D014');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P031', 'T0049', 'D020');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P002', 'T0050', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P048', 'T0051', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P007', 'T0052', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P005', 'T0053', 'D019');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P010', 'T0054', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P040', 'T0055', 'D018');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P047', 'T0056', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P033', 'T0057', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P033', 'T0058', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P003', 'T0059', 'D001');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P004', 'T0060', 'D006');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P010', 'T0061', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P020', 'T0062', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P005', 'T0063', 'D012');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P039', 'T0064', 'D008');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P016', 'T0065', 'D016');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P008', 'T0066', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P033', 'T0067', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P003', 'T0068', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P026', 'T0069', 'D011');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P018', 'T0070', 'D016');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P030', 'T0071', 'D001');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P003', 'T0072', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P008', 'T0073', 'D013');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P034', 'T0074', 'D006');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P016', 'T0075', 'D019');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P015', 'T0076', 'D005');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P042', 'T0077', 'D011');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P011', 'T0078', 'D005');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P021', 'T0079', 'D005');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P005', 'T0080', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P035', 'T0081', 'D004');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P023', 'T0082', 'D014');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P047', 'T0083', 'D004');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P006', 'T0084', 'D020');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P044', 'T0085', 'D018');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0086', 'D002');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P032', 'T0087', 'D005');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P048', 'T0088', 'D015');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P046', 'T0089', 'D006');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P017', 'T0090', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P050', 'T0091', 'D009');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P013', 'T0092', 'D010');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P037', 'T0093', 'D006');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P036', 'T0094', 'D003');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P011', 'T0095', 'D017');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P014', 'T0096', 'D015');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P023', 'T0097', 'D006');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P005', 'T0098', 'D019');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P041', 'T0099', 'D004');
INSERT INTO Treats (Patient_ID, Treatment_ID, Doctor_ID) VALUES ('P042', 'T0100', 'D019');

-- Create Uses Table
CREATE TABLE Uses (
    Doctor_ID VARCHAR(6),
    Equipment_ID VARCHAR(6),
    PRIMARY KEY (Doctor_ID, Equipment_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Equipment_ID) REFERENCES Medical_Equipment(Equipment_ID)
);
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D003', 'E001');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D009', 'E002');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D020', 'E003');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D016', 'E004');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D009', 'E005');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D009', 'E006');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D010', 'E007');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D014', 'E008');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D010', 'E009');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D012', 'E010');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D017', 'E011');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D016', 'E012');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D017', 'E013');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D004', 'E014');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D004', 'E015');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D015', 'E016');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D010', 'E017');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D020', 'E018');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D002', 'E019');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D001', 'E020');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D011', 'E021');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D019', 'E022');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D006', 'E023');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D006', 'E024');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D019', 'E025');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D007', 'E026');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D018', 'E027');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D017', 'E028');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D003', 'E029');
INSERT INTO Uses (Doctor_ID, Equipment_ID) VALUES ('D009', 'E030');
