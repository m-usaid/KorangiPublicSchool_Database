CREATE TABLE Grade (
  GradeID INTEGER  NOT NULL   IDENTITY ,
  Name VARCHAR      ,
PRIMARY KEY(GradeID));
GO




CREATE TABLE Staff (
  StaffID INTEGER  NOT NULL   IDENTITY ,
  First_Name VARCHAR(45))    ,
  Last_Name VARCHAR(45)    ,
  Phone VARCHAR(20)    ,
  Email VARCHAR(45)    ,
  DoB DATE    ,
  CNIC VARCHAR(20)    ,
  Designation VARCHAR(30)      ,
PRIMARY KEY(StaffID));
GO




CREATE TABLE Teachers (
  TeacherID INTEGER  NOT NULL   IDENTITY ,
  First_Name VARCHAR(45)    ,
  Last_Name VARCHAR(45)    ,
  Phone VARCHAR(20)    ,
  Email VARCHAR(45)    ,
  DoB DATE    ,
  CNIC VARCHAR(20)    ,
  Subjects TEXT      ,
PRIMARY KEY(TeacherID));
GO




CREATE TABLE Classrooms (
  idClassrooms INTEGER  NOT NULL   IDENTITY ,
  Section VARCHAR      ,
PRIMARY KEY(idClassrooms));
GO




CREATE TABLE Exams (
  Exam_ID INTEGER  NOT NULL   IDENTITY ,
  Date DATE    ,
  Start_Time DATETIME    ,
  End_Time DATETIME      ,
PRIMARY KEY(Exam_ID));
GO




CREATE TABLE Student (
  StudentID INTEGER  NOT NULL   IDENTITY ,
  Grade_GradeID INTEGER  NOT NULL  ,
  Email VARCHAR(70)    ,
  First_Name VARCHAR(50)    ,
  Last_Name VARCHAR(50)    ,
  DoB DATE    ,
  Home_Phone VARCHAR(20)    ,
  Cell_Phone VARCHAR(30)    ,
  Joining_Date DATE    ,
  Joining_Grade VARCHAR(10))      ,
PRIMARY KEY(StudentID)  ,
  FOREIGN KEY(Grade_GradeID)
    REFERENCES Grade(GradeID));
GO


CREATE INDEX Student_FKIndex1 ON Student (Grade_GradeID);
GO


CREATE INDEX IFK_Rel_18 ON Student (Grade_GradeID);
GO


CREATE TABLE Subject (
  SubjectID INTEGER  NOT NULL   IDENTITY ,
  Grade_GradeID INTEGER  NOT NULL  ,
  Name VARCHAR(45)    ,
  Description VARCHAR(45)      ,
PRIMARY KEY(SubjectID)  ,
  FOREIGN KEY(Grade_GradeID)
    REFERENCES Grade(GradeID));
GO


CREATE INDEX Subject_FKIndex1 ON Subject (Grade_GradeID);
GO


CREATE INDEX IFK_Rel_04 ON Subject (Grade_GradeID);
GO


CREATE TABLE Parent (
  Parent_ID INTEGER  NOT NULL   IDENTITY ,
  Student_StudentID INTEGER  NOT NULL  ,
  First_Name VARCHAR(45)    ,
  Last_Name VARCHAR(45)    ,
  DoB DATE    ,
  Home_Phone VARCHAR(20)    ,
  Mobile_Phone VARCHAR(20)      ,
PRIMARY KEY(Parent_ID)  ,
  FOREIGN KEY(Student_StudentID)
    REFERENCES Student(StudentID));
GO


CREATE INDEX Parent_FKIndex1 ON Parent (Student_StudentID);
GO


CREATE INDEX IFK_Rel_01 ON Parent (Student_StudentID);
GO


CREATE TABLE Subject_has_Classrooms (
  Subject_SubjectID INTEGER  NOT NULL  ,
  Classrooms_idClassrooms INTEGER  NOT NULL    ,
PRIMARY KEY(Subject_SubjectID, Classrooms_idClassrooms)    ,
  FOREIGN KEY(Subject_SubjectID)
    REFERENCES Subject(SubjectID),
  FOREIGN KEY(Classrooms_idClassrooms)
    REFERENCES Classrooms(idClassrooms));
GO


CREATE INDEX Subject_has_Classrooms_FKIndex1 ON Subject_has_Classrooms (Subject_SubjectID);
GO
CREATE INDEX Subject_has_Classrooms_FKIndex2 ON Subject_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE INDEX IFK_Rel_14 ON Subject_has_Classrooms (Subject_SubjectID);
GO
CREATE INDEX IFK_Rel_15 ON Subject_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE TABLE Attendance (
  idAttendance INTEGER  NOT NULL   IDENTITY ,
  Grade_GradeID INTEGER  NOT NULL  ,
  Student_StudentID INTEGER  NOT NULL  ,
  Date DATE    ,
  Present  BIT    ,
  remark TEXT    ,
  Academic_Year YEAR      ,
PRIMARY KEY(idAttendance)    ,
  FOREIGN KEY(Student_StudentID)
    REFERENCES Student(StudentID),
  FOREIGN KEY(Grade_GradeID)
    REFERENCES Grade(GradeID));
GO


CREATE INDEX Attendance_FKIndex1 ON Attendance (Student_StudentID);
GO
CREATE INDEX Attendance_FKIndex2 ON Attendance (Grade_GradeID);
GO


CREATE INDEX IFK_Rel_02 ON Attendance (Student_StudentID);
GO
CREATE INDEX IFK_Rel_13 ON Attendance (Grade_GradeID);
GO


CREATE TABLE Teachers_has_Classrooms (
  Teachers_TeacherID INTEGER  NOT NULL  ,
  Classrooms_idClassrooms INTEGER  NOT NULL  ,
  Year_of_Class YEAR      ,
PRIMARY KEY(Teachers_TeacherID, Classrooms_idClassrooms)    ,
  FOREIGN KEY(Teachers_TeacherID)
    REFERENCES Teachers(TeacherID),
  FOREIGN KEY(Classrooms_idClassrooms)
    REFERENCES Classrooms(idClassrooms));
GO


CREATE INDEX Teachers_has_Classrooms_FKIndex1 ON Teachers_has_Classrooms (Teachers_TeacherID);
GO
CREATE INDEX Teachers_has_Classrooms_FKIndex2 ON Teachers_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE INDEX IFK_Rel_12 ON Teachers_has_Classrooms (Teachers_TeacherID);
GO
CREATE INDEX IFK_Rel_13 ON Teachers_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE TABLE Subject_has_Exams (
  Subject_SubjectID INTEGER  NOT NULL  ,
  Exams_Exam_ID INTEGER  NOT NULL    ,
PRIMARY KEY(Subject_SubjectID, Exams_Exam_ID)    ,
  FOREIGN KEY(Subject_SubjectID)
    REFERENCES Subject(SubjectID),
  FOREIGN KEY(Exams_Exam_ID)
    REFERENCES Exams(Exam_ID));
GO


CREATE INDEX Subject_has_Exams_FKIndex1 ON Subject_has_Exams (Subject_SubjectID);
GO
CREATE INDEX Subject_has_Exams_FKIndex2 ON Subject_has_Exams (Exams_Exam_ID);
GO


CREATE INDEX IFK_Rel_05 ON Subject_has_Exams (Subject_SubjectID);
GO
CREATE INDEX IFK_Rel_06 ON Subject_has_Exams (Exams_Exam_ID);
GO


CREATE TABLE Grade_has_Classrooms (
  Grade_GradeID INTEGER  NOT NULL  ,
  Classrooms_idClassrooms INTEGER  NOT NULL  ,
  Year_2 INTEGER      ,
PRIMARY KEY(Grade_GradeID, Classrooms_idClassrooms)    ,
  FOREIGN KEY(Grade_GradeID)
    REFERENCES Grade(GradeID),
  FOREIGN KEY(Classrooms_idClassrooms)
    REFERENCES Classrooms(idClassrooms));
GO


CREATE INDEX Grade_has_Classrooms_FKIndex1 ON Grade_has_Classrooms (Grade_GradeID);
GO
CREATE INDEX Grade_has_Classrooms_FKIndex2 ON Grade_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE INDEX IFK_Rel_19 ON Grade_has_Classrooms (Grade_GradeID);
GO
CREATE INDEX IFK_Rel_20 ON Grade_has_Classrooms (Classrooms_idClassrooms);
GO


CREATE TABLE Exam_Results (
  idExam_Results INTEGER  NOT NULL   IDENTITY ,
  Exams_Exam_ID INTEGER  NOT NULL  ,
  Student_StudentID INTEGER  NOT NULL  ,
  Grade VARCHAR      ,
PRIMARY KEY(idExam_Results, Exams_Exam_ID)    ,
  FOREIGN KEY(Student_StudentID)
    REFERENCES Student(StudentID),
  FOREIGN KEY(Exams_Exam_ID)
    REFERENCES Exams(Exam_ID));
GO


CREATE INDEX Exam_Results_FKIndex1 ON Exam_Results (Student_StudentID);
GO
CREATE INDEX Exam_Results_FKIndex2 ON Exam_Results (Exams_Exam_ID);
GO


CREATE INDEX IFK_Rel_07 ON Exam_Results (Student_StudentID);
GO
CREATE INDEX IFK_Rel_15 ON Exam_Results (Exams_Exam_ID);
GO


CREATE TABLE Student_has_Subject (
  Student_StudentID INTEGER  NOT NULL  ,
  Subject_SubjectID INTEGER  NOT NULL    ,
PRIMARY KEY(Student_StudentID, Subject_SubjectID)    ,
  FOREIGN KEY(Student_StudentID)
    REFERENCES Student(StudentID),
  FOREIGN KEY(Subject_SubjectID)
    REFERENCES Subject(SubjectID));
GO


CREATE INDEX Student_has_Subject_FKIndex1 ON Student_has_Subject (Student_StudentID);
GO
CREATE INDEX Student_has_Subject_FKIndex2 ON Student_has_Subject (Subject_SubjectID);
GO


CREATE INDEX IFK_Rel_09 ON Student_has_Subject (Student_StudentID);
GO
CREATE INDEX IFK_Rel_10 ON Student_has_Subject (Subject_SubjectID);
GO


CREATE TABLE Student_Address (
  Address_ID INTEGER  NOT NULL   IDENTITY ,
  Student_StudentID INTEGER  NOT NULL  ,
  Parent_ID INTEGER  NOT NULL  ,
  Adress TEXT    ,
  Area VARCHAR(50)    ,
  Hometown VARCHAR(50)      ,
PRIMARY KEY(Address_ID, Student_StudentID)    ,
  FOREIGN KEY(Student_StudentID)
    REFERENCES Student(StudentID),
  FOREIGN KEY(Parent_ID)
    REFERENCES Parent(Parent_ID));
GO


CREATE INDEX Student_Address_FKIndex1 ON Student_Address (Student_StudentID);
GO
CREATE INDEX Student_Address_FKIndex2 ON Student_Address (Parent_ID);
GO


CREATE INDEX IFK_Rel_16 ON Student_Address (Student_StudentID);
GO
CREATE INDEX IFK_Rel_17 ON Student_Address (Parent_ID);
GO



