DROP PROCEDURE IF EXISTS SelectUsers;

CREATE PROCEDURE SelectUsers()
BEGIN
    select UserID, IPAddress
	from Users;
END;