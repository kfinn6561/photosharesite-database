DROP PROCEDURE IF EXISTS InsertOrSelectUser;

CREATE PROCEDURE InsertOrSelectUser(
ipaddress varchar(250)
)
BEGIN
    select @UserID:=UserID
    from Users
    where IPAddress=ipaddress;

    if @UserID is null
    then

        insert into Users
        (IPAddress)
        values
        (ipaddress);
        SELECT @UserID:=LAST_INSERT_ID();
    end if;
    select @UserID as ID;
END;