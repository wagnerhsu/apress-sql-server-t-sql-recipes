-- Use @@rowcount to make sure only ONE row returned
DECLARE @AddressLine1 NVARCHAR(60) = 'Alger County Sheriff'
DECLARE @AddressLine2 NVARCHAR(60) = '101 E. Varnum'
SELECT
	@AddressLine1 = AddressLine1
   ,@AddressLine2 = AddressLine2
FROM Person.Address
WHERE AddressID = 49862;
IF @@rowcount = 1
SELECT
	@AddressLine1
   ,@AddressLine2
ELSE
SELECT
	'Either no rows or too many rows found.';