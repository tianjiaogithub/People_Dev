CREATE TABLE [dbo].[Country]
(
[CountryID] [int] NOT NULL IDENTITY(1, 1),
[CountryName] [nchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Population] [int] NULL,
[Area] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Country] ADD CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED  ([CountryID]) ON [PRIMARY]
GO
