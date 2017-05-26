CREATE TABLE [dbo].[Person]
(
[PersonID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[LastName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[DateOfBirth] [date] NULL,
[CompanyID] [int] NULL,
[HobbyID] [int] NULL,
[TitleID] [smallint] NULL,
[CountryID] [int] NULL,
[Gender] [nchar] (10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [CK_Person_DOB] CHECK (([DateOfBirth]<=getdate()))
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Company] FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Country] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Hobby] FOREIGN KEY ([HobbyID]) REFERENCES [dbo].[Hobby] ([HobbyID])
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Title] FOREIGN KEY ([TitleID]) REFERENCES [dbo].[Title] ([TitleID])
GO
