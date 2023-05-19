DROP PROCEDURE IF EXISTS InsertOrSelectUser;

DELIMITER //

CREATE PROCEDURE InsertOrSelectUser(
NewIPAddress varchar(250)
)
BEGIN
    declare NewID int;
	set NewID = NULL;
    select `UserID` into NewID
    from Users
    where `IPAddress`=NewIPAddress;

    if NewID is null
    then

        insert into Users
        (`IPAddress`)
        values
        (NewIPAddress);
        SELECT LAST_INSERT_ID() into NewID;
    end if;
    select NewID as UserID;
END//

DELIMITER ;