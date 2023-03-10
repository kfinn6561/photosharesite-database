DROP PROCEDURE IF EXISTS InsertFile;

DELIMITER //

CREATE PROCEDURE InsertFile(
    fileName varchar(255),
    url varchar(250),
    ownerid int
)
BEGIN
    insert into MediaFiles
    (URL, FileName, OwnerID)
    values
    (url, fileName, ownerid);    
END//

DELIMITER ;