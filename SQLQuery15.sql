USE BD_LEHKOVIE1;
GO
create trigger stopak5 on OSAGO
AFTER INSERT , UPDATE AS
IF UPDATE(ID_OSAGO)
BEGIN
IF (SELECT COUNT(*)
FROM inserted
WHERE ID_OSAGO < 0 ) > 0
BEGIN
rollback transaction
print 'ОСАГО не может иметь отрицательное значение'
END
END