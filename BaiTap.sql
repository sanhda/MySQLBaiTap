-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), ngày sinh.
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist;

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), sinh ngày 10
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist
WHERE DAY(birth_day) = 10;

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), ngày sinh là 05/05/2002
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist
WHERE birth_day = '2002-05-05';

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), tên là A
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist
WHERE last_name = 'A';

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), tên bắt đầu bằng chữ A
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist
WHERE last_name LIKE "A%";

-- Hiện danh sách sinh viên: mã hs, họ và tên (là 1 cột), trong tên có A
SELECT Student_id, CONCAT(first_name, ' ', last_name) AS 'full name', birth_day
FROM studentlist
WHERE last_name LIKE "%A%";

-- Đếm số sinh viên tên bắt đầu bằng chữ A
SELECT COUNT(Student_id) AS 'So sinh vien bat dau bang chu A'
FROM studentlist
WHERE last_name LIKE "A%";

-- Hiện danh sách sinh viên: họ và tên (là 1 cột), ngày sinh, tên lớp, tên GVCN.
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day, classes.class_name, teacher_name
FROM studentlist JOIN classes
ON studentlist.class_name = classes.class_name;

-- Hiện danh sách sinh viên: họ và tên (là 1 cột), ngày sinh, điểm trung bình, xếp loại
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day,
        (math + physical + chemistry + literature) / 4 AS 'Avarage grade', classification
FROM studentlist JOIN grades
ON studentlist.Student_id = grades.Student_id;

-- Đếm số học sinh của mỗi lớp
SELECT class_name, COUNT(Student_id) AS "Số học sinh"
FROM studentlist
GROUP BY class_name;

-- Hiện ra lớp có số lượng sinh viên > 1
SELECT classes.class_name, teacher_name
FROM studentlist JOIN classes
ON studentlist.class_name = classes.class_name
GROUP BY class_name
HAVING COUNT(Student_id) > 1;

-- Hiện ra lớp có số lượng sinh viên nhiều nhất
SELECT classes.class_name, teacher_name
FROM studentlist JOIN classes
ON studentlist.class_name = classes.class_name
GROUP BY class_name
ORDER BY COUNT(Student_id) DESC
LIMIT 1;

-- Tìm học sinh có điểm lớn nhất
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day,
        (math + physical + chemistry + literature) / 4 AS 'Avarage_grade'
FROM grades JOIN studentlist
ON studentlist.Student_id = grades.Student_id
ORDER BY Avarage_grade DESC
LIMIT 1;

-- Hiện ra danh sách các học sinh có điểm tb > 8
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day,
        (math + physical + chemistry + literature) / 4 AS 'Avarage_grade'
FROM grades JOIN studentlist
ON studentlist.Student_id = grades.Student_id
WHERE (math + physical + chemistry + literature) / 4 > 8
ORDER BY Avarage_grade DESC;

-- Tổng điểm tb của các bạn có tên bắt đầu bằng chữ A
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day,
        (math + physical + chemistry + literature) / 4 AS 'Avarage_grade'
FROM grades JOIN studentlist
ON grades.Student_id = studentlist.Student_id
WHERE last_name LIKE "A%";

-- Hiện ra danh sách các học sinh có điểm tb > 5 và điểm toán > 8
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day, math,
        (math + physical + chemistry + literature) / 4 AS 'Avarage_grade'
FROM grades JOIN studentlist
ON studentlist.Student_id = grades.Student_id
WHERE (math + physical + chemistry + literature) / 4 > 5 AND math > 8
ORDER BY Avarage_grade DESC;

-- Hiện ra danh sách các học sinh có xếp loại là giỏi
SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
		birth_day,
        classification
FROM grades JOIN studentlist
ON studentlist.Student_id = grades.Student_id
WHERE classification = "Gioi";

-- Đếm số lượng học sinh giỏi
SELECT classification, COUNT(classification) AS "Số lượng học sinh giỏi"
FROM grades JOIN studentlist
ON studentlist.Student_id = grades.Student_id
WHERE classification = "Gioi"
GROUP BY classification;

-- Đếm số lượng học sinh giỏi của từng lớp
SELECT studentlist.class_name, COUNT(studentlist.Student_id)
FROM studentlist
JOIN grades
ON studentlist.Student_id = grades.Student_id
WHERE grades.classification = "Gioi"
GROUP BY studentlist.class_name;

-- In ra các học sinh chưa tham gia thi
SELECT *
FROM studentlist
LEFT JOIN grades
ON studentlist.Student_id = grades.Student_id
WHERE grades.Student_id IS NULL;

-- In ra học sinh có điểm trung bình lớn nhất của từng lớp
