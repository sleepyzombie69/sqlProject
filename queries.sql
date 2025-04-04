INSERT INTO EmpA (EmpID, E_Street, E_City) VALUES (1, 'Mirpur Road', 'Dhaka');
INSERT INTO EmpA (EmpID, E_Street, E_City) VALUES (2, 'Banani Road', 'Dhaka');
INSERT INTO EmpA (EmpID, E_Street, E_City) VALUES (3, 'Gulshan Avenue', 'Dhaka');
INSERT INTO EmpA (EmpID, E_Street, E_City) VALUES (4, 'Uttara Road', 'Dhaka');
INSERT INTO EmpA (EmpID, E_Street, E_City) VALUES (5, 'Chittagong Road', 'Chittagong');

INSERT INTO DeptLoc (DeptID, D_Street, D_City) VALUES (1, 'Motijheel Road', 'Dhaka');
INSERT INTO DeptLoc (DeptID, D_Street, D_City) VALUES (2, 'Gulshan Avenue', 'Dhaka');
INSERT INTO DeptLoc (DeptID, D_Street, D_City) VALUES (3, 'Uttara Road', 'Dhaka');
INSERT INTO DeptLoc (DeptID, D_Street, D_City) VALUES (4, 'Banani Road', 'Dhaka');
INSERT INTO DeptLoc (DeptID, D_Street, D_City) VALUES (5, 'Chittagong Road', 'Chittagong');

INSERT INTO Depart (D_Id, D_Name, D_Type, Operation, DeptID) VALUES (1, 'HR Department', 'Human Resources', 'Recruitment', 1);
INSERT INTO Depart (D_Id, D_Name, D_Type, Operation, DeptID) VALUES (2, 'Finance Department', 'Finance', 'Accounting', 2);
INSERT INTO Depart (D_Id, D_Name, D_Type, Operation, DeptID) VALUES (3, 'IT Department', 'Information Technology', 'Software Development', 3);
INSERT INTO Depart (D_Id, D_Name, D_Type, Operation, DeptID) VALUES (4, 'Marketing Department', 'Marketing', 'Sales', 4);
INSERT INTO Depart (D_Id, D_Name, D_Type, Operation, DeptID) VALUES (5, 'Production Department', 'Production', 'Manufacturing', 5);

INSERT INTO Empl (E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id) VALUES (1, 'John Doe', 'Male', 50000.00, DATETIME('1990-01-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Empl (E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id) VALUES (2, 'Jane Smith', 'Female', 45000.00, DATETIME('1992-03-01', 'YYYY-MM-DD'), 2, 2);
INSERT INTO Empl (E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id) VALUES (3, 'David Lee', 'Male', 60000.00, DATETIME('1995-05-01', 'YYYY-MM-DD'), 3, 3);
INSERT INTO Empl (E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id) VALUES (4, 'Emily Brown', 'Female', 55000.00, DATETIME('1993-07-01', 'YYYY-MM-DD'), 4, 4);
INSERT INTO Empl (E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id) VALUES (5, 'Thomas Green', 'Male', 40000.00, DATETIME('1991-09-01', 'YYYY-MM-DD'), 5, 5);

INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (1, 100000.00, 'Software Development Project', 'Software', 'Develop a new software application', 'In Progress', 1, 3);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (2, 80000.00, 'Marketing Campaign', 'Marketing', 'Launch a new marketing campaign', 'Completed', 2, 4);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (6, 180000.00, 'Marketing Research', 'Marketing', 'Conduct market research for a new product', 'Planned', 6, 4);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (4, 50000.00, 'HR Training Program', 'HR', 'Conduct a training program for HR employees', 'Completed', 4, 1);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (5, 150000.00, 'New Product Development', 'Production', 'Develop a new product', 'In Progress', 5, 5);

INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (1, 'John Doe', 'Male', 50000.00, DATETIME('1990-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (2, 'Jane Smith', 'Female', 45000.00, DATETIME('1992-03-01', 'YYYY-MM-DD'), 2);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (3, 'David Lee', 'Male', 60000.00, DATETIME('1995-05-01', 'YYYY-MM-DD'), 3);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (4, 'Emily Brown', 'Female', 55000.00, DATETIME('1993-07-01', 'YYYY-MM-DD'), 4);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (5, 'Thomas Green', 'Male', 40000.00, DATETIME('1991-09-01', 'YYYY-MM-DD'), 5);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (6, 'Alice Johnson', 'Female', 35000.00, DATETIME('1994-11-01', 'YYYY-MM-DD'), 1);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (7, 'Bob Williams', 'Male', 48000.00, DATETIME('1996-01-01', 'YYYY-MM-DD'), 2);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (8, 'Carol Taylor', 'Female', 52000.00, DATETIME('1997-03-01', 'YYYY-MM-DD'), 3);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (9, 'Daniel Wilson', 'Male', 38000.00, DATETIME('1998-05-01', 'YYYY-MM-DD'), 4);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (10, 'Emily Parker', 'Female', 42000.00, DATETIME('1999-07-01', 'YYYY-MM-DD'), 5);

INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (1, 100000.00, 'Software Development Project', 'Software');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (2, 80000.00, 'Marketing Campaign', 'Marketing');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (3, 120000.00, 'Infrastructure Upgrade', 'IT');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (4, 50000.00, 'HR Training Program', 'HR');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (5, 150000.00, 'New Product Development', 'Production');


INSERT INTO EmpC (Contact, E_Id) VALUES ('+8801711111111', 1);
INSERT INTO EmpC (Contact, E_Id) VALUES ('+8801722222222', 2);
INSERT INTO EmpC (Contact, E_Id) VALUES ('+8801733333333', 3);
INSERT INTO EmpC (Contact, E_Id) VALUES ('+8801744444444', 4);
INSERT INTO EmpC (Contact, E_Id) VALUES ('+8801755555555', 5);


INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (11, 5000000.00, 'Construction of Padma Bridge', 'Infrastructure', 'Building a bridge over the Padma River', 'Completed', 1, 5);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (12, 2000000.00, 'Digital Bangladesh Initiative', 'Technology', 'Promoting digitalization in Bangladesh', 'Ongoing', 2, 3);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (13, 1000000.00, 'Power Plant Development', 'Energy', 'Building a new power plant', 'Planned', 3, 5);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (14, 800000.00, 'Agriculture Modernization', 'Agriculture', 'Improving agricultural practices in Bangladesh', 'Ongoing', 4, 5);
INSERT INTO Proj (P_Number, Budget, P_Name, P_Type, Description, Status, ProjectID, D_Id) VALUES (15, 1500000.00, 'Education Sector Reform', 'Education', 'Reforming the education system in Bangladesh', 'Planned', 5, 1);



INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (11, 'Arif Khan', 'Male', 35000.00, DATETIME('1995-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (12, 'Nazmul Hossain', 'Male', 40000.00, DATETIME('1992-03-01', 'YYYY-MM-DD'), 2);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (13, 'Shaila Rahman', 'Female', 38000.00, DATETIME('1997-05-01', 'YYYY-MM-DD'), 3);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (14, 'Mahbub Alam', 'Male', 42000.00, DATETIME('1994-07-01', 'YYYY-MM-DD'), 4);
INSERT INTO EmpD (E_Id, E_Name, Gender, Salary, DOB, EmpID) VALUES (15, 'Priya Roy', 'Female', 36000.00, DATETIME('1996-09-01', 'YYYY-MM-DD'), 15);



INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (6, 200000.00, 'Digital Marketing Campaign', 'Marketing');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (7, 150000.00, 'Software Development Project II', 'Software');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (8, 80000.00, 'Infrastructure Maintenance', 'IT');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (9, 100000.00, 'HR Policy Review', 'HR');
INSERT INTO ProjD (P_Number, Budget, P_Name, P_Type) VALUES (10, 120000.00, 'New Product Launch', 'Production');


INSERT INTO EmpProj (xyz_ID, E_Id, P_Number) VALUES (1, 6, 6);
INSERT INTO EmpProj (xyz_ID, E_Id, P_Number) VALUES (2, 7, 5);
INSERT INTO EmpProj (xyz_ID, E_Id, P_Number) VALUES (3, 8, 4);
INSERT INTO EmpProj (xyz_ID, E_Id, P_Number) VALUES (4, 9, 1);
INSERT INTO EmpProj (xyz_ID, E_Id, P_Number) VALUES (5, 10, 2);

INSERT INTO Work (WorkID, Start_Date, Duration, E_Id) VALUES (1, DATETIME('2023-01-01', 'YYYY-MM-DD'), 30, 6);
INSERT INTO Work (WorkID, Start_Date, Duration, E_Id) VALUES (2, DATETIME('2023-02-01', 'YYYY-MM-DD'), 45, 7);
INSERT INTO Work (WorkID, Start_Date, Duration, E_Id) VALUES (3, DATETIME('2023-03-01', 'YYYY-MM-DD'), 60, 8);
INSERT INTO Work (WorkID, Start_Date, Duration, E_Id) VALUES (4, DATETIME('2023-04-01', 'YYYY-MM-DD'), 35, 9);
INSERT INTO Work (WorkID, Start_Date, Duration, E_Id) VALUES (5, DATETIME('2023-05-01', 'YYYY-MM-DD'), 50, 10);


INSERT INTO ProjA (ProjectID, P_Street, P_City) VALUES (1, 'Mirpur Road', 'Dhaka');
INSERT INTO ProjA (ProjectID, P_Street, P_City) VALUES (2, 'Banani Road', 'Dhaka');
INSERT INTO ProjA (ProjectID, P_Street, P_City) VALUES (3, 'Gulshan Avenue', 'Dhaka');
INSERT INTO ProjA (ProjectID, P_Street, P_City) VALUES (4, 'Uttara Road', 'Dhaka');
INSERT INTO ProjA (ProjectID, P_Street, P_City) VALUES (5, 'Chittagong Road', 'Chittagong');



SELECT Empl.E_Name, Depart.D_Name
FROM Empl
JOIN Depart ON Empl.D_Id = Depart.D_Id;


SELECT EmpD.E_Name, ProjD.P_Name
FROM EmpD
LEFT JOIN EmpProj ON EmpD.E_Id = EmpProj.E_Id
LEFT JOIN ProjD ON EmpProj.P_Number = ProjD.P_Number;

SELECT E_Name, Salary
FROM EmpD
WHERE Salary > (SELECT AVG(Salary) FROM EmpD);


SELECT E_Name
FROM EmpD
WHERE Salary > ALL (SELECT Salary
                     FROM EmpD
                     WHERE E_Id IN (SELECT E_Id FROM Empl WHERE D_Id = (SELECT D_Id FROM Depart WHERE D_Name = 'HR Department')));


SELECT E_Name, TO_CHAR(DOB, 'DD-MON-YYYY') AS Formatted_DOB
FROM EmpD;

SELECT D.D_Name, AVG(E.Salary) AS Average_Salary
FROM Depart D
JOIN Empl EMP ON D.D_Id = EMP.D_Id
JOIN EmpD E ON EMP.E_Id = E.E_Id
GROUP BY D.D_Name;
