DROP PROCEDURE IF EXISTS InsertUser;

DELIMITER //

CREATE PROCEDURE InsertUser(
ipaddress varchar(250)
)
BEGIN
    insert into Users
    (IPAddress)
    values
    (ipaddress);
    SELECT LAST_INSERT_ID();
END//

DELIMITER ;