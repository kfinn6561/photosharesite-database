DROP PROCEDURE IF EXISTS DeleteFile;

CREATE PROCEDURE DeleteFile(
FileIDToDelete int
)
BEGIN
    delete from MediaFiles
    where FileID=FileIDToDelete;
END;