CREATE TABLE [dbo].[Title]
(
[TitleID] [smallint] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (10) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Title] ADD CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED  ([TitleID]) ON [PRIMARY]
GO
