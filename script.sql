USE [Hospital]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 16.02.2024 13:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [UQ_Name] UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diseases]    Script Date: 16.02.2024 13:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diseases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Severity] [int] NOT NULL,
 CONSTRAINT [UQ_NameDis] UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 16.02.2024 13:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [char](10) NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examinations]    Script Date: 16.02.2024 13:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examinations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartTime] [time](7) NOT NULL,
 CONSTRAINT [UQ_NameExam] UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF_Departments_Financing]  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Diseases] ADD  CONSTRAINT [DF_Diseases_Severity]  DEFAULT ((1)) FOR [Severity]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK_Building] CHECK  (([Building]>(1) AND [Building]<(5)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK_Building]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK_Financing] CHECK  (([Financing]>(0)))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK_Financing]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK_Name] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK_Name]
GO
ALTER TABLE [dbo].[Diseases]  WITH CHECK ADD  CONSTRAINT [CK_NameDis] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Diseases] CHECK CONSTRAINT [CK_NameDis]
GO
ALTER TABLE [dbo].[Diseases]  WITH CHECK ADD  CONSTRAINT [CK_Severity] CHECK  (([Severity]>(1)))
GO
ALTER TABLE [dbo].[Diseases] CHECK CONSTRAINT [CK_Severity]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [CK_NameDoc] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [CK_NameDoc]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [CK_Salary] CHECK  (([Salary]>=(0)))
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [CK_Salary]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [CK_Surname] CHECK  (([Surname]<>''))
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [CK_Surname]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [CK_DayOfWeek] CHECK  (([DayOfWeek]>(1) AND [DayOfWeek]<(7)))
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [CK_DayOfWeek]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [CK_EndTime] CHECK  (([EndTime]>[StartTime]))
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [CK_EndTime]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [CK_NameExam] CHECK  (([Name]<>''))
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [CK_NameExam]
GO
ALTER TABLE [dbo].[Examinations]  WITH CHECK ADD  CONSTRAINT [CK_StartTime] CHECK  (([StartTime]>='08:00:00' AND [StartTime]<='18:00:00'))
GO
ALTER TABLE [dbo].[Examinations] CHECK CONSTRAINT [CK_StartTime]
GO
