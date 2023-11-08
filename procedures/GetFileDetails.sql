DROP PROCEDURE IF EXISTS GetFileDetails;

DELIMITER //

CREATE PROCEDURE GetFileDetails(ID int)
BEGIN
    select URL, FileName, OwnerID
    From MediaFiles
    where FileID=ID;
END//

DELIMITER ;