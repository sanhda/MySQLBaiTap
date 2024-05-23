INSERT INTO classes
VALUES ("Class1", "Nguyen van A"),
		("Class2", "Nguyen van B"),
        ("Class3", "Nguyen van C"),
        ("Class4", "Nguyen van D"),
        ("Class5", "Nguyen van E"),
        ("Class6", "Nguyen van F"),
        ("Class7", "Nguyen van G"),
        ("Class8", "Nguyen van H"),
        ("Class9", "Nguyen van I"),
        ("Class10", "Nguyen van J");
SELECT * FROM classes;
        
INSERT INTO grades
VALUES ("StudentId1", 10, 9, 8, 9, ""),
		("StudentId2", 5, 8, 7, 5, ""),
		("StudentId3", 10, 9, 8, 5, ""),
		("StudentId4", 10, 9, 5, 9, ""),
		("StudentId5", 10, 5, 8, 9, ""),
		("StudentId6", 5, 9, 8, 9, ""),
		("StudentId7", 3, 2, 5, 5, ""),
		("StudentId8", 1, 2, 2, 3, ""),
		("StudentId9", 10, 9, 8, 9, ""),
		("StudentId10", 10, 9, 8, 9, "");
SELECT * FROM grades;
        
INSERT INTO studentlist
VALUES ("StudentId1", "Vo van", "A", "Nam", '2000-05-10', "Class1", ""),
("StudentId2", "Vo van", "ABC", "Nam", '2001-04-20', "Class1", ""),
("StudentId3", "Vo van", "C", "Nam", '2000-10-10', "Class3", ""),
("StudentId4", "Vo van", "D", "Nam", '2001-05-10', "Class4", ""),
("StudentId5", "Vo van", "E", "Nam", '2000-10-30', "Class5", ""),
("StudentId6", "Vo thi", "F", "Nữ", '2000-05-10', "Class6", ""),
("StudentId7", "Vo thi", "G", "Nữ", '2002-05-05', "Class7", ""),
("StudentId8", "Vo thi", "H", "Nữ", '2000-02-10', "Class8", ""),
("StudentId9", "Vo thi", "I", "Nữ", '2001-05-08', "Class9", ""),
("StudentId10", "Vo thi", "J", "Nữ", '2000-05-10', "Class10", "");
SELECT * FROM studentlist;