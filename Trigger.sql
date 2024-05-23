DELIMITER $$
CREATE TRIGGER before_insert_grade
BEFORE INSERT ON grades
FOR EACH ROW
BEGIN
DECLARE avarage INT default (NEW.math + NEW.physical + NEW.chemistry + NEW.literature)/4;
IF avarage > 8 THEN
	SET NEW.classfication = "Gioi";
ELSEIF avarage > 7 THEN
	SET NEW.classfication = "Kha";
ELSEIF avarage > 5 THEN
	SET NEW.classfication = "Trung Binh";
ELSE
	SET NEW.classfication = "Yeu";
END IF;
END $$
DELIMITER ;