Design Document

By MD.HASAN AMIR FAYSAL

github: https://github.com/sleepyzombie69
Video Overview: https://www.youtube.com/watch?v=c8FPmcCMW9g

Scope :

Purpose of the Database:

This database is designed to easily store the data of a Employee and manage it.The purpose of this database is to help users efficiently organize and manage Employees.

Scenario Description

In an employee management system, some employees may work for only one department, but one department has many employees. An employee can be identified by employee id. The system also stores name, gender, address, salary, contact and date of birth of an employee. Address is composed of street and city. There can be multiple values of contact. The department is identified by department id. It also stores name, location, operation and type. The location is composed of street and city. One department can control many projects, but a project is controlled by one department. The project can be identified by project number. It stores name, location, budget, type, description and status. The location is composed of street and city.  An employee works on many projects and a project can be worked on  by many employees. While the project is working on the start date and duration is saved.


                                                Normalization


Relation Set: Works for (One to many)
UNF:
E_Id, E_Name, E_Street, E_City ,Gender, Salary, Contact, DOB, D_Id, D_Name, D_Type, D_Street, D_City, Operation.
1NF: Contact is a multivalued attribute.
E_Id, E_Name, E_Street, E_City ,Gender, Salary, Contact, DOB, D_Id, D_Name, D_Type, D_Street, D_City, Operation.
2NF:
    1. E_Id, E_Name, E_Street, E_City ,Gender, Salary, DOB.
    2. D_Id, D_Name, D_Type, D_Street, D_City, Operation.
    3. Contact, E_id.
3NF:
    1. E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id.
    2. EmpID, E_Street, E_City.
    3. D_Id, D_Name, D_Type, Operation, DeptID.
    4. DeptID, D_Street, D_City.
    5. Contact, E_id.






Relation Set: Control (One to many)
UNF:
 D_Id, D_Name, D_Type, D_Street, D_City, Operation, P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status.
1NF: There are no multivalued attributes.
D_Id, D_Name, D_Type, D_Street, D_City, Operation, P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status.
2NF:
    1. D_Id, D_Name, D_Type, D_Street, D_City, Operation.
    2. P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status.
3NF:
    1. D_Id, D_Name, D_Type, Operation, DeptID.
    2. D_Street, D_City, DeptID.
    3. P_Number, Budget, P_Name, P_type, Description, Status, ProjectID, D_Id.
    4. P_Street, P_City, ProjectID.


Relation Set: Work On (Many to Many)
                    UNF:
 E_Id, E_Name, E_Street, E_City ,Gender, Salary, Contact, DOB,  P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status, Start_Date ,Duration,.
                    1NF: Contact is a multivalued attribute.
E_Id, E_Name, E_Street, E_City ,Gender, Salary, Contact, DOB,  P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status, Start_Date, Duration.
                    2NF:
    1. E_Id, E_Name, E_Street, E_City ,Gender, Salary, DOB.
    2. P_Number, Budget, P_Name, P_type, P_Street, P_City, Description, Status.
    3. Contact, E_id.
    4. Start_Date, Duration, WorkID.
                    3NF:
    1. E_Id, E_Name, Gender, Salary, DOB, EmpID.
    2. E_Street, E_City, EmpID.
    3. P_Number, Budget, P_Name, P_type, Description, Status, ProjectID.
    4. P_Street, P_City, ProjectID.
    5. Contact, E_id.
    6. E_Id, P_Number, xyz_ID.
    7. Start_Date, Duration, WorkID.






                                                Finalization

    1. E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id.
    2. EmpID, E_Street, E_City.
    3. D_Id, D_Name, D_Type, Operation, DeptID.
    4. DeptID, D_Street, D_City.
    5. Contact, E_id.
    6. D_Id, D_Name, D_Type, Operation, DeptID.
    7. D_Street, D_City, DeptID.
    8. P_Number, Budget, P_Name, P_type, Description, Status, ProjectID, D_Id.
    9. P_Street, P_City, ProjectID.
    10. E_Id, E_Name, ,Gender, Salary, DOB, EmpID.
    11. E_Street, E_City, EmpID.
    12. P_Number, Budget, P_Name, P_type, Description, Status, ProjectID.
    13. P_Street, P_City, ProjectID.
    14. Contact, E_id
    15. E_Id, P_Number, xyz_ID.
    16. Start_Date, Duration, WorkID.
                                                    Final Table

    1. Employee_Details: E_Id, E_Name, Gender, Salary, DOB, EmpID, D_Id.
    2. Department_Details: D_Id, D_Name, D_Type, Operation, DeptID.
    3. Department_Location: D_Street, D_City, DeptID.
    4. Project_Details: P_Number, Budget, P_Name, P_type, Description, Status, ProjectID, D_Id.
    5. Employee_Details: E_Id, E_Name, Gender, Salary, DOB, EmpID.
    6. Employee_Address: E_Street, E_City, EmpID.
    7. Project_Details: P_Number, Budget, P_Name, P_type, Description, Status, ProjectID.
    8. Project_Address: P_Street, P_City, ProjectID.
    9. Employee_Contact: Contact, E_id.
    10. Employee_Project: E_Id, P_Number, xyz_ID.
    11. Work: Start_Date, Duration, WorkID.


                        Representation
Entities:
The database includes the following entities-

1.	Emp
2.	Dept
3.	DeptLoc
4.	Proj
5.	EmpD
6.	EmpA
7.	ProjD
8.	ProjA
9.	EmpC
10.	EmpProj
11.	Work


Relationships:
Entity Relationship Diagram (ERD) -

https://github.com/sleepyzombie69/website2025/blob/main/image/ER.png




limitations:


This database may not represent the detailed databases of large technology companies, but it was designed
with inspiration from them.
1.The system might face limitations in representing highly complex relationships
2.If new technologies are introduced, the table structure must be altered

