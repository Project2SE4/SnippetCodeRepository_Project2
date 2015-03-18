USE [SnippetDatabase]
GO
/****** Object:  Table [dbo].[VB]    Script Date: 03/09/2015 22:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VB](
	[VBId] [int] IDENTITY(1,1) NOT NULL,
	[Content_vb] [nvarchar](100) NOT NULL,
	[Sourcecode_vb] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VBId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Python]    Script Date: 03/09/2015 22:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Python](
	[PythonId] [int] IDENTITY(1,1) NOT NULL,
	[Content_python] [nvarchar](100) NOT NULL,
	[Sourcecode_python] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PythonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JavaCode]    Script Date: 03/09/2015 22:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JavaCode](
	[JavaId] [int] IDENTITY(1,1) NOT NULL,
	[Content_java] [nvarchar](100) NOT NULL,
	[Sourcecode_java] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_JavaCode] PRIMARY KEY CLUSTERED 
(
	[JavaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSharp]    Script Date: 03/09/2015 22:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSharp](
	[CSharpId] [int] IDENTITY(1,1) NOT NULL,
	[Content_c] [nvarchar](100) NOT NULL,
	[Sourcecode_c] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CSharp] PRIMARY KEY CLUSTERED 
(
	[CSharpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 03/09/2015 22:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO