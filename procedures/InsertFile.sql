DROP PROCEDURE IF EXISTS InsertFile;

DELIMITER //

CREATE PROCEDURE InsertFile(
url varchar(250),
ownerid int
)
BEGIN
    insert into MediaFiles
    (URL, OwnerID)
    values
    (url, ownerid);    
END//

DELIMITER ;