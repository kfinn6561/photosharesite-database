DROP PROCEDURE IF EXISTS SelectFiles;

DELIMITER //

CREATE PROCEDURE SelectFiles()
BEGIN
    select mf.FileID, mf.URL, mf.FileName, u.IPAddress
    From MediaFiles mf
    left join
    Users u
    on mf.OwnerID=u.UserID
    order by mf.UploadDate desc;
END//

DELIMITER ;