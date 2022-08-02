DROP PROCEDURE IF EXISTS InsertTestUser;

DELIMITER //

CREATE PROCEDURE InsertTestUser(
ipaddress varchar(250)
)
BEGIN
    insert into Users
    (IPAddress)
    values
    (ipaddress);
END//

DELIMITER ;