CREATE TABLE [dbo].[Company]
(
[CompanyID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Website] [nvarchar] (150) COLLATE Latin1_General_CI_AS NULL,
[Employees] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Company] ADD CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED  ([CompanyID]) ON [PRIMARY]
GO
