DROP PROCEDURE IF EXISTS SelectFiles;

DELIMITER //

CREATE PROCEDURE SelectFiles()
BEGIN
    select mf.Fileid, mf.URL, mf.UploadDate, u.IPAddress
    From MediaFiles mf
    left join
    Users u
on mf.OwnerID=u.UserID;
END//

DELIMITER ;