-- Student Table

CREATE TABLE Student (
    StudentID INTEGER PRIMARY KEY,
    FirstName Text NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT UNIQUE
);

-- Instructors Table

CREATE TABLE Instrutor (
    InstructorID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL
);

--Courses Table 

CREATE TABLE Courses (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT NOT NULL,
    InstuctorID INTEGER,
    FOREIGN KEY (InstuctorID)
        REFERENCES Instuctors(InstructorID)
);

--Enrollments Table 

CREATE TABLE Enrollments (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,

    FOREIGN KEY(StudentID)
        REFERENCES Students(StudentID),

    FOREIGN KEY(CourseID)
        REFERENCES Courses(CourseID)
);

-- Students

 INSERT INTO Students
 VALUES
 (1,'Noluthando','Zilimbola-Mothata','zilimbolanoluthando1@gmail.com,'),
 (2,'Sarah','Jones','sarah@gmail.com'),
 (3,'Michal','Brown','michealb@gmail.com');

 --Instructors

 INSERT INTO Instructors
 VALUES
 (1,'James','Wilson'),
 (2,'Mary','Twala');

 --Courses

 INSERT INTO Courses
 VALUES
 (1,'Database Systems',1),
 (2,'Networking Fundamentals',2);

 --Enrollments

 INSERT INTO Enrollments
 VALUES
 (1,1,1),
 (1,2,1),
 (3,3,2);


