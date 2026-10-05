CREATE DATABASE IF NOT EXISTS college
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE college;

CREATE TABLE STUDENT (
    Rollno VARCHAR(8) NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Dateofbirth DATE,
    CONSTRAINT pk_student PRIMARY KEY (Rollno)
);

CREATE TABLE COURSE (
    SID VARCHAR(6) NOT NULL,
    Cname VARCHAR(40) NOT NULL,
    TotalSeats INT NOT NULL,
    Duration INT,
    Coursetype VARCHAR(10) NOT NULL,
    TeacherInCharge VARCHAR(40),
    CONSTRAINT pk_course PRIMARY KEY (SID),
    CONSTRAINT uq_cname UNIQUE (Cname),
    CONSTRAINT chk_seats CHECK (TotalSeats > 0),
    CONSTRAINT chk_duration CHECK (Duration BETWEEN 1 AND 6),
    CONSTRAINT chk_ctype CHECK (Coursetype IN ('Fulltime','Parttime'))
);

CREATE TABLE SOCIETY (
    SocID VARCHAR(6) NOT NULL,
    Socname VARCHAR(40) NOT NULL,
    Mentor VARCHAR(40),
    TotalSeats INT NOT NULL,
    CONSTRAINT pk_society PRIMARY KEY (SocID),
    CONSTRAINT uq_socname UNIQUE (Socname),
    CONSTRAINT chk_socseats CHECK (TotalSeats > 0)
);

CREATE TABLE ADMISSION (
    Rollno VARCHAR(8) NOT NULL,
    SID VARCHAR(6) NOT NULL,
    Dateofadmission DATE NOT NULL,
    CONSTRAINT pk_admission PRIMARY KEY (Rollno, SID),
    CONSTRAINT fk_adm_student FOREIGN KEY (Rollno)
        REFERENCES STUDENT(Rollno)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_adm_course FOREIGN KEY (SID)
        REFERENCES COURSE(SID)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE ENROLLMENT (
    Rollno VARCHAR(8) NOT NULL,
    SocID VARCHAR(6) NOT NULL,
    Dateofenrollment DATE NOT NULL,
    CONSTRAINT pk_enrollment PRIMARY KEY (Rollno, SocID),
    CONSTRAINT fk_enr_student FOREIGN KEY (Rollno)
        REFERENCES STUDENT(Rollno)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_enr_society FOREIGN KEY (SocID)
        REFERENCES SOCIETY(SocID)
        ON DELETE CASCADE ON UPDATE CASCADE
);
