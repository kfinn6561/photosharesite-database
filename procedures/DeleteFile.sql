DROP PROCEDURE IF EXISTS DeleteFile;

DELIMITER //

CREATE PROCEDURE DeleteFile(
FileIDToDelete int
)
BEGIN
    delete from MediaFiles
    where FileID=FileIDToDelete;
END//

DELIMITER ;