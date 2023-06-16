DROP PROCEDURE IF EXISTS SelectFiles;

DELIMITER //

CREATE PROCEDURE SelectFiles()
BEGIN
    select Fileid, URL, FileName, OwnerID
    From MediaFiles
    order by UploadDate desc;
END//

DELIMITER ;