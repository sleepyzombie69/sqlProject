CREATE TABLE EmpA (
    EmpID     NUMBER(10)      CONSTRAINT pk_EmpID PRIMARY KEY,
    E_Street  VARCHAR2(50),
    E_City    VARCHAR2(50)
);

CREATE TABLE DeptLoc (
    DeptID    NUMBER(10)     CONSTRAINT pk_DeptID PRIMARY KEY,
    D_Street  VARCHAR2(50),
    D_City    VARCHAR2(50)
);

CREATE TABLE Depart (
    D_Id      NUMBER(10)      CONSTRAINT pk_D_Id PRIMARY KEY,
    D_Name    VARCHAR2(50),
    D_Type    VARCHAR2(50),
    Operation VARCHAR2(50),
    DeptID    NUMBER(10),
    CONSTRAINT fk_DeptID FOREIGN KEY (DeptID) REFERENCES DeptLoc(DeptID)
);

CREATE TABLE Empl (
    E_Id      NUMBER(10)     CONSTRAINT pk_E_Id PRIMARY KEY,
    E_Name    VARCHAR2(50),
    Gender    VARCHAR2(10),
    Salary    NUMBER(10,2),
    DOB       DATE,
    EmpID     NUMBER(10),
    D_Id      NUMBER(10),
    CONSTRAINT fk_EmpID FOREIGN KEY (EmpID) REFERENCES EmpA(EmpID),
    CONSTRAINT fk_D_Id FOREIGN KEY (D_Id) REFERENCES Depart(D_Id)
);


CREATE TABLE Proj (
    P_Number    NUMBER(10)     CONSTRAINT pk_Proj_P_Number PRIMARY KEY,
    Budget      NUMBER(15,2),
    P_Name      VARCHAR2(100),
    P_Type      VARCHAR2(50),
    Description VARCHAR2(255),
    Status      VARCHAR2(50),
    ProjectID   NUMBER(10),
    D_Id        NUMBER(10),
    CONSTRAINT fk_Proj_D_Id_1 FOREIGN KEY (D_Id) REFERENCES Depart(D_Id)
);


CREATE TABLE EmpD (
    E_Id      NUMBER(10)     CONSTRAINT pk_EmpD_E_Id PRIMARY KEY,
    E_Name    VARCHAR2(50),
    Gender    VARCHAR2(10),
    Salary    NUMBER(10,2),
    DOB       DATE,
    EmpID     NUMBER(10),
    CONSTRAINT fk_EmpD_EmpID FOREIGN KEY (EmpID) REFERENCES EmpA(EmpID)
);

CREATE TABLE ProjD (
    P_Number    NUMBER(10)     CONSTRAINT pk_ProjD_P_Number PRIMARY KEY,
    Budget      NUMBER(15,2),
    P_Name      VARCHAR2(100),
    P_Type      VARCHAR2(50)
);

CREATE TABLE EmpProj (
    xyz_ID      NUMBER(10)     CONSTRAINT pk_EmpProj_xyz_ID PRIMARY KEY,
    E_Id        NUMBER(10),
    P_Number    NUMBER(10),
    CONSTRAINT fk_EmpProj_E_Id FOREIGN KEY (E_Id) REFERENCES EmpD(E_Id),
    CONSTRAINT fk_EmpProj_P_Number FOREIGN KEY (P_Number) REFERENCES Proj(P_Number)
);

CREATE TABLE Work (
    WorkID      NUMBER(10)     CONSTRAINT pk_Work_WorkID PRIMARY KEY,
    Start_Date  DATE,
    Duration    NUMBER(10),
    E_Id        NUMBER(10),
    CONSTRAINT fk_Work_E_Id FOREIGN KEY (E_Id) REFERENCES EmpD(E_Id)
);


CREATE TABLE ProjA (
    ProjectID   NUMBER(10)     CONSTRAINT pk_ProjA_ProjectID PRIMARY KEY,
    P_Street     VARCHAR2(100),
    P_City       VARCHAR2(50)
);

CREATE TABLE EmpC (
    Contact     VARCHAR2(50)     CONSTRAINT pk_EmpC_Contact PRIMARY KEY,
    E_Id        NUMBER(10),
    CONSTRAINT fk_EmpC_E_Id FOREIGN KEY (E_Id) REFERENCES EmpD(E_Id)
);
