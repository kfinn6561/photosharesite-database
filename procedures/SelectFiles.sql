DECLARE @ProcedureName AS VARCHAR(100)='SelectFiles'


DROP PROCEDURE IF EXISTS @ProcedureName;

DELIMITER //

CREATE PROCEDURE @ProcedureName()
BEGIN
    select mf.Fileid, mf.URL, mf.UploadDate, u.IPAddress
    From MediaFiles mf
    left join
    Users u
on mf.OwnerID=u.UserID;
END

DELIMITER ;