
Create proc SP_test @DateColumnName varchar(30),@TableName varchar(30)
AS
EXEC
('update LoadDefinition set MaxDate=(select max(' + @DateColumnName + ')from ' + @TableName + ')
where TableName='''+ @TableName + '''')