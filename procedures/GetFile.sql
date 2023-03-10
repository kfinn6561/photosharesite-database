DROP PROCEDURE IF EXISTS GetFile;

DELIMITER //

CREATE PROCEDURE GetFile(
FileID int
)
BEGIN
    select mf.Fileid, mf.URL, mf.UploadDate, mf.FileName, u.IPAddress
    From MediaFiles mf
    left join
    Users u
on mf.OwnerID=u.UserID
where mf.FileID=FileID;
END//

DELIMITER ;