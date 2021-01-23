/**************************************************
select * from nurse
******************pExercise -01 *******************
SELECT p.name AS "Physician",
       d.name AS "Department"
FROM physician p,
     department d,
     affiliated_with a
WHERE p.employeeid=a.physician
  AND a.department=d.departmentid;
******************pExercise -02 ******************* 
SELECT p.name AS "Physician",
       d.name AS "Department"
FROM physician p,
     department d,
     affiliated_with a
WHERE p.employeeid=a.physician
  AND a.department=d.departmentid;
  
SELECT p.name AS "Physician",
       c.name AS "Treatement"
FROM physician p,
     PROCEDURE c,
               trained_in t
WHERE t.physician=p.employeeid
  AND t.treatment=c.code;

SELECT t.name AS "Patient",
       t.address AS "Address",
       p.name AS "Physician"
FROM patient t
JOIN physician p ON t.pcp=p.employeeid;
******************pExercise -03 ******************* 
select * from nurse;
select * from procedures;
select * from appointment;
select * from medication;
SELECT n.name AS "Name of the Nurse",
       a.examinationroom AS "Room No."
FROM nurse n
JOIN appointment a ON a.prepnurse=n.employeeid;
******************pExercise -04 ******************* 
SELECT blockcode AS "Block",
       count(*) "Number of available rooms"
FROM room
WHERE unavailable='false'
GROUP BY blockcode
ORDER BY blockcode;

SELECT blockfloor AS "Floor",
       count(*) "Number of available rooms"
FROM room
WHERE unavailable='false'
GROUP BY blockfloor
ORDER BY blockfloor;

SELECT blockfloor AS "Floor",
       blockcode AS "Block",
       count(*) "Number of available rooms"
FROM room
WHERE unavailable='false'
GROUP BY blockfloor,
        blockcode
ORDER BY blockfloor,
        blockcode;
\***************************************************
SELECT p.name AS "Patient",
       y.name AS "Physician",
       n.name AS "Nurse",
       s.stayenddate AS "Date of release",
       pr.name as "Treatement going on",
       r.roomnumber AS "Room",
       r.blockfloor AS "Floor",
       r.blockcode AS "Block"
FROM undergoes u
JOIN patient p ON u.patient=p.ssn
JOIN physician y ON u.physician=y.employeeid
LEFT JOIN nurse n ON u.assistingnurse=n.employeeid
JOIN stay s ON u.patient=s.patient
JOIN room r ON s.room=r.roomnumber
JOIN procedures pr on u.procedures=pr.code;
***************************************************/
select * from department;
select * from physician ;
select * from affiliated_with;
select * from patient
select * from nurse;
select * from appointment

--find general medicine doctors name
select a.name, b.department, c.name from physician a
join affiliated_with b 
join department c
on c.departmentid= b.department
on b.physician = a.employeeid
where b.department=2

--find which patient - doctor visit
select a.name patient_name, b.name doctor_name from patient a
join physician b
on a.pcp = b.employeeid

--find room details 
select * from room
select unavailable, count(*) from room
group by unavailable

--total patient count on blockcode=2
select count(*) from room where blockcode=2

--check procedure details
select * from undergoes

-- find hospital workload such as procedure time and doctors, nurse details
select a.name as doctor_name, b.name as nurse_name, c.dateundergoes as proceduretime
from physician a 
join nurse b
join undergoes c
on b.employeeid= c.assistingnurse
on a.employeeid = c.physician
where c.physician=3

--patient mdeication and priscription details
select * from medication;
select a.name, b.dose, c.name,c.brand from patient a
join prescribes b
join medication c
on c.code = b.medication
on a.ssn = b.patient

--trained in procedures 
select * from procedures;
select * from trained_in;
select treatment, count(*) from trained_in group by treatment


