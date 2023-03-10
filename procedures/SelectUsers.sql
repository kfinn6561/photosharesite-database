DROP PROCEDURE IF EXISTS SelectUsers;

DELIMITER //

CREATE PROCEDURE SelectUsers()
BEGIN
    select UserID, IPAddress
	from Users;
END//

DELIMITER ;