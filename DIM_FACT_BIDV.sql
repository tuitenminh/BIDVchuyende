USE [test]
GO
/****** Object:  Table [dbo].[Dim_Branch]    Script Date: 2024-04-22 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Branch](
	[BranchID] [int] NOT NULL,
	[BranchName] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[WardName] [nvarchar](50) NOT NULL,
	[districtName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_CUSTOMER]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_CUSTOMER](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[CustomerGroupName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[AccountOpeningDate] [date] NOT NULL,
 CONSTRAINT [PK_DIM_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_CustomerGroup]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_CustomerGroup](
	[CustomerGroupID] [int] NOT NULL,
	[CustomerGroupName] [nvarchar](50) NOT NULL,
	[CustomerGroupAlias]  AS ([CustomerGroupName]),
	[OpenCondition] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DIM_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CustomerGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_DATE]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_DATE](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDate] [char](10) NULL,
	[DAY] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeek] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHoliday] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidayName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_EMPLOYEE]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_EMPLOYEE](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[EmployeeAlias]  AS (left([EmployeeName],(10))) PERSISTED,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_SERVICE_PRODUCT]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_SERVICE_PRODUCT](
	[ProductKey] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductAlias]  AS (left([ProductName],(50))) PERSISTED,
	[Description] [nvarchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_DVKH]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_DVKH](
	[DVKHKey] [int] NOT NULL,
	[BranchKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[ServiceProductKey] [int] NOT NULL,
	[CustomerGroupKey] [int] NOT NULL,
	[RegistrationStatus] [int] NOT NULL,
	[TotalServiceVolume] [int] NOT NULL,
	[CareStartDate] [date] NOT NULL,
	[CareEndDate] [date] NOT NULL,
	[TotalCustomer_Assets] [money] NOT NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DVKHKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_TNT]    Script Date: 2024-04-22 12:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_TNT](
	[TNTKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[BranchKey] [int] NOT NULL,
	[DepartmentKey] [int] NOT NULL,
	[TNTDate] [int] NOT NULL,
	[TotalHDVCK] [decimal](18, 2) NOT NULL,
	[TotalHDBQ] [decimal](18, 2) NOT NULL,
	[TotalDebtTDCK] [decimal](18, 2) NOT NULL,
	[TotalDebtTDBQ] [decimal](18, 2) NOT NULL,
	[TotalRevenue] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TNTKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIM_EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_BranchKey] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Dim_Branch] ([BranchID])
GO
ALTER TABLE [dbo].[DIM_EMPLOYEE] CHECK CONSTRAINT [FK_BranchKey]
GO
ALTER TABLE [dbo].[FACT_DVKH]  WITH CHECK ADD FOREIGN KEY([BranchKey])
REFERENCES [dbo].[Dim_Branch] ([BranchID])
GO
ALTER TABLE [dbo].[FACT_DVKH]  WITH CHECK ADD FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DIM_CUSTOMER] ([CustomerID])
GO
ALTER TABLE [dbo].[FACT_DVKH]  WITH CHECK ADD FOREIGN KEY([CustomerGroupKey])
REFERENCES [dbo].[DIM_CustomerGroup] ([CustomerGroupID])
GO
ALTER TABLE [dbo].[FACT_DVKH]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[DIM_EMPLOYEE] ([EmployeeID])
GO
ALTER TABLE [dbo].[FACT_DVKH]  WITH CHECK ADD FOREIGN KEY([ServiceProductKey])
REFERENCES [dbo].[DIM_SERVICE_PRODUCT] ([ProductKey])
GO
ALTER TABLE [dbo].[FACT_TNT]  WITH CHECK ADD FOREIGN KEY([BranchKey])
REFERENCES [dbo].[Dim_Branch] ([BranchID])
GO
ALTER TABLE [dbo].[FACT_TNT]  WITH CHECK ADD FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DIM_CUSTOMER] ([CustomerID])
GO
ALTER TABLE [dbo].[FACT_TNT]  WITH CHECK ADD FOREIGN KEY([TNTDate])
REFERENCES [dbo].[DIM_DATE] ([DateKey])
GO
