﻿IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_NAME = 'Audiences')
BEGIN
	DROP TABLE [dbo].[Audiences]
END
GO

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_NAME = 'Audiences')
BEGIN
	CREATE TABLE [dbo].[Audiences](
		[ClientId] [varchar](32) NOT NULL,
		[Base64Secret] [varchar](80) NOT NULL,
		[Name] [varchar](100) NOT NULL
		CONSTRAINT [PK_Audience] PRIMARY KEY CLUSTERED 
		(
			[ClientId] ASC
		)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	INSERT INTO [Audiences] ([ClientId], [Base64Secret], [Name]) VALUES ('099153c2625149bc8ecb3e85e03f0022', 'IxrAjDoa2FqElO7IhrSrUJELhUckePEPVpaePlS_Xaw', 'Campervibe')
END 
GO