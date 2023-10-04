DROP PROCEDURE IF EXISTS UserExists;

DELIMITER //

CREATE PROCEDURE UserExists(
    testuserid int
)
BEGIN
    select exists(select * from Users where `UserID`=testuserid) as 'IDExists';
END//

DELIMITER ;