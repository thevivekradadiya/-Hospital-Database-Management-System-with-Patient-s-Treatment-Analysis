--Query 1:- List doctors who have treated patients for multiple different diseases in a single appointment:
SELECT DISTINCT D.Doctor_ID, D.Doctor_Name
FROM Treats T
JOIN Diagnosis DS ON T.Patient_ID = DS.Patient_ID AND T.Doctor_ID = DS.Doctor_ID
JOIN Doctor D ON T.Doctor_ID = D.Doctor_ID
WHERE T.Treatment_ID IN (
    SELECT Treatment_ID
    FROM Diagnosis
    GROUP BY Treatment_ID
    HAVING COUNT(DISTINCT Disease) > 1
);




--Query 2:- Find the top 5 departments with the LOWEST average treatment cost:
SELECT D.Department_ID, D.Department_Name,
AVG(B.Treatment_Cost) AS Avg_Treatment_Cost
FROM Department D
JOIN Bills B ON D.Department_ID = B.Department_ID
GROUP BY D.Department_ID, D.Department_Name
ORDER BY Avg_Treatment_Cost ASC
LIMIT 5;




--Query 3:- Retrieve doctors who have not performed any treatments:
SELECT D.*
FROM Doctor D
LEFT JOIN Treats T ON D.Doctor_ID = T.Doctor_ID
WHERE T.Doctor_ID IS NULL;




--Query 4:- Comprehensive Patient Billing Report:
SELECT 
    b.Bill_ID,
    p.Patient_Name,
    b.Patient_ID,
    SUM(b.Equipment_Cost) AS Equipment_Costs,
    SUM(b.Medical_Cost) AS Medical_Costs,
    SUM(b.Treatment_Cost) AS Treatment_Costs,
    SUM(b.Total) AS Total_Bill
FROM 
    Bills b
JOIN 
    Patient p ON b.Patient_ID = p.Patient_ID
GROUP BY 
    b.Bill_ID, p.Patient_Name, b.Patient_ID;




--Query 5:- Patient Demographic Analysis for Targeted Healthcare Programs:
SELECT 
    YEAR(CURRENT_DATE) - YEAR(Patient_DOB) AS Age,
    COUNT(*) AS Patient_Count,
    d.Disease
FROM 
    Patient p
JOIN 
    Diagnosis d ON p.Patient_ID = d.Patient_ID
GROUP BY 
    Age, d.Disease;




--Query 6:- Doctor Specialization and Patient Outcomes:
SELECT 
    dpt.Department_Name,
    d.Speciality,
    d.Doctor_Name,
    COUNT(t.Treatment_ID) AS Number_of_Treatments,
    AVG(b.Total) AS Average_Treatment_Cost
FROM 
    Doctor d
JOIN 
    Treatment t ON d.Doctor_ID = t.Doctor_ID
JOIN 
    Bills b ON t.Patient_ID = b.Patient_ID 
JOIN 
    Department dpt ON d.Department_ID = dpt.Department_ID
GROUP BY 
    dpt.Department_Name, d.Speciality, d.Doctor_Name;




--Query 7:- Appointment Scheduling Efficiency:
SELECT 
    Doctor_ID,
    COUNT(Appointment_ID) AS Total_Appointments,
    AVG(TIMESTAMPDIFF(MINUTE, Appointment_Time, Next_Appointment_Time)) AS Average_Wait_Time
FROM 
    (SELECT 
         a.Doctor_ID, 
         a.Appointment_ID, 
         a.Appointment_Time, 
         LEAD(a.Appointment_Time) OVER (PARTITION BY a.Doctor_ID ORDER BY a.Appointment_Time) AS Next_Appointment_Time
     FROM 
         Appointment a) AS Appointments
GROUP BY 
    Doctor_ID;




--Query 8:- Analysis of Disease Trends Over Time:
WITH MonthlyDiagnoses AS (
    SELECT 
        YEAR(Diagnosis_Date) AS Year,
        MONTH(Diagnosis_Date) AS Month,
        Disease,
        COUNT(*) AS Number_of_Diagnoses,
        ROW_NUMBER() OVER (PARTITION BY YEAR(Diagnosis_Date), MONTH(Diagnosis_Date) ORDER BY COUNT(*) DESC) AS Disease_Rank
    FROM 
        Diagnosis
    GROUP BY 
        Year, Month, Disease
)
SELECT 
    Year,
    Month,
    Disease,
    Number_of_Diagnoses
FROM 
    MonthlyDiagnoses
WHERE 
    Disease_Rank = 1;
