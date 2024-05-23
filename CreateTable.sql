CREATE TABLE Classes (
	class_name VARCHAR(25) PRIMARY KEY,
    teacher_name VARCHAR(50)
);

CREATE TABLE StudentList (
    Student_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    birth_day DATE,
    class_name VARCHAR(20),
    note VARCHAR(255),
    FOREIGN KEY (class_name) REFERENCES Classes(class_name)
);

CREATE TABLE Grades (
	Student_id VARCHAR(20) PRIMARY KEY,
    math FLOAT,
    physical FLOAT,
    chemistry FLOAT,
    literature FLOAT,
    classification VARCHAR(10),
    FOREIGN KEY (Student_id) REFERENCES StudentList(Student_id)
);