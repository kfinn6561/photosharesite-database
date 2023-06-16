DROP PROCEDURE IF EXISTS SelectFiles;

DELIMITER //

CREATE PROCEDURE SelectFiles()
BEGIN
    select FileID, URL, FileName, OwnerID
    From MediaFiles
    order by UploadDate desc;
END//

DELIMITER ;