CREATE TABLE [dbo].[UserInfo]
(
	[uID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Username] NVARCHAR(MAX) NULL, 
    [Email] NVARCHAR(MAX) NULL, 
    [Password] NVARCHAR(MAX) NULL, 
    [Contact] NVARCHAR(MAX) NULL
)
