USE [master]
GO
/****** Object:  Database [WfDB]    Script Date: 06/17/2016 08:20:23 ******/
CREATE DATABASE [WfDB] ON  PRIMARY 
( NAME = N'WfDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WfDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WfDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WfDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WfDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WfDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WfDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WfDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WfDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WfDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WfDB] SET ARITHABORT OFF
GO
ALTER DATABASE [WfDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WfDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WfDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WfDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WfDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WfDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WfDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WfDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WfDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WfDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WfDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [WfDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WfDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WfDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WfDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WfDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WfDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WfDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WfDB] SET  READ_WRITE
GO
ALTER DATABASE [WfDB] SET RECOVERY FULL
GO
ALTER DATABASE [WfDB] SET  MULTI_USER
GO
ALTER DATABASE [WfDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WfDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'WfDB', N'ON'
GO
USE [WfDB]
GO
/****** Object:  Table [dbo].[tmpTest]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmpTest](
	[ID] [int] NOT NULL,
	[VALUE] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tmpTest] ([ID], [VALUE]) VALUES (1, N'A')
INSERT [dbo].[tmpTest] ([ID], [VALUE]) VALUES (2, N'B')
INSERT [dbo].[tmpTest] ([ID], [VALUE]) VALUES (3, N'C')
/****** Object:  Table [dbo].[SysUserResource]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ResourceID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysUserResource] ON
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (1, 7, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (2, 7, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (3, 7, 4)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (4, 7, 5)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (5, 8, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (6, 8, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (7, 8, 4)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (8, 8, 5)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (9, 11, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (10, 11, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (11, 11, 6)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (12, 12, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (13, 12, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (14, 12, 6)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (15, 9, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (16, 9, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (17, 9, 7)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (18, 10, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (19, 10, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (20, 10, 7)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (21, 13, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (22, 13, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (23, 13, 8)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (24, 14, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (25, 14, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (26, 14, 8)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (27, 15, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (28, 15, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (29, 15, 9)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (30, 15, 10)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (31, 16, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (32, 16, 2)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (33, 16, 9)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID]) VALUES (34, 16, 10)
SET IDENTITY_INSERT [dbo].[SysUserResource] OFF
/****** Object:  Table [dbo].[SysUser]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysUser] ON
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (1, N'陈小星')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (2, N'魏琼')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (3, N'马波')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (4, N'李颖')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (5, N'张恒丰')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (6, N'路天明')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (7, N'陈盖茨')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (8, N'白菲特')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (9, N'张明')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (10, N'李杰')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (11, N'飞羽')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (12, N'雪莉')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (13, N'杰米')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (14, N'旺财')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (15, N'大汉')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (16, N'小威')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (17, N'崔红')
INSERT [dbo].[SysUser] ([ID], [UserName]) VALUES (18, N'金兰')
SET IDENTITY_INSERT [dbo].[SysUser] OFF
/****** Object:  Table [dbo].[SysRoleUser]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[UserID] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SysRoleUser_Unique] ON [dbo].[SysRoleUser] 
(
	[RoleID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysRoleUser] ON
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (1, 8, 1)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (2, 7, 2)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (3, 4, 3)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (4, 3, 4)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (5, 2, 5)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (6, 1, 6)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (7, 9, 7)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (8, 9, 8)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (9, 10, 11)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (10, 10, 12)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (11, 11, 9)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (12, 11, 10)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (13, 12, 13)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (14, 12, 14)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (15, 13, 15)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (16, 13, 16)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (17, 14, 17)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (18, 2, 18)
SET IDENTITY_INSERT [dbo].[SysRoleUser] OFF
/****** Object:  Table [dbo].[SysRoleGroupResource]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleGroupResource](
	[ID] [int] NOT NULL,
	[RgType] [smallint] NOT NULL,
	[RgID] [int] NOT NULL,
	[ResourceID] [int] NOT NULL,
	[PermissionType] [smallint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (1, 1, 9, 1, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (2, 1, 9, 2, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (3, 1, 9, 4, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (4, 1, 9, 5, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (5, 1, 10, 1, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (6, 1, 10, 2, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (7, 1, 10, 6, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (8, 1, 11, 7, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (9, 1, 12, 8, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (10, 1, 13, 9, 1)
INSERT [dbo].[SysRoleGroupResource] ([ID], [RgType], [RgID], [ResourceID], [PermissionType]) VALUES (11, 1, 13, 10, 1)
/****** Object:  Table [dbo].[SysRole]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [varchar](50) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysRole] ON
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (1, N'employees', N'普通员工')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (2, N'depmanager', N'部门经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (3, N'hrmanager', N'人事经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (4, N'director', N'主管总监')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (7, N'deputygeneralmanager', N'副总经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (8, N'generalmanager', N'总经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (9, N'salesmate', N'业务员(Sales)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (10, N'techmate', N'打样员(Tech)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (11, N'merchandiser', N'跟单员(Made)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (12, N'qcmate', N'质检员(QC)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (13, N'expressmate', N'包装员(Express)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (14, N'finacemanager', N'财务经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (21, N'testcode', N'testrole')
SET IDENTITY_INSERT [dbo].[SysRole] OFF
/****** Object:  Table [dbo].[SysResource]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceType] [smallint] NOT NULL,
	[ParentResourceID] [int] NOT NULL,
	[ResourceCode] [varchar](100) NOT NULL,
	[ResourceName] [nvarchar](50) NOT NULL,
	[OrderNo] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysResource] ON
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (1, 1, 0, N'SfDemo.Made', N'生产订单系统', 1)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (2, 2, 1, N'SfDemo.Made.POrder', N'生产订单流程', 1)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (4, 5, 2, N'SfDemo.Made.POrder.SyncOrder', N'同步订单', 1)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (5, 5, 2, N'SfDemo.Made.POrder.Dispatch', N'分派订单', 2)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (6, 5, 2, N'SfDemo.Made.POrder.Sample', N'打样', 3)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (7, 5, 2, N'SfDemo.Made.POrder.Manufacture', N'生产', 4)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (8, 5, 2, N'SfDemo.Made.POrder.QCCheck', N'质检', 5)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (9, 5, 2, N'SfDemo.Made.POrder.Weight', N'称重', 6)
INSERT [dbo].[SysResource] ([ID], [ResourceType], [ParentResourceID], [ResourceCode], [ResourceName], [OrderNo]) VALUES (10, 5, 2, N'SfDemo.Made.POrder.Delivery', N'发货', 7)
SET IDENTITY_INSERT [dbo].[SysResource] OFF
/****** Object:  Table [dbo].[SysEmployee]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysEmployee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeptID] [int] NOT NULL,
	[EmpCode] [varchar](50) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[UserID] [int] NULL,
	[Mobile] [varchar](20) NULL,
	[EMail] [varchar](100) NULL,
	[ManagerID] [int] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_SYSEMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysEmployee] ON
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (1, 2, N'0001', N'小明', 6, NULL, NULL, 5, NULL)
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (2, 2, N'0002', N'张经理', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (3, 3, N'0003', N'金经理', 18, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SysEmployee] OFF
/****** Object:  Table [dbo].[SysDepartment]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysDepartment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [varchar](50) NOT NULL,
	[DeptName] [nvarchar](100) NOT NULL,
	[ParentID] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SYSDEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysDepartment] ON
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (1, N'CP', N'若驰科技', 0, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (2, N'TH', N'技术部', 1, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (3, N'HR', N'人事部', 1, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (4, N'FN', N'财务部', 1, NULL)
SET IDENTITY_INSERT [dbo].[SysDepartment] OFF
/****** Object:  Table [dbo].[EavEntityFieldInputListValue]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityFieldInputListValue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_EAVENTITYFIELDINPUTLISTVALU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EavEntityDef]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityDef](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityTitle] [nvarchar](100) NOT NULL,
	[EntityName] [nvarchar](100) NOT NULL,
	[EntityCode] [varchar](100) NULL,
	[TemplateContent] [nvarchar](max) NULL,
	[HTMLContent] [nvarchar](max) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_EAVENTITYDEF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EavEntityDef] ON
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'请假申请', N'员工请假表单', N'ApplyLeaveForm', NULL, NULL, N'填写请假信息，填写审核意见。', CAST(0x0000A53800000000 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'报销申请', N'财务报销表单', N'ApplyExpenseAccountForm', NULL, NULL, NULL, CAST(0x0000A53D00B89504 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (8, N'title', N'name', N'code', NULL, NULL, N'description', CAST(0x0000A53F015D5B5E AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (12, N'titel2', N'name2', N'code2', N'<div style="z-index: 44;" class="span12 ui-sortable" id="selected-content">
                    <div style="z-index: 45;" class="row-fluid" id="form-title-div">
                        <input value="titel2" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text">
                    </div>
                    <div style="z-index: 46;" class="row-fluid">
                        <div style="z-index: 47;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">姓名</label>
                        <input name="txtname" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;EntityDefID&quot;:12,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;姓名&quot;,&quot;AttrCode&quot;:&quot;txtname&quot;,&quot;AttrDataType&quot;:&quot;1&quot;,&quot;FieldInputType&quot;:1,&quot;IsMandatory&quot;:false}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 48;" class="span6 well droppedFields ui-droppable"></div>
                    </div>
                    <div style="z-index: 49;" class="row-fluid">
                        <div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div>
                    </div>
                </div>', N'', N'desc', CAST(0x0000A53F016142DA AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (32, N'差旅报销单', N'差旅报销表单', N'CLBXBCA80', N'<div style="z-index: 76;" class="span12 ui-sortable" id="selected-content">
                    <div style="z-index: 77;" class="row-fluid" id="form-title-div">
                        <input value="差旅报销单" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text">
                    </div>
                    <div style="z-index: 78;" class="row-fluid">
                        <div style="z-index: 79;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 75;" class="droppedField">
                        <label class="control-label">出差说明</label>
                        <input name="CCSMU12" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:88,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;出差说明&quot;,&quot;AttrCode&quot;:&quot;CCSMU12&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 80;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1002" style="z-index: 74;" class="date droppedField">
                        <label class="control-label">开始日期</label>
                        <input name="KSRJQ51" class="ctrl-date form_datetime" size="16" value="2015-06-15 14:45" readonly="" type="text">
                        
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:89,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;开始日期&quot;,&quot;AttrCode&quot;:&quot;KSRJQ51&quot;,&quot;AttrDataType&quot;:4,&quot;FieldInputType&quot;:7,&quot;Format&quot;:&quot;YYYY/MM/DD&quot;,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                    </div>
                    
                <div style="z-index: 71;" class="row-fluid"><div style="z-index: 72;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1003" style="z-index: 70;" class="droppedField">
                        <label class="control-label">类别</label>
                        <select name="LBX85" class="ctrl-combobox"><option>火车</option><option>飞机</option><option>轮船</option><option></option></select>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:90,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1003&quot;,&quot;AttrName&quot;:&quot;类别&quot;,&quot;AttrCode&quot;:&quot;LBX85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:3,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 73;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1004" style="z-index: 68;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">金额范围</label>
                        <div class="ctrl-radiogroup" style="display: inline-block; z-index: 69;"><span style="display:block;"><input name="JEFWB35" value="1000以内" type="radio">1000以内</span><span style="display:block;"><input name="JEFWB35" value="5000以内" type="radio">5000以内</span><span style="display:block;"><input name="JEFWB35" value="超过5000" type="radio">超过5000</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:91,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1004&quot;,&quot;AttrName&quot;:&quot;金额范围&quot;,&quot;AttrCode&quot;:&quot;JEFWB35&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:5,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 65;" class="row-fluid"><div style="z-index: 66;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1005" style="z-index: 63;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">备注</label>
                        <div class="ctrl-checkboxgroup" style="display: inline-block; z-index: 64;"><span style="display:block;"><input name="BZT14" value="三次以内出差" type="checkbox">三次以内出差</span><span style="display:block;"><input name="BZT14" value="员工旅游奖励" type="checkbox">员工旅游奖励</span><span style="display:block;"><input name="BZT14" value="客户拜访" type="checkbox">客户拜访</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:93,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1005&quot;,&quot;AttrName&quot;:&quot;备注&quot;,&quot;AttrCode&quot;:&quot;BZT14&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:4,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 67;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1006" style="z-index: 62;" class="droppedField">
                        <label class="control-label">金额</label>
                        <input name="JEJ41" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:94,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1006&quot;,&quot;AttrName&quot;:&quot;金额&quot;,&quot;AttrCode&quot;:&quot;JEJ41&quot;,&quot;AttrDataType&quot;:2,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 81;" class="row-fluid">
                        <div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 82;"></div>
                    </div></div>', N'
                    
                    <div style="z-index: 78;" class="row-fluid">
                        <div style="z-index: 79;" class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 75;" class="droppedField">
                        <label class="control-label">出差说明</label>
                        <input name="CCSMU12" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:88,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;出差说明&quot;,&quot;AttrCode&quot;:&quot;CCSMU12&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 80;" class="span6 droppedFields"><div id="CTRL-DIV-1002" style="z-index: 74;" class="date droppedField">
                        <label class="control-label">开始日期</label>
                        <input name="KSRJQ51" class="ctrl-date form_datetime" size="16" value="2015-06-15 14:45" readonly="" type="text">
                        
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:89,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;开始日期&quot;,&quot;AttrCode&quot;:&quot;KSRJQ51&quot;,&quot;AttrDataType&quot;:4,&quot;FieldInputType&quot;:7,&quot;Format&quot;:&quot;YYYY/MM/DD&quot;,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                    </div>
                    
                <div style="z-index: 71;" class="row-fluid"><div style="z-index: 72;" class="span6 droppedFields"><div id="CTRL-DIV-1003" style="z-index: 70;" class="droppedField">
                        <label class="control-label">类别</label>
                        <select name="LBX85" class="ctrl-combobox"><option>火车</option><option>飞机</option><option>轮船</option><option></option></select>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:90,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1003&quot;,&quot;AttrName&quot;:&quot;类别&quot;,&quot;AttrCode&quot;:&quot;LBX85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:3,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 73;" class="span6 droppedFields"><div id="CTRL-DIV-1004" style="z-index: 68;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">金额范围</label>
                        <div class="ctrl-radiogroup" style="display: inline-block; z-index: 69;"><span style="display:block;"><input name="JEFWB35" value="1000以内" type="radio">1000以内</span><span style="display:block;"><input name="JEFWB35" value="5000以内" type="radio">5000以内</span><span style="display:block;"><input name="JEFWB35" value="超过5000" type="radio">超过5000</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:91,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1004&quot;,&quot;AttrName&quot;:&quot;金额范围&quot;,&quot;AttrCode&quot;:&quot;JEFWB35&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:5,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 65;" class="row-fluid"><div style="z-index: 66;" class="span6 droppedFields"><div id="CTRL-DIV-1005" style="z-index: 63;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">备注</label>
                        <div class="ctrl-checkboxgroup" style="display: inline-block; z-index: 64;"><span style="display:block;"><input name="BZT14" value="三次以内出差" type="checkbox">三次以内出差</span><span style="display:block;"><input name="BZT14" value="员工旅游奖励" type="checkbox">员工旅游奖励</span><span style="display:block;"><input name="BZT14" value="客户拜访" type="checkbox">客户拜访</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:93,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1005&quot;,&quot;AttrName&quot;:&quot;备注&quot;,&quot;AttrCode&quot;:&quot;BZT14&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:4,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 67;" class="span6 droppedFields"><div id="CTRL-DIV-1006" style="z-index: 62;" class="droppedField">
                        <label class="control-label">金额</label>
                        <input name="JEJ41" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:94,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1006&quot;,&quot;AttrName&quot;:&quot;金额&quot;,&quot;AttrCode&quot;:&quot;JEJ41&quot;,&quot;AttrDataType&quot;:2,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 81;" class="row-fluid">
                        <div class="span12 action-bar droppedFields" style="min-height: 80px; z-index: 82;"></div>
                    </div>', N'dafspojh', CAST(0x0000A55701280A97 AS DateTime), CAST(0x0000A56A00B0E7CE AS DateTime))
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (33, N'test8', N'form8', N'form8P62', N'<div style="z-index: 64;" class="span12 ui-sortable" id="selected-content"><div style="z-index: 65;" class="row-fluid" id="form-title-div"><input value="test8" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div style="z-index: 66;" class="row-fluid"><div style="z-index: 67;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 63;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKQ64" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:97,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKQ64&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 68;" class="span6 well droppedFields ui-droppable"></div></div><div style="z-index: 1;" class="row-fluid"><div style="z-index: 2;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1002" style="z-index: 13;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKZ89" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:98,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKZ89&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 3;" class="span6 well droppedFields ui-droppable"></div>
</div></div>', N'<div style="z-index: 66;" class="row-fluid"><div style="z-index: 67;" class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 63;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKQ64" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:97,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKQ64&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 68;" class="span6 droppedFields"></div></div><div style="z-index: 1;" class="row-fluid"><div style="z-index: 2;" class="span6 droppedFields"><div id="CTRL-DIV-1002" style="z-index: 13;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKZ89" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:98,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKZ89&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 3;" class="span6 droppedFields"></div>
</div>', N'dsafsadf', CAST(0x0000A564010E410B AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (34, N'title354', N'form325', N'form325P62', N'<div style="z-index: 44;" class="span12 ui-sortable" id="selected-content"><div style="z-index: 45;" class="row-fluid" id="form-title-div"><input value="title354" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div style="z-index: 46;" class="row-fluid"><div style="z-index: 47;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">etrewtr</label>
                        <input name="etrewtrC66" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:95,&quot;EntityDefID&quot;:34,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;etrewtr&quot;,&quot;AttrCode&quot;:&quot;etrewtrC66&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 48;" class="span6 well droppedFields ui-droppable"></div></div><div style="z-index: 49;" class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'fdsa', CAST(0x0000A56A00ADF4F8 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (35, N'sac', N'dsaf', N'dsafY28', N'<div class="span12 ui-sortable" id="selected-content"><div class="row-fluid" id="form-title-div"><input value=sac class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid"><div class="span6 well droppedFields ui-droppable"></div><div class="span6 well droppedFields ui-droppable"></div></div><div class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height:80px;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'dsaf', CAST(0x0000A56A00AFE197 AS DateTime), CAST(0x0000A56A00AFF30A AS DateTime))
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (36, N'324324', N'sfdsaf', N'sfdsafP60', N'<div class="span12 ui-sortable" id="selected-content"><div class="row-fluid" id="form-title-div"><input value="324324" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid"><div class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">sadfdsaf</label>
                        <input name="sadfdsafQ23" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:99,&quot;EntityDefID&quot;:36,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;sadfdsaf&quot;,&quot;AttrCode&quot;:&quot;sadfdsafQ23&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div class="span6 well droppedFields ui-droppable"></div></div><div class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height:80px;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">sadfdsaf</label>
                        <input name="sadfdsafQ23" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:99,&quot;EntityDefID&quot;:36,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;sadfdsaf&quot;,&quot;AttrCode&quot;:&quot;sadfdsafQ23&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'dsafdsaf', CAST(0x0000A56B01119079 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (37, N'11111', N'saf', N'safJ73', N'<div class="span12 ui-sortable" id="selected-content" style="z-index: 44;"><div class="row-fluid" id="form-title-div" style="z-index: 45;"><input value="11111" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid" style="z-index: 46;"><div class="span6 well droppedFields ui-droppable" style="z-index: 47;"><div class="droppedField" style="z-index: 7;" id="CTRL-DIV-1001">
                        <label class="control-label">aaaa</label>
                        <input class="ctrl-textbox" type="text" placeholder="请输入你的文字..." name="aaaaW85">
                        <input class="hiddenMandatory" type="hidden" value="false">
                        <input class="hiddenAttributeEntity" type="hidden" value="{&quot;ID&quot;:100,&quot;EntityDefID&quot;:37,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;aaaa&quot;,&quot;AttrCode&quot;:&quot;aaaaW85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}">
                    </div></div><div class="span6 well droppedFields ui-droppable" style="z-index: 48;"></div></div><div class="row-fluid" style="z-index: 49;"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div></div></div>', N'<div class="row-fluid" style="z-index: 46;"><div class="span6 droppedFields" style="z-index: 47;"><div class="droppedField" style="z-index: 7;" id="CTRL-DIV-1001">
                        <label class="control-label">aaaa</label>
                        <input class="ctrl-textbox" type="text" placeholder="请输入你的文字..." name="aaaaW85">
                        <input class="hiddenMandatory" type="hidden" value="false">
                        <input class="hiddenAttributeEntity" type="hidden" value="{&quot;ID&quot;:100,&quot;EntityDefID&quot;:37,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;aaaa&quot;,&quot;AttrCode&quot;:&quot;aaaaW85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}">
                    </div></div><div class="span6 droppedFields" style="z-index: 48;"></div></div><div class="row-fluid" style="z-index: 49;"><div class="span12 action-bar droppedFields" style="min-height: 80px; z-index: 50;"></div></div>', N'dsaf', CAST(0x0000A56B0111CEDE AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[EavEntityDef] OFF
/****** Object:  Table [dbo].[EavEntityAttrVarchar]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityAttrVarchar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityInfoID] [int] NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[Value] [nvarchar](512) NULL,
 CONSTRAINT [PK_EAVENTITYATTRVARCHAR] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EavEntityAttrVarchar] ON
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (1, 1, 1, 2, N'参加国际毅行大会')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (2, 1, 1, 5, N'事假')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (3, 1, 1, 6, N'部门领导同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (4, 1, 1, 7, N'人事主管同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (5, 1, 1, 8, N'总经理同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (6, 2, 1, 2, N'工作太累，请病假休养，骑鹅看世界。')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (7, 2, 1, 5, N'病假')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (8, 2, 1, 6, N'多休息-部门领导同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (9, 2, 1, 7, N'放宽心，好好休养-人事主管同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (10, 2, 1, 8, N'大家一起祝愿你早日健康-总经理同意')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (70, 17, 32, 88, N'rty')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (17, 18, 32, 88, N'dasfdf')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (13, 19, 32, 88, N'aaaaaaaaaa')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (14, 20, 32, 88, N'fsdafdafdsaf')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (16, 0, 32, 88, N'cde')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (71, 17, 32, 90, N'轮船')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (72, 17, 32, 91, N'5000以内')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (73, 17, 32, 93, N'三次以内出差')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (78, 21, 32, 88, N'拜访阿里巴巴')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (79, 21, 32, 90, N'飞机')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (80, 21, 32, 91, N'超过5000')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (81, 21, 32, 93, N'客户拜访')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (83, 22, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (84, 23, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (85, 24, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (86, 25, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (87, 26, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (88, 27, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (89, 28, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (91, 29, 32, 88, N'百度')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (92, 29, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (93, 29, 32, 91, N'5000以内')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (94, 29, 32, 93, N'客户拜访')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (97, 30, 32, 88, N'小明报销')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (98, 30, 32, 90, N'火车')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (99, 31, 32, 88, N'27号报销单')
INSERT [dbo].[EavEntityAttrVarchar] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (100, 31, 32, 90, N'火车')
SET IDENTITY_INSERT [dbo].[EavEntityAttrVarchar] OFF
/****** Object:  Table [dbo].[EavEntityAttrText]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityAttrText](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityInfoID] [int] NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[Value] [text] NULL,
 CONSTRAINT [PK_EAVENTITYATTRTEXT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EavEntityAttrInt]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityAttrInt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityInfoID] [int] NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_EAVENTITYATTRINT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EavEntityAttrInt] ON
INSERT [dbo].[EavEntityAttrInt] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (1, 1, 1, 1, 3)
INSERT [dbo].[EavEntityAttrInt] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (2, 2, 1, 1, 5)
INSERT [dbo].[EavEntityAttrInt] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (3, 30, 32, 94, 3000)
INSERT [dbo].[EavEntityAttrInt] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (4, 31, 32, 94, 3000)
SET IDENTITY_INSERT [dbo].[EavEntityAttrInt] OFF
/****** Object:  Table [dbo].[EavEntityAttributeActivity]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityAttributeActivity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NULL,
	[ActivityGUID] [varchar](100) NULL,
	[IsEdited] [tinyint] NULL,
	[IsInvisible] [tinyint] NULL,
 CONSTRAINT [PK_EAVENTITYATTRIBUTEACTIVITY] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WfTransitionInstance]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfTransitionInstance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransitionGUID] [varchar](100) NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[TransitionType] [tinyint] NOT NULL,
	[FlyingType] [tinyint] NOT NULL,
	[FromActivityInstanceID] [int] NOT NULL,
	[FromActivityGUID] [varchar](100) NOT NULL,
	[FromActivityType] [smallint] NOT NULL,
	[FromActivityName] [nvarchar](50) NOT NULL,
	[ToActivityInstanceID] [int] NOT NULL,
	[ToActivityGUID] [varchar](100) NOT NULL,
	[ToActivityType] [smallint] NOT NULL,
	[ToActivityName] [nvarchar](50) NOT NULL,
	[ConditionParseResult] [tinyint] NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NULL,
 CONSTRAINT [PK_WfTransitionInstance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WfTransitionInstance] ON
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (741, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'100', 309, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1159, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 1160, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A627014D93A6 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[WfTransitionInstance] OFF
/****** Object:  Table [dbo].[WfProcessInstance]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfProcessInstance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](20) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceCode] [nvarchar](50) NULL,
	[ProcessState] [smallint] NOT NULL,
	[ParentProcessInstanceID] [int] NULL,
	[ParentProcessGUID] [varchar](100) NULL,
	[InvokedActivityInstanceID] [int] NULL,
	[InvokedActivityGUID] [varchar](100) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[EndedDateTime] [datetime] NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NULL,
 CONSTRAINT [PK_WfProcessInstance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WfProcessInstance] ON
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (309, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'100', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A627014D934B AS DateTime), N'10', N'Long', CAST(0x0000A627014D934C AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[WfProcessInstance] OFF
/****** Object:  Table [dbo].[WfProcess]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfProcess](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](20) NOT NULL,
	[IsUsing] [tinyint] NOT NULL,
	[AppType] [varchar](20) NULL,
	[PageUrl] [nvarchar](100) NULL,
	[XmlFileName] [nvarchar](50) NULL,
	[XmlFilePath] [nvarchar](50) NULL,
	[XmlContent] [nvarchar](max) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersionID] [timestamp] NULL,
 CONSTRAINT [PK_WfProcess] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WfProcess] ON
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (3, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', 1, NULL, NULL, NULL, N'price\price.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="60c8a694-632a-4ded-9155-f666e461b078" name="业务员(Sales)" code="salesmate" outerId="9" />
    <Participant type="Role" id="7f9be0fb-7ffa-4b57-8c88-26734fbe3cf6" name="打样员(Tech)" code="techmate" outerId="10" />
  </Participants>
  <WorkflowProcesses>
    <Process name="打样申请流程" id="072af8c3-482a-4b1c-890b-685ce2fcc75d">
      <Activities>
        <Activity name="开始" id="9b78486d-5b8f-4be4-948e-522356e84e79" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="36" top="118" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="b53eb9ab-3af6-41ad-d722-bed946d19792" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="689" top="120" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="业务员提交" id="3c438212-4863-4ff8-efc9-a9096c4a8230" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="60c8a694-632a-4ded-9155-f666e461b078" />
          </Performers>
          <Geography>
            <Widget left="184" top="116" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="板房签字" id="eb833577-abb5-4239-875a-5f2e2fcb6d57" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="7f9be0fb-7ffa-4b57-8c88-26734fbe3cf6" />
          </Performers>
          <Geography>
            <Widget left="367" top="117" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="业务员确认" id="cab57060-f433-422a-a66f-4a5ecfafd54e" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="60c8a694-632a-4ded-9155-f666e461b078" />
          </Performers>
          <Geography>
            <Widget left="525" top="118" width="65.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="5432de95-cbcd-4349-9cf0-7e67904c52aa" from="3c438212-4863-4ff8-efc9-a9096c4a8230" to="eb833577-abb5-4239-875a-5f2e2fcb6d57">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT3c438212-4863-4ff8-efc9-a9096c4a8230" targetId="ACTeb833577-abb5-4239-875a-5f2e2fcb6d57" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="ac609b39-b6eb-4506-c36f-670c5ed53f5c" from="eb833577-abb5-4239-875a-5f2e2fcb6d57" to="cab57060-f433-422a-a66f-4a5ecfafd54e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTeb833577-abb5-4239-875a-5f2e2fcb6d57" targetId="ACTcab57060-f433-422a-a66f-4a5ecfafd54e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="2d5c0e7b-1303-48cb-c22b-3cd2b45701e3" from="cab57060-f433-422a-a66f-4a5ecfafd54e" to="b53eb9ab-3af6-41ad-d722-bed946d19792">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTcab57060-f433-422a-a66f-4a5ecfafd54e" targetId="ACTb53eb9ab-3af6-41ad-d722-bed946d19792" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9cf01621-2dd5-474a-8889-cdbe53a0b72e" from="9b78486d-5b8f-4be4-948e-522356e84e79" to="3c438212-4863-4ff8-efc9-a9096c4a8230">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT9b78486d-5b8f-4be4-948e-522356e84e79" targetId="ACT3c438212-4863-4ff8-efc9-a9096c4a8230" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'', CAST(0x0000A3F900E418AE AS DateTime), CAST(0x0000A60100A9E258 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (24, N'2acffb20-6bd1-4891-98c9-c76d022d1445', N'请假流程(NEW)', N'1', 1, N'QINGJIA', NULL, N'HrsLeave1.xml', N'QINGJIA\HrsLeave1.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="3c7aeaed-8b58-46a6-be39-7b850e6ed8e0" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="c9e054eb-7e4f-47c3-a2b9-61e0ff8748d4" name="部门经理" code="depmanager" outerId="2" />
    <Participant type="Role" id="6200799d-ffd2-4ae6-d28f-294a0cd3435a" name="总经理" code="generalmanager" outerId="8" />
    <Participant type="Role" id="a0c8c361-87e1-4106-a7c9-c0b589123c9c" name="人事经理" code="hrmanager" outerId="3" />
  </Participants>
  <WorkflowProcesses>
    <Process name="请假审批流程" id="2acffb20-6bd1-4891-98c9-c76d022d1445">
      <Description>部门经理，人事经理，总经理参与审批</Description>
      <Activities>
        <Activity name="开始" id="bb6c9787-0e1c-4de1-ddbc-593992724ca5" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="48" top="182" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="5eb84b81-0f04-476d-cc82-b42a65464880" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="956" top="173" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="员工提交" id="3242c597-e889-4768-f6db-cafc3d675370" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="3c7aeaed-8b58-46a6-be39-7b850e6ed8e0" />
          </Performers>
          <Geography>
            <Widget left="180" top="180" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="部门经理审批" id="c437c27a-8351-4805-fd4f-4e270084320a" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="c9e054eb-7e4f-47c3-a2b9-61e0ff8748d4" />
          </Performers>
          <Geography>
            <Widget left="360" top="180" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="c05bc40f-579b-49cb-cd12-30c2cba4db1e" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="510" top="186" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="总经理审批" id="a6a8e554-d73e-4a77-8d16-08edf5905e1f" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6200799d-ffd2-4ae6-d28f-294a0cd3435a" />
          </Performers>
          <Geography>
            <Widget left="600" top="108" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="人事经理审批" id="da9f744b-3f97-40c9-c4f8-67d5a60a2485" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="a0c8c361-87e1-4106-a7c9-c0b589123c9c" />
          </Performers>
          <Geography>
            <Widget left="793" top="171" width="66.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="7af6085c-d40e-4687-ec75-748b7ef18e3d" from="bb6c9787-0e1c-4de1-ddbc-593992724ca5" to="3242c597-e889-4768-f6db-cafc3d675370">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTbb6c9787-0e1c-4de1-ddbc-593992724ca5" targetId="ACT3242c597-e889-4768-f6db-cafc3d675370" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="92f5a2a2-e89e-4b3e-8ff9-6a72d3a2d946" from="3242c597-e889-4768-f6db-cafc3d675370" to="c437c27a-8351-4805-fd4f-4e270084320a">
          <Description>请输入转移描述信息</Description>
          <Receiver type="Superior" />
          <Condition type="Expression" />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT3242c597-e889-4768-f6db-cafc3d675370" targetId="ACTc437c27a-8351-4805-fd4f-4e270084320a" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8c1922c3-6d16-452e-a9a0-0b7ba0453347" from="c437c27a-8351-4805-fd4f-4e270084320a" to="c05bc40f-579b-49cb-cd12-30c2cba4db1e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTc437c27a-8351-4805-fd4f-4e270084320a" targetId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="a158f3af-61b2-4169-f131-d0876c20063b" from="c05bc40f-579b-49cb-cd12-30c2cba4db1e" to="a6a8e554-d73e-4a77-8d16-08edf5905e1f">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[days>3]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" targetId="ACTa6a8e554-d73e-4a77-8d16-08edf5905e1f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="2333ad8b-f958-4ca3-9e72-678d809de2ca" from="da9f744b-3f97-40c9-c4f8-67d5a60a2485" to="5eb84b81-0f04-476d-cc82-b42a65464880">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" targetId="ACT5eb84b81-0f04-476d-cc82-b42a65464880" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="efc696f7-83c4-4741-a6f5-e00f9631dda4" from="a6a8e554-d73e-4a77-8d16-08edf5905e1f" to="da9f744b-3f97-40c9-c4f8-67d5a60a2485">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTa6a8e554-d73e-4a77-8d16-08edf5905e1f" targetId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="89c490d0-7a4f-4465-fb4f-0e6914ad703c" from="c05bc40f-579b-49cb-cd12-30c2cba4db1e" to="da9f744b-3f97-40c9-c4f8-67d5a60a2485">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[days<=3]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" targetId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'', CAST(0x0000A4210179DC78 AS DateTime), CAST(0x0000A5C5010461A9 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (33, N'5c5041fc-ab7f-46c0-85a5-6250c3aea375', N'生产订单流程', N'1', 1, N'PRODUCTORDER', NULL, N'order.jump.tmp.xml', N'price\order.jump.tmp.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="6398503c-25da-4c49-9530-41d3573c860c" name="业务员" code="salesmate" outerId="9" />
    <Participant type="Role" id="cfb8d004-b27e-40a1-9bc7-55323de0b59b" name="打样员" code="techmate" outerId="10" />
    <Participant type="Role" id="3c80b85c-73a9-4f52-a21f-1df2a9f37cf7" name="跟单员" code="merchandiser" outerId="11" />
    <Participant type="Role" id="eae5fb4f-62d8-4024-81db-4ad8b48e611e" name="质检员" code="qcmate" outerId="12" />
    <Participant type="Role" id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" name="包装员" code="expressmate" outerId="13" />
  </Participants>
  <WorkflowProcesses>
    <Process name="外贸生产订单流程" id="5c5041fc-ab7f-46c0-85a5-6250c3aea375">
      <Description>外贸生产订单流程描述</Description>
      <Activities>
        <Activity name="开始" id="e357fe9e-dc33-4075-bd34-6f7425bb7671" code="undefined">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="30" top="92" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="派单" id="aad747dd-2b75-449c-a8a6-391b8a426e83" code="Dispatching">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6398503c-25da-4c49-9530-41d3573c860c" />
          </Performers>
          <Geography>
            <Widget left="146" top="92" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Or分支节点" id="890d4971-3d5d-4800-bdf3-a355fd4a6317" code="undefined">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="317" top="93" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="打样" id="fc8c71c5-8786-450e-af27-9f6a9de8560f" code="Sampling">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="cfb8d004-b27e-40a1-9bc7-55323de0b59b" />
          </Performers>
          <Geography>
            <Widget left="261" top="269" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="生产" id="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803" code="Manufacturing">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="3c80b85c-73a9-4f52-a21f-1df2a9f37cf7" />
          </Performers>
          <Geography>
            <Widget left="413" top="269" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="质检" id="39c71004-d822-4c15-9ff2-94ca1068d745" code="QCChecking">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="eae5fb4f-62d8-4024-81db-4ad8b48e611e" />
          </Performers>
          <Geography>
            <Widget left="547" top="268" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="称重" id="422e5354-14f7-4a0a-ae69-c169fee96e50" code="Weighting">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" />
          </Performers>
          <Geography>
            <Widget left="667" top="179" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="打印发货单" id="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" code="Delivering">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" />
          </Performers>
          <Geography>
            <Widget left="708" top="66" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="结束" id="b70e717a-08da-419f-b2eb-7a3d71f054de" code="undefined">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="867" top="107" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="e8851141-e3f5-46d7-a317-b7860e32592e" from="e357fe9e-dc33-4075-bd34-6f7425bb7671" to="aad747dd-2b75-449c-a8a6-391b8a426e83">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTe357fe9e-dc33-4075-bd34-6f7425bb7671" targetId="ACTaad747dd-2b75-449c-a8a6-391b8a426e83" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="e4d3c553-ba29-4965-dd3e-d098895a10e7" from="aad747dd-2b75-449c-a8a6-391b8a426e83" to="890d4971-3d5d-4800-bdf3-a355fd4a6317">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTaad747dd-2b75-449c-a8a6-391b8a426e83" targetId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="dabaa65d-905b-42c4-f5f7-e599334c03c9" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="fc8c71c5-8786-450e-af27-9f6a9de8560f">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "false" && IsHavingWeight == "false"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACTfc8c71c5-8786-450e-af27-9f6a9de8560f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8eb5ee28-4d72-4361-fc4a-44ea46cbd639" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "true" && IsHavingWeight == "true"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="bea1aa54-2167-4438-a9bf-1a2cbc5f43c9" from="fc8c71c5-8786-450e-af27-9f6a9de8560f" to="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTfc8c71c5-8786-450e-af27-9f6a9de8560f" targetId="ACTbf5d8fbe-43bb-4e63-bdac-3c0ee1266803" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="7a1dac3c-4f8c-46b2-bcb9-2ea36df29e27" from="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803" to="39c71004-d822-4c15-9ff2-94ca1068d745">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTbf5d8fbe-43bb-4e63-bdac-3c0ee1266803" targetId="ACT39c71004-d822-4c15-9ff2-94ca1068d745" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9da96321-6bad-4673-829a-0bda31c3e3e1" from="39c71004-d822-4c15-9ff2-94ca1068d745" to="422e5354-14f7-4a0a-ae69-c169fee96e50">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT39c71004-d822-4c15-9ff2-94ca1068d745" targetId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="67a3fe0e-06d3-4a01-e0c1-1a731166c905" from="422e5354-14f7-4a0a-ae69-c169fee96e50" to="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" targetId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="75f0eb1d-1933-4a0a-a953-76a755744336" from="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" to="b70e717a-08da-419f-b2eb-7a3d71f054de">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" targetId="ACTb70e717a-08da-419f-b2eb-7a3d71f054de" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="95098c43-7acc-48f9-fd5f-6b27b445137b" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="422e5354-14f7-4a0a-ae69-c169fee96e50">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "true" && IsHavingWeight == "false"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, CAST(0x0000A4D2011D084F AS DateTime), CAST(0x0000A5C500B15544 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (39, N'b4a20dbe-497a-4453-b446-c0122f33ce65', N'testflow', N'1', 1, N'testflowapp', NULL, N'price\testflow.xml', N'testflowapp\price\testflow.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" name="普通员工" code="employees" outerId="1" />
  </Participants>
  <WorkflowProcesses>
    <Process name="testflow" id="b4a20dbe-497a-4453-b446-c0122f33ce65">
      <Description>asfljasfd</Description>
      <Activities>
        <Activity name="开始" id="e0067b99-db38-4bea-cee2-cf795ee953f9" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="190" top="105" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="9d5aba66-4a04-463a-ff7f-913f6af09985" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="747" top="105" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="申请" id="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f" code="apply">
          <Description>sdgfdgfdsg</Description>
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" />
          </Performers>
          <Geography>
            <Widget left="345" top="104" width="67.2" height="29.2" />
          </Geography>
        </Activity>
        <Activity name="报销会签" id="ca469cd1-5284-4516-f6ac-ee7c1935855a" code="huiqian">
          <Description>啊哈哈</Description>
          <ActivityType type="MultipleInstanceNode" complexType="undefined" mergeType="undefined" compareType="undefined" completeOrder="undefined" />
          <Performers>
            <Performer id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" />
          </Performers>
          <Geography>
            <Widget left="532" top="104" width="67.2" height="29.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="ff2194b3-75ce-4fea-b053-85b19ce13795" from="e0067b99-db38-4bea-cee2-cf795ee953f9" to="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9ec46d24-6c63-4a0b-dff8-c6cb466ec9be" from="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f" to="ca469cd1-5284-4516-f6ac-ee7c1935855a">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="10602fb2-bb6d-47f4-d680-fa352a7f6653" from="ca469cd1-5284-4516-f6ac-ee7c1935855a" to="9d5aba66-4a04-463a-ff7f-913f6af09985">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'asfljasfd', CAST(0x0000A4FC00B95A3A AS DateTime), CAST(0x0000A51C0167700D AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (48, N'ec82f77f-cf82-4298-8106-e172c6e25057', N'采购流程', N'1', 1, N'Purchaseflow', NULL, N'purchaseflow.xml', N'Purchaseflow\purchaseflow.xml', N'<?xml version="1.0" encoding="utf-8"?><Package><WorkflowProcess><Process name="采购流程" id="ec82f77f-cf82-4298-8106-e172c6e25057"><Description>anything else...</Description></Process></WorkflowProcess></Package>', N'anything else...', CAST(0x0000A50F017147C9 AS DateTime), NULL)
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (51, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'财务报销', N'1', 1, N'baoxiao', NULL, N'baoxiao.xml', N'baoxiao\baoxiao.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="6e3e7793-638f-4a48-d787-2a1016711602" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="8ad2131e-a98e-4523-acba-88e4404ce0a9" name="部门经理" code="depmanager" outerId="2" />
    <Participant type="Role" id="77858784-3ec7-4849-c9c2-15e5e6dead0d" name="财务经理" code="finacemanager" outerId="14" />
    <Participant type="Role" id="0501e326-8541-4d13-8159-d510d57ce1f5" name="总经理" code="generalmanager" outerId="8" />
    <Participant type="Role" id="23d1c029-ec6e-4212-c9a5-1b82472d4747" name="主管总监" code="director" outerId="4" />
  </Participants>
  <WorkflowProcesses>
    <Process name="财务报销" id="ec794d6d-4543-4938-b5f5-cdd97cf939d6">
      <Activities>
        <Activity name="开始" id="fe775212-6351-4c9b-ea02-f54a8b95d63b" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="59" top="160" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="77124224-0de9-4407-9d61-4405c8131c48" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="925" top="219" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="填写报销单据" id="7230bb34-3c35-4f44-8f2e-0933cb85aa35" code="appform">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6e3e7793-638f-4a48-d787-2a1016711602" />
          </Performers>
          <Geography>
            <Widget left="198" top="159" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="财务审批" id="889aa813-3eab-4515-89af-cbd133cf030b" code="accountaduit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="77858784-3ec7-4849-c9c2-15e5e6dead0d" />
          </Performers>
          <Geography>
            <Widget left="354" top="153" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="548e2052-1eab-43b0-a55c-020582b0b1c8" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="532" top="167" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="总经理审批" id="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd" code="ceoaudit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="0501e326-8541-4d13-8159-d510d57ce1f5" />
          </Performers>
          <Geography>
            <Widget left="629" top="116" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="主管总监查阅" id="77129a09-6b2c-43aa-af77-ba5ced57a174" code="cooaudit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="23d1c029-ec6e-4212-c9a5-1b82472d4747" />
          </Performers>
          <Geography>
            <Widget left="618" top="246" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="db2df810-7edd-4242-bc64-bac796d78844" code="">
          <Description>总经理审批路由</Description>
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Join" gatewayDirection="OrJoin" />
          <Geography>
            <Widget left="816" top="190" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="1ef510bb-e317-4df1-9f32-0b17601bb275" from="fe775212-6351-4c9b-ea02-f54a8b95d63b" to="7230bb34-3c35-4f44-8f2e-0933cb85aa35">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTfe775212-6351-4c9b-ea02-f54a8b95d63b" targetId="ACT7230bb34-3c35-4f44-8f2e-0933cb85aa35" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="61b60f12-9193-4134-af1f-8d974d354dfa" from="7230bb34-3c35-4f44-8f2e-0933cb85aa35" to="889aa813-3eab-4515-89af-cbd133cf030b">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT7230bb34-3c35-4f44-8f2e-0933cb85aa35" targetId="ACT889aa813-3eab-4515-89af-cbd133cf030b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="5c8d1beb-5aef-4cc3-9e08-6fa6e153925d" from="889aa813-3eab-4515-89af-cbd133cf030b" to="548e2052-1eab-43b0-a55c-020582b0b1c8">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT889aa813-3eab-4515-89af-cbd133cf030b" targetId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="96d291c4-3d7e-43e6-f820-dd695daa1fcc" from="548e2052-1eab-43b0-a55c-020582b0b1c8" to="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" targetId="ACTc36fa3c0-3b68-4bf6-dc31-1ea939815cfd" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="1a1560ce-1258-46f1-f56e-9d1fb2e6142c" from="548e2052-1eab-43b0-a55c-020582b0b1c8" to="77129a09-6b2c-43aa-af77-ba5ced57a174">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" targetId="ACT77129a09-6b2c-43aa-af77-ba5ced57a174" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="c405e021-cacf-412e-ce37-82817953c7ec" from="77129a09-6b2c-43aa-af77-ba5ced57a174" to="db2df810-7edd-4242-bc64-bac796d78844">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT77129a09-6b2c-43aa-af77-ba5ced57a174" targetId="ACTdb2df810-7edd-4242-bc64-bac796d78844" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="60d69b10-ba70-46a4-948c-09d5be318397" from="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd" to="db2df810-7edd-4242-bc64-bac796d78844">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTc36fa3c0-3b68-4bf6-dc31-1ea939815cfd" targetId="ACTdb2df810-7edd-4242-bc64-bac796d78844" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="32c2860a-3b66-4b77-a8f8-0f9578440d6d" from="db2df810-7edd-4242-bc64-bac796d78844" to="77124224-0de9-4407-9d61-4405c8131c48">
          <Description>请输入转移描述信息</Description>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,-1,0,0,0]]" sourceId="ACTdb2df810-7edd-4242-bc64-bac796d78844" targetId="ACT77124224-0de9-4407-9d61-4405c8131c48" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'', CAST(0x0000A55A0132BC96 AS DateTime), CAST(0x0000A5D30179AB88 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (71, N'9fb4bca4-5674-4181-a010-f0e730e166dd', N'报价会签流程', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="28e71769-f197-4fe0-fd9f-63474956dc60" name="业务员(Sales)" code="salesmate" outerId="9" />
    <Participant type="Role" id="24b1a282-d4d4-4461-febb-2f28eb31f48f" name="打样员(Tech)" code="techmate" outerId="10" />
  </Participants>
  <WorkflowProcesses>
    <Process name="报价会签流程" id="9fb4bca4-5674-4181-a010-f0e730e166dd">
      <Activities>
        <Activity name="开始" id="1f303f19-71aa-4879-c501-f4d0f448f0a2" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="165" top="120" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="7462aae9-da1c-43f0-d741-a4586879de77" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="712" top="117" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="业务员提交" id="791d9d3a-882d-4796-cffc-84d9fca76afd" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="28e71769-f197-4fe0-fd9f-63474956dc60" />
          </Performers>
          <Geography>
            <Widget left="303" top="121" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="业务员确认" id="23017d0c-08ca-4a59-9649-c6912b819001" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="28e71769-f197-4fe0-fd9f-63474956dc60" />
          </Performers>
          <Geography>
            <Widget left="621" top="123" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="板房会签" id="36cf2479-e8ec-4936-8bcd-b38101e4664a" code="">
          <ActivityType type="MultipleInstanceNode" complexType="SignTogether" mergeType="Parallel" compareType="Percentage" completeOrder="80" />
          <Performers>
            <Performer id="24b1a282-d4d4-4461-febb-2f28eb31f48f" />
          </Performers>
          <Geography>
            <Widget left="472" top="119" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="8d59fd91-3520-4863-de61-ab6442933f71" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="347" top="230" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="50f7acb2-99d0-4877-e116-5bf19433bb89" from="1f303f19-71aa-4879-c501-f4d0f448f0a2" to="791d9d3a-882d-4796-cffc-84d9fca76afd">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT1f303f19-71aa-4879-c501-f4d0f448f0a2" targetId="ACT791d9d3a-882d-4796-cffc-84d9fca76afd" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="87651a0d-81e5-4d6f-9ef3-ed0be0011c8f" from="791d9d3a-882d-4796-cffc-84d9fca76afd" to="36cf2479-e8ec-4936-8bcd-b38101e4664a">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT791d9d3a-882d-4796-cffc-84d9fca76afd" targetId="ACT36cf2479-e8ec-4936-8bcd-b38101e4664a" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="63031ecf-2116-47a3-a0d8-f920dc5bee11" from="36cf2479-e8ec-4936-8bcd-b38101e4664a" to="23017d0c-08ca-4a59-9649-c6912b819001">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT36cf2479-e8ec-4936-8bcd-b38101e4664a" targetId="ACT23017d0c-08ca-4a59-9649-c6912b819001" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'', CAST(0x0000A5D80104157F AS DateTime), CAST(0x0000A5FD009EB4B0 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (73, N'3a8ce214-fd18-4fac-95c0-e7958bc1b2f8', N'办公用品申领流程', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="114e7e8d-574c-42c2-eb1c-3d7160516ba3" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="595410fc-2f24-4708-bacd-0eb38b17e7fc" name="人事经理" code="hrmanager" outerId="3" />
    <Participant type="Role" id="c9694802-fcb1-4cad-ad9e-aae9894305a6" name="总经理" code="generalmanager" outerId="8" />
  </Participants>
  <WorkflowProcesses>
    <Process name="办公用品申领流程" id="3a8ce214-fd18-4fac-95c0-e7958bc1b2f8">
      <Activities>
        <Activity name="开始" id="e52d0836-9f98-4b70-d485-6b01b8cc277e" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="92" top="147" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="30929bbb-c76e-4604-c956-f26feb4aa22e" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="747" top="157" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="仓库签字" id="4db4a153-c8fc-45df-b067-9d188ae19a41" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="114e7e8d-574c-42c2-eb1c-3d7160516ba3" />
          </Performers>
          <Geography>
            <Widget left="245" top="146" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="eb492ba8-075a-46e4-b95f-ac071dd3a43d" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="414" top="147" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="行政部签字" id="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="595410fc-2f24-4708-bacd-0eb38b17e7fc" />
          </Performers>
          <Geography>
            <Widget left="529" top="79" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="总经理签字" id="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="c9694802-fcb1-4cad-ad9e-aae9894305a6" />
          </Performers>
          <Geography>
            <Widget left="530" top="204" width="65.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="81fdf756-ecd5-43c0-e2b3-25770aab5dee" from="e52d0836-9f98-4b70-d485-6b01b8cc277e" to="4db4a153-c8fc-45df-b067-9d188ae19a41">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTe52d0836-9f98-4b70-d485-6b01b8cc277e" targetId="ACT4db4a153-c8fc-45df-b067-9d188ae19a41" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="69c1ba54-acb0-4b4e-ff03-3f6cf572e98a" from="4db4a153-c8fc-45df-b067-9d188ae19a41" to="eb492ba8-075a-46e4-b95f-ac071dd3a43d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT4db4a153-c8fc-45df-b067-9d188ae19a41" targetId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8d776249-f3c6-4397-817f-44880b34a451" from="eb492ba8-075a-46e4-b95f-ac071dd3a43d" to="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[surplus = "normal"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" targetId="ACTc3cbb3cc-fa60-42ad-9a10-4ec2638aff49" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="e40270aa-834a-455d-ffd6-b3f72feeeadc" from="eb492ba8-075a-46e4-b95f-ac071dd3a43d" to="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[surplus = "overamount"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" targetId="ACT12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="952b3594-fe40-427f-a27a-f2650226aeca" from="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49" to="30929bbb-c76e-4604-c956-f26feb4aa22e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTc3cbb3cc-fa60-42ad-9a10-4ec2638aff49" targetId="ACT30929bbb-c76e-4604-c956-f26feb4aa22e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="fd39de26-d9e9-425e-c952-dd8c37d329d6" from="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" to="30929bbb-c76e-4604-c956-f26feb4aa22e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" targetId="ACT30929bbb-c76e-4604-c956-f26feb4aa22e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'', CAST(0x0000A60100F7C975 AS DateTime), CAST(0x0000A60201555416 AS DateTime))
SET IDENTITY_INSERT [dbo].[WfProcess] OFF
/****** Object:  Table [dbo].[WfLog]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WfLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventTypeID] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Severity] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[StackTrace] [nvarchar](4000) NULL,
	[InnerStackTrace] [nvarchar](4000) NULL,
	[RequestData] [nvarchar](2000) NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EavEntityAttrDecimal]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityAttrDecimal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityInfoID] [int] NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[Value] [decimal](18, 2) NULL,
 CONSTRAINT [PK_EAVENTITYATTRDECIMAL] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EavEntityAttrDatetime]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EavEntityAttrDatetime](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityInfoID] [int] NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[AttrID] [int] NOT NULL,
	[Value] [datetime] NULL,
 CONSTRAINT [PK_EAVENTITYATTRDATETIME] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EavEntityAttrDatetime] ON
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (1, 1, 1, 3, CAST(0x0000A53400000000 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (2, 1, 1, 4, CAST(0x0000A53600000000 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (3, 2, 1, 3, CAST(0x0000A53000000000 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (4, 2, 1, 4, CAST(0x0000A53500000000 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (5, 20, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (31, 17, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (33, 21, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (35, 22, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (36, 23, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (37, 24, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (38, 25, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (39, 26, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (40, 27, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (41, 28, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (43, 29, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (45, 30, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
INSERT [dbo].[EavEntityAttrDatetime] ([ID], [EntityInfoID], [EntityDefID], [AttrID], [Value]) VALUES (46, 31, 32, 89, CAST(0x0000A4B800F31290 AS DateTime))
SET IDENTITY_INSERT [dbo].[EavEntityAttrDatetime] OFF
/****** Object:  Table [dbo].[BizAppFlow]    Script Date: 06/17/2016 08:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BizAppFlow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[AppInstanceCode] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[ChangedTime] [datetime] NOT NULL,
	[ChangedUserID] [varchar](50) NOT NULL,
	[ChangedUserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SALWALLWAORDERFLOW] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BizAppFlow] ON
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (113, N'流程发起', N'3', NULL, NULL, N'流程发起', N'mssqlserver申请人:6-普通员工-小明', CAST(0x0000A4F500DC22C7 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (114, N'生产订单', N'624', N'TB300427', NULL, N'派单', N'完成派单', CAST(0x0000A4F5010C6DBA AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (115, N'生产订单', N'625', N'TB906432', NULL, N'派单', N'完成派单', CAST(0x0000A4F5010C92A0 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (116, N'生产订单', N'626', N'TB338322', NULL, N'派单', N'完成派单', CAST(0x0000A4F5010CA251 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (117, N'生产订单', N'627', N'TB612344', NULL, N'派单', N'完成派单', CAST(0x0000A4F5014DA236 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (118, N'生产订单', N'628', N'TB683061', NULL, N'派单', N'完成派单', CAST(0x0000A4F5014DAB96 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (119, N'生产订单', N'628', N'TB683061', NULL, N'打样', N'完成打样', CAST(0x0000A4F5014DC627 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (120, N'生产订单', N'627', N'TB612344', NULL, N'打样', N'完成打样', CAST(0x0000A4F5014DCFC6 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (121, N'生产订单', N'627', N'TB612344', NULL, N'生产', N'完成生产', CAST(0x0000A4F700D56961 AS DateTime), N'9', N'跟单员-张明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (122, N'生产订单', N'631', N'TB490683', NULL, N'派单', N'完成派单', CAST(0x0000A4F900FBE434 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (123, N'生产订单', N'630', N'TB351094', NULL, N'派单', N'完成派单', CAST(0x0000A4FC016B0F5F AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (124, N'生产订单', N'632', N'TB366615', NULL, N'派单', N'完成派单', CAST(0x0000A4FF00F6BDB6 AS DateTime), N'8', N'业务员-小宋')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (125, N'生产订单', N'634', N'TB969829', NULL, N'派单', N'完成派单', CAST(0x0000A4FF00F6C6CD AS DateTime), N'8', N'业务员-小宋')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (126, N'生产订单', N'633', N'TB751853', NULL, N'派单', N'完成派单', CAST(0x0000A4FF0181C823 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (127, N'生产订单', N'639', N'TB792242', NULL, N'派单', N'完成派单', CAST(0x0000A5000117A5C8 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (128, N'生产订单', N'639', N'TB792242', NULL, N'打样', N'完成打样', CAST(0x0000A501008BED22 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (129, N'生产订单', N'640', N'TB429545', NULL, N'派单', N'完成派单', CAST(0x0000A50A010D8B79 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (130, N'生产订单', N'641', N'TB817384', NULL, N'派单', N'完成派单', CAST(0x0000A50B00B381FA AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (131, N'生产订单', N'644', N'TB348804', NULL, N'派单', N'完成派单', CAST(0x0000A50B00DCCBEB AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (132, N'生产订单', N'643', N'TB351670', NULL, N'派单', N'完成派单', CAST(0x0000A50B00DCD1CD AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (133, N'生产订单', N'646', N'TB992099', NULL, N'派单', N'完成派单', CAST(0x0000A50B00E44F16 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (134, N'生产订单', N'648', N'TB588606', NULL, N'派单', N'完成派单', CAST(0x0000A50B00EAF847 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (135, N'生产订单', N'642', N'TB434232', NULL, N'派单', N'完成派单', CAST(0x0000A50C0120B5EA AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (136, N'生产订单', N'647', N'TB285386', NULL, N'派单', N'完成派单', CAST(0x0000A50F00A2DEAE AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (137, N'生产订单', N'652', N'TB991726', NULL, N'派单', N'完成派单', CAST(0x0000A51001628464 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (138, N'生产订单', N'652', N'TB991726', NULL, N'打样', N'完成打样', CAST(0x0000A5100162D19D AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (139, N'生产订单', N'652', N'TB991726', NULL, N'生产', N'完成生产', CAST(0x0000A510016319E3 AS DateTime), N'10', N'跟单员-李杰')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (140, N'生产订单', N'651', N'TB728743', NULL, N'派单', N'完成派单', CAST(0x0000A513010AF607 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (141, N'生产订单', N'650', N'TB328175', NULL, N'派单', N'完成派单', CAST(0x0000A513010AFA75 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (142, N'流程发起', N'4', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A52B012C1E90 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (143, N'流程发起', N'5', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A52C0091FF62 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (144, N'流程发起', N'6', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A52C010A2086 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (145, N'请假流程', N'6', NULL, NULL, N'部门经理审批', N'部门经理-张(ID:5) 同意', CAST(0x0000A52C01153273 AS DateTime), N'5', N'部门经理-张')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (146, N'生产订单', N'659', N'TB710707', NULL, N'派单', N'完成派单', CAST(0x0000A578013DAC71 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (147, N'生产订单', N'658', N'TB575859', NULL, N'派单', N'完成派单', CAST(0x0000A57801501892 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (148, N'生产订单', N'659', N'TB710707', NULL, N'打样', N'完成打样', CAST(0x0000A57801503093 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (149, N'生产订单', N'657', N'TB358232', NULL, N'派单', N'完成派单', CAST(0x0000A5780167A1AD AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (150, N'生产订单', N'656', N'TB779780', NULL, N'派单', N'完成派单', CAST(0x0000A57A01211907 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (151, N'生产订单', N'655', N'TB322602', NULL, N'派单', N'完成派单', CAST(0x0000A57C014BF2A2 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (152, N'生产订单', N'654', N'TB271916', NULL, N'派单', N'完成派单', CAST(0x0000A57C014D273A AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (153, N'生产订单', N'654', N'TB271916', NULL, N'打样', N'完成打样', CAST(0x0000A57C014D8A62 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (154, N'生产订单', N'653', N'TB559248', NULL, N'派单', N'完成派单', CAST(0x0000A57D012BCA76 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (155, N'生产订单', N'649', N'TB771229', NULL, N'派单', N'完成派单', CAST(0x0000A57D014D0D3C AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (158, N'生产订单', N'645', N'TB642095', NULL, N'派单', N'完成派单', CAST(0x0000A57D016233C7 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (159, N'生产订单', N'660', N'TB967961', NULL, N'派单', N'完成派单', CAST(0x0000A57D0162ECB4 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (160, N'生产订单', N'661', N'TB751700', NULL, N'派单', N'完成派单', CAST(0x0000A57D01648298 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (161, N'生产订单', N'661', N'TB751700', NULL, N'打样', N'完成打样', CAST(0x0000A57D01649AEE AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (162, N'生产订单', N'661', N'TB751700', NULL, N'生产', N'完成生产', CAST(0x0000A57D0164B2E1 AS DateTime), N'9', N'跟单员-张明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (163, N'生产订单', N'661', N'TB751700', NULL, N'质检', N'完成质检', CAST(0x0000A57D0164C7F0 AS DateTime), N'13', N'质检员-杰米')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (164, N'生产订单', N'661', N'TB751700', NULL, N'称重', N'完成称重', CAST(0x0000A57D01657E79 AS DateTime), N'15', N'包装员-大汉')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (165, N'生产订单', N'661', N'TB751700', NULL, N'发货', N'完成发货', CAST(0x0000A57D016593FC AS DateTime), N'15', N'包装员-大汉')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (166, N'生产订单', N'652', N'TB991726', NULL, N'派单', N'完成派单', CAST(0x0000A57E014A4DF8 AS DateTime), N'8', N'业务员-小宋')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (167, N'生产订单', N'662', N'TB647767', NULL, N'派单', N'完成派单', CAST(0x0000A57E0169A99B AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (168, N'生产订单', N'638', N'TB561443', NULL, N'派单', N'完成派单', CAST(0x0000A57F013BE354 AS DateTime), N'8', N'业务员-小宋')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (169, N'生产订单', N'663', N'TB809544', NULL, N'派单', N'完成派单', CAST(0x0000A57F013C7377 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (170, N'生产订单', N'664', N'TB914891', NULL, N'派单', N'完成派单', CAST(0x0000A57F013CE48D AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (171, N'生产订单', N'665', N'TB929075', NULL, N'派单', N'完成派单', CAST(0x0000A57F014515AA AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (172, N'生产订单', N'666', N'TB225725', NULL, N'派单', N'完成派单', CAST(0x0000A57F0146F53B AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (173, N'生产订单', N'667', N'TB164370', NULL, N'派单', N'完成派单', CAST(0x0000A57F014779F2 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (174, N'生产订单', N'667', N'TB164370', NULL, N'打样', N'完成打样', CAST(0x0000A57F0147D7EC AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (175, N'生产订单', N'667', N'TB164370', NULL, N'生产', N'完成生产', CAST(0x0000A57F0147EF54 AS DateTime), N'9', N'跟单员-张明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (176, N'生产订单', N'667', N'TB164370', NULL, N'质检', N'完成质检', CAST(0x0000A57F0148008F AS DateTime), N'13', N'质检员-杰米')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (177, N'生产订单', N'667', N'TB164370', NULL, N'称重', N'完成称重', CAST(0x0000A57F01481487 AS DateTime), N'15', N'包装员-大汉')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (178, N'生产订单', N'667', N'TB164370', NULL, N'发货', N'完成发货', CAST(0x0000A57F01483D30 AS DateTime), N'16', N'包装员-小威')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (179, N'流程发起', N'7', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A5B700B21B49 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (180, N'请假流程', N'7', NULL, NULL, N'部门经理审批', N'部门经理-张(ID:5) 同意', CAST(0x0000A5B700B252AE AS DateTime), N'5', N'部门经理-张')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (181, N'请假流程', N'7', NULL, NULL, N'总经理审批', N'总经理-陈(ID:1) 同意', CAST(0x0000A5B700B27226 AS DateTime), N'1', N'总经理-陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (182, N'请假流程', N'7', NULL, NULL, N'人事经理审批', N'人事经理-李小姐(ID:4) ', CAST(0x0000A5B700B28A14 AS DateTime), N'4', N'人事经理-李小姐')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (183, N'流程发起', N'8', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A5B700B38A15 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (184, N'请假流程', N'8', NULL, NULL, N'部门经理审批', N'部门经理-张(ID:5) 同意', CAST(0x0000A5B700B3AAF1 AS DateTime), N'5', N'部门经理-张')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (185, N'生产订单', N'669', N'TB747473', NULL, N'派单', N'完成派单', CAST(0x0000A5B700B3E831 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (186, N'生产订单', N'669', N'TB747473', NULL, N'打样', N'完成打样', CAST(0x0000A5B700B3FCE9 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (187, N'生产订单', N'670', N'TB630627', NULL, N'派单', N'完成派单', CAST(0x0000A5B700B44E62 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (188, N'生产订单', N'670', N'TB630627', NULL, N'打样', N'完成打样', CAST(0x0000A5B700B46695 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (189, N'生产订单', N'670', N'TB630627', NULL, N'生产', N'完成生产', CAST(0x0000A5B700B47ECE AS DateTime), N'9', N'跟单员-张明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (190, N'生产订单', N'670', N'TB630627', NULL, N'质检', N'完成质检', CAST(0x0000A5B700B493A5 AS DateTime), N'13', N'质检员-杰米')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (191, N'生产订单', N'670', N'TB630627', NULL, N'称重', N'完成称重', CAST(0x0000A5B700B4A808 AS DateTime), N'15', N'包装员-大汉')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (192, N'生产订单', N'670', N'TB630627', NULL, N'发货', N'完成发货', CAST(0x0000A5B700B4C4D8 AS DateTime), N'15', N'包装员-大汉')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (193, N'生产订单', N'671', N'TB165916', NULL, N'派单', N'完成派单', CAST(0x0000A5C5009C0E1E AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (194, N'流程发起', N'9', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A5C500A0D72F AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (195, N'流程发起', N'10', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A5C500B43CBB AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (196, N'流程发起', N'11', NULL, NULL, N'流程发起', N'申请人:6-普通员工-小明', CAST(0x0000A5C500FE9389 AS DateTime), N'6', N'普通员工-小明')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (197, N'生产订单', N'673', N'TB508950', NULL, N'派单', N'完成派单', CAST(0x0000A61300EE9CA7 AS DateTime), N'7', N' 业务员-小陈')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (198, N'生产订单', N'673', N'TB508950', NULL, N'打样', N'完成打样', CAST(0x0000A61300EEB976 AS DateTime), N'11', N'打样员-飞雨')
INSERT [dbo].[BizAppFlow] ([ID], [AppName], [AppInstanceID], [AppInstanceCode], [Status], [ActivityName], [Remark], [ChangedTime], [ChangedUserID], [ChangedUserName]) VALUES (199, N'生产订单', N'673', N'TB508950', NULL, N'生产', N'完成生产', CAST(0x0000A61300EED70C AS DateTime), N'9', N'跟单员-张明')
SET IDENTITY_INSERT [dbo].[BizAppFlow] OFF
/****** Object:  StoredProcedure [dbo].[pr_com_QuerySQLPaged]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored Procedure

create PROCEDURE  [dbo].[pr_com_QuerySQLPaged]      
     @Query nvarchar(MAX), --SQL语句    
     @PageSize int, --每页大小   
     @CurrentPage  int ,  --当前页码   
     @Field nvarchar(40)='', --排序字段   
     @Order nvarchar(10) = 'asc ' --排序顺序   
AS    
    declare @PageCount int,
	        @TempSize int,    
			@TempNum int,  
			@strSQL varchar(max),
			@strField varchar(40),   
			@strFielddesc varchar(40),
			@Tempindex int 

    --0,1都做第一页处理
	if (@currentPage = 0)
		set @currentPage = 1

    set @TempNum = @CurrentPage * @PageSize    
	set @strField = ''
	set @strFielddesc = ''

	--计算总页数
	declare @strCountSQL nvarchar(MAX)
	set @strCountSQL = 'SELECT @total=COUNT(1) FROM (' + @Query + ')T'

	--总记录数
	DECLARE @rowsCount int
	DECLARE @params nvarchar(500)
	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @strCountSQL, @params, @total=@rowsCount OUTPUT

	--根据总记录数，计算页数
	SET @PageCount = ceiling(convert(float, @rowsCount) / convert(float, @PageSize))

	--超过最后一页，显示尾页
    if(@CurrentPage>=@PageCount)    
        set @TempSize=@rowsCount-(@PageCount-1)*@PageSize    
    else  
        set @TempSize=@PageSize  

	SET @Tempindex=Charindex('projcode',@Query,0)
    if( @Tempindex>0 and @Tempindex<Charindex('from',@Query,0))
	begin
		if(@Field<>'' and @Field<>'projcode')
		begin
			set @strField = ',projcode ';
			set	@strFielddesc =',projcode desc ';
		end 
	end 

	--分页SQL
    if(@Order='desc')    
    begin    
      set @strSQL = '
            select *   
            from (   
                    select top '+CONVERT(varchar(10),@TempSize)+' *   
                    from (  
                            select top '+CONVERT(varchar(10),@TempNum)+' *   
                            from ('+@Query+') as t0   
                            order by '+@Field+' desc '+@strField+'  
                    ) as t1   
                    order by '+@Field+@strFielddesc+' 
            ) as t2   
            order by '+@Field+' desc' +@strField   
    end    
    else    
    begin    
      set @strSQL = '
            select *   
            from (  
                    select top '+CONVERT(varchar(10),@TempSize)+' *   
                    from (  
                            select top '+ CONVERT(varchar(10), @TempNum ) + ' *   
                            from ('+@Query+') as t0  
                            order by '+@Field+' asc '+@strField +'
                    ) as t1   
                    order by '+@Field+' desc  '+@strFielddesc+' 
            ) as t2   
            order by '+@Field +@strField  
    end  
    exec(@strSQL)
GO
/****** Object:  Table [dbo].[ManProductOrder]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManProductOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [varchar](30) NULL,
	[Status] [smallint] NULL,
	[ProductName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[CreatedTime] [datetime] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Mobile] [varchar](30) NULL,
	[Remark] [nvarchar](1000) NULL,
	[LastUpdatedTime] [datetime] NULL,
 CONSTRAINT [PK_MADPRODUCTORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ManProductOrder] ON
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (624, N'TB300427', 2, N'LED节能灯E型', 8, CAST(1000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0x0000A4F5010C64AB AS DateTime), N'青田麦家', N'福建岭南', N'995735', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (625, N'TB906432', 2, N'遥控灯D型', 9, CAST(1000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0x0000A4F5010C8D11 AS DateTime), N'中国邮政', N'北京复兴门', N'327956', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (626, N'TB338322', 2, N'海盗船F型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A4F5010C9BF0 AS DateTime), N'HACK 新闻', N'美国纽约', N'528973', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (627, N'TB612344', 4, N'遥控灯D型', 9, CAST(1000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0x0000A4F5014D9BF7 AS DateTime), N'中国邮政', N'北京复兴门', N'123842', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (628, N'TB683061', 3, N'遥控飞机B型', 7, CAST(1000.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), CAST(0x0000A4F5014DA501 AS DateTime), N'HACK 新闻', N'美国纽约', N'634087', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (629, N'TB289255', 1, N'智能玩具C型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A4F700D4E278 AS DateTime), N'HACK 新闻', N'美国纽约', N'951003', N'A店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (630, N'TB351094', 2, N'童话玩具A型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A4F700D53828 AS DateTime), N'青田麦家', N'福建岭南', N'359041', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (631, N'TB490683', 2, N'LED节能灯E型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A4F900FBD63B AS DateTime), N'花旗银行', N'上海浦东新区', N'707253', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (632, N'TB366615', 2, N'LED节能灯E型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A4FD0007E62E AS DateTime), N'汇丰银行', N'上海人民广场', N'409696', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (633, N'TB751853', 2, N'童话玩具A型', 8, CAST(1000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0x0000A4FF00F6A7DC AS DateTime), N'中石油', N'北京燕山', N'401862', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (634, N'TB969829', 2, N'遥控飞机B型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A4FF00F6B0E5 AS DateTime), N'中国邮政', N'北京复兴门', N'217051', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (635, N'TB477493', 1, N'遥控灯D型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A4FF00F6D445 AS DateTime), N'青田麦家', N'福建岭南', N'217074', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (636, N'TB248849', 1, N'智能玩具C型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A4FF00F6D625 AS DateTime), N'BBC', N'英国伦敦', N'818516', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (637, N'TB301780', 1, N'遥控灯D型', 7, CAST(1000.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), CAST(0x0000A4FF0181C346 AS DateTime), N'中国邮政', N'北京复兴门', N'682300', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (638, N'TB561443', 3, N'海盗船F型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A50001178DED AS DateTime), N'BBC', N'英国伦敦', N'983038', N'B店', CAST(0x0000A57F013BE359 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (639, N'TB792242', 3, N'遥控灯D型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A5000117994A AS DateTime), N'青田麦家', N'福建岭南', N'977500', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (640, N'TB429545', 2, N'LED节能灯E型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A5000117C30E AS DateTime), N'瑞银信托', N'北京王府井', N'235484', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (641, N'TB817384', 2, N'LED节能灯E型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A5000117CFAE AS DateTime), N'瑞银信托', N'北京王府井', N'861410', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (642, N'TB434232', 2, N'遥控灯D型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A505015679B7 AS DateTime), N'青田麦家', N'福建岭南', N'856029', N'A店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (643, N'TB351670', 2, N'海盗船F型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A50A010D8153 AS DateTime), N'阿里巴巴', N'杭州西湖区', N'936583', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (644, N'TB348804', 2, N'遥控飞机B型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A50B00B37690 AS DateTime), N'阿里巴巴', N'杭州西湖区', N'332073', N'J店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (645, N'TB642095', 6, N'智能玩具C型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A50B00DCB9C5 AS DateTime), N'汇丰银行', N'上海人民广场', N'315345', N'A店', CAST(0x0000A57D016233CC AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (646, N'TB992099', 2, N'智能玩具C型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A50B00E43275 AS DateTime), N'BBC', N'英国伦敦', N'172180', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (647, N'TB285386', 2, N'智能玩具C型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A50B00E438D6 AS DateTime), N'汇丰银行', N'上海人民广场', N'215615', N'A店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (648, N'TB588606', 2, N'遥控飞机B型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A50B00E43E37 AS DateTime), N'BBC', N'英国伦敦', N'304070', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (649, N'TB771229', 2, N'智能玩具C型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A50B00EB2EFA AS DateTime), N'BBC', N'英国伦敦', N'965798', N'A店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (650, N'TB328175', 2, N'童话玩具A型', 7, CAST(1000.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), CAST(0x0000A50B00EC0B2D AS DateTime), N'汇丰银行', N'上海人民广场', N'375718', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (651, N'TB728743', 2, N'海盗船F型', 9, CAST(1000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0x0000A50F00A2EB29 AS DateTime), N'HACK 新闻', N'美国纽约', N'485495', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (652, N'TB991726', 3, N'LED节能灯E型', 7, CAST(1000.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), CAST(0x0000A510016256B2 AS DateTime), N'阿里巴巴', N'杭州西湖区', N'810230', N'A店', CAST(0x0000A57E014A4DFA AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (653, N'TB559248', 2, N'海盗船F型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A513010A6CAE AS DateTime), N'汇丰银行', N'上海人民广场', N'994609', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (654, N'TB271916', 3, N'海盗船F型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A57800AD1F80 AS DateTime), N'青田麦家', N'福建岭南', N'925173', N'A店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (655, N'TB322602', 2, N'遥控灯D型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A57800B13487 AS DateTime), N'阿里巴巴', N'杭州西湖区', N'889976', N'C店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (656, N'TB779780', 2, N'童话玩具A型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A57800B2E0BA AS DateTime), N'青田麦家', N'福建岭南', N'733321', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (657, N'TB358232', 2, N'智能玩具C型', 8, CAST(1000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0x0000A57800B30E90 AS DateTime), N'瑞银信托', N'北京王府井', N'873538', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (658, N'TB575859', 2, N'LED节能灯E型', 3, CAST(1000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(0x0000A57800B3A64F AS DateTime), N'BBC', N'英国伦敦', N'541450', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (659, N'TB710707', 3, N'遥控飞机B型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A57800B47DD4 AS DateTime), N'中石油', N'北京燕山', N'484262', N'F店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (660, N'TB967961', 3, N'LED节能灯E型', 5, CAST(1000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(0x0000A57D0162CEF7 AS DateTime), N'中国邮政', N'北京复兴门', N'615470', N'A店', CAST(0x0000A57D0162ECB4 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (661, N'TB751700', 8, N'遥控灯D型', 8, CAST(1000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0x0000A57D01646D7B AS DateTime), N'中石油', N'北京燕山', N'691416', N'B店', CAST(0x0000A57D01659400 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (662, N'TB647767', 3, N'LED节能灯E型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A57E016989D1 AS DateTime), N'青田麦家', N'福建岭南', N'421885', N'F店', CAST(0x0000A57E0169A9A0 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (663, N'TB809544', 3, N'童话玩具A型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A57F013C5D42 AS DateTime), N'汇丰银行', N'上海人民广场', N'615660', N'C店', CAST(0x0000A57F013C7377 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (664, N'TB914891', 3, N'智能玩具C型', 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0x0000A57F013CD3FA AS DateTime), N'瑞银信托', N'北京王府井', N'751542', N'J店', CAST(0x0000A57F013CE48D AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (665, N'TB929075', 3, N'LED节能灯E型', 4, CAST(1000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A57F01450355 AS DateTime), N'瑞银信托', N'北京王府井', N'501820', N'A店', CAST(0x0000A57F014515AA AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (666, N'TB225725', 3, N'遥控飞机B型', 8, CAST(1000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0x0000A57F0146E373 AS DateTime), N'中石油', N'北京燕山', N'557655', N'J店', CAST(0x0000A57F0146F53B AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (667, N'TB164370', 8, N'遥控飞机B型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A57F01476900 AS DateTime), N'BBC', N'英国伦敦', N'696708', N'F店', CAST(0x0000A57F01483D30 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (668, N'TB885696', 1, N'遥控飞机B型', 5, CAST(1000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(0x0000A57F015AF078 AS DateTime), N'花旗银行', N'上海浦东新区', N'733803', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (669, N'TB747473', 4, N'遥控灯D型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A57F015B00C4 AS DateTime), N'瑞银信托', N'北京王府井', N'158431', N'J店', CAST(0x0000A5B700B3FCEA AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (670, N'TB630627', 8, N'智能玩具C型', 9, CAST(1000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0x0000A5B700B43869 AS DateTime), N'花旗银行', N'上海浦东新区', N'499169', N'B店', CAST(0x0000A5B700B4C4D8 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (671, N'TB165916', 3, N'智能玩具C型', 5, CAST(1000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(0x0000A5C5009BF459 AS DateTime), N'花旗银行', N'上海浦东新区', N'578642', N'J店', CAST(0x0000A5C5009C0E28 AS DateTime))
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (672, N'TB247595', 1, N'LED节能灯E型', 6, CAST(1000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(0x0000A5C500AB6853 AS DateTime), N'中石油', N'北京燕山', N'361112', N'B店', NULL)
INSERT [dbo].[ManProductOrder] ([ID], [OrderCode], [Status], [ProductName], [Quantity], [UnitPrice], [TotalPrice], [CreatedTime], [CustomerName], [Address], [Mobile], [Remark], [LastUpdatedTime]) VALUES (673, N'TB508950', 5, N'遥控灯D型', 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0x0000A61300EE3F54 AS DateTime), N'青田麦家', N'福建岭南', N'691293', N'J店', CAST(0x0000A61300EED70C AS DateTime))
SET IDENTITY_INSERT [dbo].[ManProductOrder] OFF
/****** Object:  Table [dbo].[HrsLeave]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrsLeave](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveType] [smallint] NOT NULL,
	[Days] [decimal](18, 1) NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[CurrentActivityText] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CreatedUserID] [int] NOT NULL,
	[CreatedUserName] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[DepManagerRemark] [nvarchar](50) NULL,
	[DirectorRemark] [nvarchar](50) NULL,
	[DeputyGeneralRemark] [nvarchar](50) NULL,
	[GeneralManagerRemark] [nvarchar](50) NULL,
 CONSTRAINT [PK_HRLEAVE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'Days'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'FromDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'ToDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正在办理的节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'CurrentActivityText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' /// <summary>
           /// 未启动，流程记录为空
           /// </summary>
           NotStart = 0,
   
           /// <summary>
           /// 准备状态
           /// </summary>
           Ready = 1,
   
           /// <summary>
           /// 运行状态
           /// </summary>
           Running = 2,
   
           /// <summary>
           /// 完成
           /// </summary>
           Completed = 4,
   
           /// <summary>
           /// 挂起
           /// </summary>
           Suspended = 5,
   
           /// <summary>
           /// 取消
           /// </summary>
           Canceled = 6,
   
           /// <summary>
           /// 终止
           /// </summary>
           Discarded = 7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'CreatedUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'CreatedUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HrsLeave', @level2type=N'COLUMN',@level2name=N'CreatedDate'
GO
SET IDENTITY_INSERT [dbo].[HrsLeave] ON
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (1, 2, CAST(4.0 AS Decimal(18, 1)), CAST(0x4F390B00 AS Date), CAST(0x72390B00 AS Date), N'人事经理审批', 0, 6, N'普通员工-小明', CAST(0x4E390B00 AS Date), N'同意', N'同意', N'', N'')
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (2, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x1C3A0B00 AS Date), CAST(0x1F3A0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x1B3A0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (3, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x503A0B00 AS Date), CAST(0x533A0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x503A0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (4, 2, CAST(2.0 AS Decimal(18, 1)), CAST(0x863A0B00 AS Date), CAST(0x883A0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x863A0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (5, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x873A0B00 AS Date), CAST(0x8A3A0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x873A0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (6, 2, CAST(2.0 AS Decimal(18, 1)), CAST(0x873A0B00 AS Date), CAST(0x893A0B00 AS Date), N'部门经理审批', 0, 6, N'普通员工-小明', CAST(0x873A0B00 AS Date), N'同意', N'', N'', N'')
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (7, 2, CAST(5.0 AS Decimal(18, 1)), CAST(0x123B0B00 AS Date), CAST(0x173B0B00 AS Date), N'人事经理审批', 0, 6, N'普通员工-小明', CAST(0x123B0B00 AS Date), N'同意', N'', N'', N'同意')
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (8, 2, CAST(6.0 AS Decimal(18, 1)), CAST(0x123B0B00 AS Date), CAST(0x183B0B00 AS Date), N'部门经理审批', 0, 6, N'普通员工-小明', CAST(0x123B0B00 AS Date), N'同意', N'', N'', N'')
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (9, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x203B0B00 AS Date), CAST(0x233B0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x203B0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (10, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x203B0B00 AS Date), CAST(0x233B0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x203B0B00 AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HrsLeave] ([ID], [LeaveType], [Days], [FromDate], [ToDate], [CurrentActivityText], [Status], [CreatedUserID], [CreatedUserName], [CreatedDate], [DepManagerRemark], [DirectorRemark], [DeputyGeneralRemark], [GeneralManagerRemark]) VALUES (11, 2, CAST(3.0 AS Decimal(18, 1)), CAST(0x203B0B00 AS Date), CAST(0x233B0B00 AS Date), N'', 0, 6, N'普通员工-小明', CAST(0x203B0B00 AS Date), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HrsLeave] OFF
/****** Object:  Table [dbo].[EavEntityProcess]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityProcess](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ProcessName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_EAVENTITYPROCESS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EavEntityProcess] ON
INSERT [dbo].[EavEntityProcess] ([ID], [EntityDefID], [ProcessGUID], [ProcessName]) VALUES (1, 32, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'财务报销流程')
SET IDENTITY_INSERT [dbo].[EavEntityProcess] OFF
/****** Object:  Table [dbo].[EavEntityInfo]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NULL,
	[ProcessInstanceID] [int] NULL,
	[CreatedUserID] [varchar](100) NULL,
	[CreatedUserName] [varchar](100) NULL,
	[CreatedDatetime] [datetime] NULL,
	[LastUpdatedUserID] [varchar](100) NULL,
	[LastUpdatedUserName] [varchar](100) NULL,
	[LastUpdatedDatetime] [datetime] NULL,
 CONSTRAINT [PK_EAVENTITYINFO] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EavEntityInfo] ON
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (1, 1, N'2acffb20-6bd1-4891-98c9-c76d022d1445', 100, N'10', N'Jack', CAST(0x0000A53300000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (2, 1, N'2acffb20-6bd1-4891-98c9-c76d022d1445', 101, N'20', N'Melinda', CAST(0x0000A53000000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (17, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55900B955A7 AS DateTime), NULL, NULL, CAST(0x0000A55A0126F299 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (18, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55900BA2686 AS DateTime), NULL, NULL, CAST(0x0000A55A00C5B882 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (19, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55900BA8836 AS DateTime), NULL, NULL, CAST(0x0000A55A00C4B736 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (20, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55900BAA09B AS DateTime), NULL, NULL, CAST(0x0000A55A00C47CD6 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (21, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B009A1DDE AS DateTime), NULL, NULL, CAST(0x0000A55B009A2E33 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (22, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B009E9027 AS DateTime), NULL, NULL, CAST(0x0000A55B009FE8EF AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (23, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D79D20 AS DateTime), NULL, NULL, CAST(0x0000A55B00D79D20 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (24, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D7DA03 AS DateTime), NULL, NULL, CAST(0x0000A55B00D7DA03 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (25, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D866CD AS DateTime), NULL, NULL, CAST(0x0000A55B00D866CD AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (26, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D94265 AS DateTime), NULL, NULL, CAST(0x0000A55B00D94265 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (27, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D99C4D AS DateTime), NULL, NULL, CAST(0x0000A55B00D99C4D AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (28, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00D9C740 AS DateTime), NULL, NULL, CAST(0x0000A55B00D9C740 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (29, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55B00DB119C AS DateTime), NULL, NULL, CAST(0x0000A55B011D16B2 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (30, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55C00EC6A21 AS DateTime), NULL, NULL, CAST(0x0000A55D0175BA68 AS DateTime))
INSERT [dbo].[EavEntityInfo] ([ID], [EntityDefID], [ProcessGUID], [ProcessInstanceID], [CreatedUserID], [CreatedUserName], [CreatedDatetime], [LastUpdatedUserID], [LastUpdatedUserName], [LastUpdatedDatetime]) VALUES (31, 32, NULL, NULL, NULL, NULL, CAST(0x0000A55D017AEDF5 AS DateTime), NULL, NULL, CAST(0x0000A55D017AEDF5 AS DateTime))
SET IDENTITY_INSERT [dbo].[EavEntityInfo] OFF
/****** Object:  Table [dbo].[WfActivityInstance]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfActivityInstance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ActivityGUID] [varchar](100) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[ActivityType] [smallint] NOT NULL,
	[ActivityState] [smallint] NOT NULL,
	[WorkItemType] [smallint] NOT NULL,
	[AssignedToUserIDs] [nvarchar](1000) NULL,
	[AssignedToUserNames] [nvarchar](2000) NULL,
	[BackwardType] [smallint] NULL,
	[BackSrcActivityInstanceID] [int] NULL,
	[GatewayDirectionTypeID] [smallint] NULL,
	[CanRenewInstance] [tinyint] NOT NULL,
	[TokensRequired] [int] NOT NULL,
	[TokensHad] [int] NOT NULL,
	[ComplexType] [smallint] NULL,
	[MergeType] [smallint] NULL,
	[MIHostActivityInstanceID] [int] NULL,
	[CompleteOrder] [float] NULL,
	[SignForwardType] [smallint] NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[EndedDateTime] [datetime] NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NULL,
 CONSTRAINT [PK_WfActivityInstance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WfActivityInstance] ON
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1159, 309, N'SamplePrice', N'100', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A627014D936C AS DateTime), N'10', N'Long', CAST(0x0000A627014D938A AS DateTime), CAST(0x0000A627014D938A AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1160, 309, N'SamplePrice', N'100', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A627014D9397 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[WfActivityInstance] OFF
/****** Object:  View [dbo].[vw_SysRoleUserView]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_SysRoleUserView]
AS
SELECT  dbo.SysRoleUser.ID,
    dbo.SysRole.ID as RoleID, 
	dbo.SysRole.RoleName, 
	dbo.SysRole.RoleCode, 
	dbo.SysUser.ID as UserID,
	dbo.SysUser.UserName
FROM         dbo.SysRole LEFT JOIN
             dbo.SysRoleUser ON dbo.SysRole.ID = dbo.SysRoleUser.RoleID LEFT JOIN
             dbo.SysUser ON dbo.SysRoleUser.UserID = dbo.SysUser.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[24] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SysRole"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysRoleUser"
            Begin Extent = 
               Top = 4
               Left = 313
               Bottom = 108
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysUser"
            Begin Extent = 
               Top = 165
               Left = 175
               Bottom = 254
               Right = 317
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SysRoleUserView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SysRoleUserView'
GO
/****** Object:  Table [dbo].[EavEntityAttribute]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityAttribute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntityDefID] [int] NOT NULL,
	[StorageType] [tinyint] NOT NULL,
	[DivCtrlKey] [varchar](20) NULL,
	[AttrName] [nvarchar](100) NOT NULL,
	[AttrCode] [varchar](50) NOT NULL,
	[AttrDataType] [smallint] NOT NULL,
	[FieldInputType] [smallint] NOT NULL,
	[IsMandatory] [tinyint] NOT NULL,
	[ConditionKey] [varchar](50) NULL,
	[Format] [varchar](100) NULL,
	[OrderID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_EAVENTITYATTRIBUTE] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EavEntityAttribute] ON
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (1, 1, 1, N'CTRL-DIV-1001', N'请假天数', N'LeaveDays', 1, 1, 0, NULL, NULL, 1, N'输入数字文本')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (2, 1, 1, N'CTRL-DIV-1002', N'请假原因说明', N'LeaveNotes', 2, 1, 0, NULL, NULL, 3, N'输入文本')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (3, 1, 1, N'CTRL-DIV-1003', N'开始日期', N'BeginDate', 4, 1, 0, NULL, NULL, 4, N'日期类型')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (4, 1, 1, N'CTRL-DIV-1004', N'结束日期', N'EndDate', 4, 1, 0, NULL, NULL, 5, N'日期类型')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (5, 1, 1, N'CTRL-DIV-1005', N'请假类型', N'LeaveTypeID', 1, 2, 0, NULL, NULL, 2, N'下拉框类型')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (6, 1, 1, N'CTRL-DIV-1006', N'部门领导审批意见', N'DeptManagerNotes', 2, 1, 0, NULL, NULL, 6, N'文本')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (7, 1, 1, N'CTRL-DIV-1007', N'人事主管审批意见', N'HRManagerNotes', 2, 1, 0, NULL, NULL, 7, N'文本')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (8, 1, 1, N'CTRL-DIV-1008', N'总经理审批意见', N'CEONotes', 2, 1, 0, NULL, NULL, 8, N'文本')
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (49, 12, 1, N'CTRL-DIV-1001', N'姓名', N'txtname', 1, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (88, 32, 1, N'CTRL-DIV-1001', N'出差说明', N'CCSMU12', 1, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (89, 32, 1, N'CTRL-DIV-1002', N'开始日期', N'KSRJQ51', 4, 7, 0, NULL, N'YYYY/MM/DD', 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (90, 32, 1, N'CTRL-DIV-1003', N'类别', N'LBX85', 1, 3, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (91, 32, 1, N'CTRL-DIV-1004', N'金额范围', N'JEFWB35', 1, 5, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (93, 32, 1, N'CTRL-DIV-1005', N'备注', N'BZT14', 1, 4, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (94, 32, 1, N'CTRL-DIV-1006', N'金额', N'JEJ41', 2, 1, 0, NULL, NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (95, 34, 1, N'CTRL-DIV-1001', N'etrewtr', N'etrewtrC66', 1, 1, 0, N'', NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (98, 33, 1, N'CTRL-DIV-1002', N'文本框', N'WBKZ89', 1, 1, 0, N'', NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (97, 33, 1, N'CTRL-DIV-1001', N'文本框', N'WBKQ64', 1, 1, 0, N'', NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (99, 36, 1, N'CTRL-DIV-1001', N'sadfdsaf', N'sadfdsafQ23', 1, 1, 0, N'', NULL, 0, NULL)
INSERT [dbo].[EavEntityAttribute] ([ID], [EntityDefID], [StorageType], [DivCtrlKey], [AttrName], [AttrCode], [AttrDataType], [FieldInputType], [IsMandatory], [ConditionKey], [Format], [OrderID], [Description]) VALUES (100, 37, 1, N'CTRL-DIV-1001', N'aaaa', N'aaaaW85', 1, 1, 0, N'', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[EavEntityAttribute] OFF
/****** Object:  StoredProcedure [dbo].[pr_sys_UserSave]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_UserSave]
   @userID			int,
   @userName		varchar(100)

AS

BEGIN

	SET NOCOUNT ON
	-- 检查条件
	IF EXISTS(SELECT 1 
			  FROM SysUser 
			  WHERE ID<>@userID 
				AND (UserName=@userName)
			  )
		RAISERROR ('插入或编辑用户数据失败: 有重复的名称已经存在!', 16, 1)

    --插入或者编辑				
	BEGIN TRY
		IF (@userID>0)
			UPDATE SysUser
			SET UserName=@userName
			WHERE ID=@userID
		ELSE
		    INSERT INTO SysUser(UserName)
		    VALUES(@userName)
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('插入或编辑用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserDelete]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_UserDelete]
   @userID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		DELETE FROM SysRoleUser WHERE UserID=@userID
		DELETE FROM SysUser WHERE ID=@userID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleUserDelete]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleUserDelete]
   @userID			int,
   @roleID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		IF (@userID = -1)
			DELETE FROM SysRoleUser WHERE RoleID=@roleID
		ELSE
			DELETE FROM SysRoleUser WHERE UserID=@userID AND RoleID=@roleID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除角色下的用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleSave]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleSave]
   @roleID			int,
   @roleCode		varchar(50),
   @roleName		nvarchar(100)

AS

BEGIN

	SET NOCOUNT ON
	-- 检查条件
	IF EXISTS(SELECT 1 
			  FROM SysRole 
			  WHERE ID<>@roleID 
				AND (RoleCode=@roleCode OR RoleName=@roleName)
			  )
		RAISERROR ('插入或编辑角色数据失败: 有重复的名称或者编码已经存在!', 16, 1)

    --插入或者编辑				
	BEGIN TRY
		IF (@roleID>0)
			UPDATE SysRole
			SET RoleCode=@roleCode, RoleName=@roleName
			WHERE ID=@roleID
		ELSE
		    INSERT INTO SysRole(RoleCode, RoleName)
		    VALUES(@roleCode, @roleName)
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('插入或编辑角色数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleDelete]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleDelete]
   @roleID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		DELETE FROM SysRoleUser WHERE RoleID=@roleID
		DELETE FROM SysRole WHERE ID=@roleID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除角色数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_DeptUserListRankQuery]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_sys_DeptUserListRankQuery]
   @curUserID			int,
   @receiverType			int

AS

BEGIN

	SET NOCOUNT ON
	DECLARE @managerID as int
	SELECT 
		@managerID = E.ManagerID
	FROM SysEmployee E
	WHERE E.UserID = @curUserID
				
	BEGIN TRY
		IF (@receiverType = 1)	--上司
			BEGIN		
				SELECT 
					U.ID as UserID,
					U.UserName
				FROM SysEmployee E
				INNER JOIN SysUser U
					ON E.UserID = U.ID
				WHERE E.UserID = @managerID
			END
		ELSE IF (@receiverType = 2) --同级
			BEGIN
				SELECT 
					U.ID as UserID,
					U.UserName
				FROM SysEmployee E
				INNER JOIN SysUser U
					ON E.UserID = U.ID
				WHERE E.ManagerID = @managerID
			END
		ELSE IF (@receiverType = 3) --下属
			BEGIN
				SELECT 
					U.ID as UserID,
					U.UserName
				FROM SysEmployee E
				INNER JOIN SysUser U
					ON E.UserID = U.ID
				WHERE E.ManagerID = @curUserID
			END
		
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('查询部门用户级别关系数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_eav_EntityInfoDelete]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_eav_EntityInfoDelete]
   @entityInfoID			int

AS

BEGIN

	SET NOCOUNT ON

	BEGIN TRANSACTION
	BEGIN TRY
		--删除主表数据
		DELETE 
		FROM EavEntityInfo
		WHERE ID = @entityInfoID

		--删除其它5张表的扩展属性数据
		DELETE 
		FROM EavEntityAttrInt
		WHERE EntityInfoID = @entityInfoID
	
		DELETE
		FROM EavEntityAttrDecimal
		WHERE EntityInfoID = @entityInfoID

		DELETE
		FROM EavEntityAttrVarchar
		WHERE EntityInfoID = @entityInfoID

		DELETE
		FROM EavEntityAttrDatetime
		WHERE EntityInfoID = @entityInfoID
		
		DELETE
		FROM EavEntityAttrText
		WHERE EntityInfoID = @entityInfoID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
			ROLLBACK TRANSACTION

			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除实体及其扩展属性失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_eav_EntityDefDelete]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_eav_EntityDefDelete]
   @entityDefID			int

AS

BEGIN

	SET NOCOUNT ON

	DECLARE @entityInfoID as int
	SELECT 
		@entityInfoID = ID 
	FROM EavEntityInfo 
	WHERE EntityDefID = @entityDefID
	
	BEGIN TRANSACTION
	BEGIN TRY
		
		--1. 删除其它5张表的扩展属性数据
		DELETE 
		FROM EavEntityAttrInt
		WHERE EntityInfoID = @entityInfoID
	
		DELETE
		FROM EavEntityAttrDecimal
		WHERE EntityInfoID = @entityInfoID

		DELETE
		FROM EavEntityAttrVarchar
		WHERE EntityInfoID = @entityInfoID

		DELETE
		FROM EavEntityAttrDatetime
		WHERE EntityInfoID = @entityInfoID
		
		DELETE
		FROM EavEntityAttrText
		WHERE EntityInfoID = @entityInfoID
		
		--2. 删除实体信息主表数据
		DELETE 
		FROM EavEntityInfo
		WHERE ID = @entityInfoID
		
		--3. 删除实体属性表数据
		DELETE
		FROM EavEntityAttribute
		WHERE EntityDefID = @entityDefID
		
		--4. 删除定义主表数据
		DELETE
		FROM EavEntityDef
		WHERE ID = @entityDefID
		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
			ROLLBACK TRANSACTION

			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除实体及其扩展属性失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_eav_EntityAttrValueQuery]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_eav_EntityAttrValueQuery]
   @entityInfoID			int

AS

BEGIN

	SET NOCOUNT ON

	BEGIN TRY
	SELECT * FROM(
		SELECT
			EEAI.EntityInfoID
			,'EavEntityAttrInt' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,CONVERT(nvarchar, EEAI.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrInt EEAI
				ON EEA.ID = EEAI.AttrID
		UNION ALL
		SELECT
			EEAN.EntityInfoID
			,'EavEntityAttrDecimal' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,CONVERT(nvarchar, EEAN.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDecimal EEAN
				ON EEA.ID = EEAN.AttrID
		UNION ALL
		SELECT
			EEAV.EntityInfoID
			,'EavEntityAttrVarchar' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,CONVERT(nvarchar, EEAV.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrVarchar EEAV
				ON EEA.ID = EEAV.AttrID
		UNION ALL
		SELECT
			EEAD.EntityInfoID
			,'EavEntityAttrDatetime' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			--,CONVERT(nvarchar, EEAD.Value) as Value
			,CONVERT(varchar(25), EEAD.Value, 120) 
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDatetime EEAD
				ON EEA.ID = EEAD.AttrID
		UNION ALL
		SELECT
			EEAT.EntityInfoID
			,'EavEntityAttrText' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,CONVERT(nvarchar, EEAT.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrText EEAT
				ON EEA.ID = EEAT.AttrID
					) T
	WHERE T.EntityInfoID=@entityInfoID
		
	END TRY
	BEGIN CATCH
			ROLLBACK TRANSACTION

			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('读取表单字段数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_eav_EntityAttrValuePivotGetPaged]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_eav_EntityAttrValuePivotGetPaged]
    @entityDefID	int = 0,		--表单定义ID
    @entityInfoID	int = 0,		--表单实例ID
	@createdUserID		varchar(100) = '',		--表单创建人
    @pageIndex  int = 1,  --当前页码 
    @pageSize INT = 100, --每页大小   
    @field nvarchar(40)='ID', --排序字段   
    @order nvarchar(10) = 'asc ',
	@rowsCount	int		OUTPUT --排序顺序   
AS


BEGIN

	SET NOCOUNT ON
	
	--判断有没有传入MatTypeID
	IF (@entityDefID = 0 and @createdUserID = '')
	BEGIN
		DECLARE @error int, @message varchar(4000)
		SELECT @error = ERROR_NUMBER()
			, @message = ERROR_MESSAGE();
		RAISERROR ('表单定义ID和创建用户ID不能同时为空！查询失败: %d: %s', 16, 1, @error, @message)
	END

	DECLARE @sql nvarchar(1000)
	DECLARE @countSql nvarchar(1000)
	DECLARE @query nvarchar(4000)

	--组建查询用到的SQL语句
	--1. 基本语句
	SET @sql = 'SELECT ID FROM EavEntityInfo WHERE 1=1'
	SET @countSql = 'SELECT @total=COUNT(1) FROM EavEntityInfo WHERE 1=1'


    --2. 限定条件
    IF (@entityDefID != 0)
    BEGIN
    	SET @sql = @sql + ' AND EntityDefID=' + CONVERT(varchar, @entityDefID)
		SET @countSql = @countSql + ' AND EntityDefID=' + CONVERT(varchar, @entityDefID)
    END
    
    IF (@createdUserID != 0)
    BEGIN
    	SET @sql = @sql + ' AND CreatedUserID=' + CONVERT(varchar, @createdUserID)
		SET @countSql = @countSql + ' AND CreatedUserID=' + CONVERT(varchar, @createdUserID)
    END
    
    IF (@entityInfoID != 0)
    BEGIN
		SET @sql = @sql + ' AND ID=' + CONVERT(varchar, @entityInfoID)
		SET @countSql = @countSql + ' AND ID=' + CONVERT(varchar, @entityInfoID)
    END
    
    
    --3. 获取总记录数，如果总记录数为0，则返回
	DECLARE @params nvarchar(500)
	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @countSql, @params, @total=@rowsCount OUTPUT

	IF (@rowsCount = 0)
	BEGIN
		--选取空记录返回，用于Dapper构造动态类型对象
		SELECT
			EEI.ID,
			EEI.EntityDefID,
			EED.EntityName,
			EEI.ProcessGUID,
			EEI.CreatedUserName,
			EEI.CreatedUserID,
			EEI.CreatedDatetime
		FROM EavEntityInfo EEI
		INNER JOIN EavEntityDef EED
			ON EED.ID = EEI.EntityDefID
		WHERE EEI.ID = -1000

		RETURN
	END
	
	--4. 获取要分页的实体ID表
	DECLARE @tblEntityInfo TABLE(ID INT)

	INSERT INTO @tblEntityInfo
	EXEC dbo.pr_com_QuerySQLPaged @sql, @pageSize, @pageIndex, 'ID', 'asc'

	--5. 查询是否有动态扩展属性，如果没有，返回主表记录
	DECLARE @tblDynamicAttr	TABLE(
		EntityInfoID		int,
		TblName		nvarchar(50),
		AttrID		int,
		AttrCode	varchar(30),
		AttrName	nvarchar(50),
		AttrDataType	int,
		OrderID			int,
		Value		nvarchar(4000)
	)
	
	--将动态属性写入临时表
	INSERT INTO @tblDynamicAttr
	SELECT * FROM(
		SELECT
			EEAI.EntityInfoID
			,'EavEntityAttrInt' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAI.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrInt EEAI
			ON EEA.ID = EEAI.AttrID
		UNION ALL
		SELECT
			EEAN.EntityInfoID
			,'EavEntityAttrDecimal' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAN.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDecimal EEAN
			ON EEA.ID = EEAN.AttrID
		UNION ALL
		SELECT
			EEAV.EntityInfoID
			,'EavEntityAttrVarchar' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAV.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrVarchar EEAV
			ON EEA.ID = EEAV.AttrID
		UNION ALL
		SELECT
			EEAD.EntityInfoID
			,'EavEntityAttrDatetime' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAD.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDatetime EEAD
			ON EEA.ID = EEAD.AttrID
		UNION ALL
		SELECT
			EEAT.EntityInfoID
			,'EavEntityAttrText' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAT.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrText EEAT
			ON EEA.ID = EEAT.AttrID
	) T
	WHERE T.EntityInfoID IN (SELECT ID FROM @tblEntityInfo) 
	ORDER BY 
		T.EntityInfoID, 
		T.OrderID

	DECLARE @dynamicRowsCount int
	SELECT @dynamicRowsCount = COUNT(1) FROM @tblDynamicAttr
	
	print 'dynamic rows count:' 
	print @dynamicRowsCount
	
	--如果没有动态扩展属性，则返回主表记录
	IF (@dynamicRowsCount = 0)
	BEGIN
		SELECT 
			EEI.ID, 
			EED.EntityName
		FROM EavEntityInfo EEI
		INNER JOIN EavEntityDef EED
			ON EED.ID = EEI.EntityDefID
		WHERE EEI.ID IN (
			SELECT ID FROM @tblEntityInfo) 

		RETURN
	END

	--6. 返回动态属性值的列表
	--物料自定义属性表的临时表
	--用于先将物料扩展属性填充到表里
	CREATE TABLE #myCustomEntityAttrValueTable
	(
		[ID] [int] NULL,
		[EntityDefID] [int] NULL,
		[EntityName] [nvarchar] (100) NULL,
		[EntityCode] [varchar](100) NULL,
		[AttrName] [nvarchar] (100) NULL,
		[AttrCode] [varchar](100) NULL,
		[OrderID]	[int] NULL,
		[Value] [nvarchar](max) NULL
	)

	--插入行记录到临时表
	INSERT INTO #myCustomEntityAttrValueTable
	SELECT 
		EEI.ID, 
		EEI.EntityDefID,
		EED.EntityName,
		EED.EntityCode,
		T.AttrName,
		T.AttrCode,
		T.OrderID,
		T.Value
	FROM EavEntityInfo EEI
	INNER JOIN EavEntityDef EED
		ON EED.ID = EEI.EntityDefID
	INNER JOIN EavEntityAttribute EEA
		ON EEA.EntityDefID = EED.ID
	INNER JOIN @tblEntityInfo T1
		ON T1.ID = EEI.ID
	LEFT JOIN @tblDynamicAttr T
		ON EEI.ID = T.EntityInfoID
	ORDER BY 
		T.EntityInfoID,
		T.OrderID
	
	
	--行列PIVOT过程
	DECLARE @QuestionList nvarchar(max);
	SELECT @QuestionList = STUFF(
		(
			SELECT 
				', ' + quotename(AttrCode) 
			FROM #myCustomEntityAttrValueTable 
			GROUP BY 
				AttrCode, 
				OrderID
			ORDER BY 
				OrderID
			FOR XML PATH('')
		), 
		1, 
		2, 
		''
	);
	
	--行列PIVOT过程SQL语句
	DECLARE @qry nvarchar(max);
	SET @qry = 'SELECT ID, EntityDefID, EntityName, EntityCode, ProcessGUID, ' 
		+ @QuestionList 
		+ ' FROM (
					SELECT ID, EntityDefID, EntityName, EntityCode, ProcessGUID, AttrCode, Value 
					FROM #myCustomEntityAttrValueTable 
			) UP
		PIVOT (
			MAX(Value) 
			FOR AttrCode IN (' + @QuestionList + ')
		) pvt
		ORDER BY 
			ID;';

	--执行输出
	print @qry
	EXEC sp_executesql @qry;


	--7. 销毁临时表
	DROP TABLE #myCustomEntityAttrValueTable 


END
GO
/****** Object:  StoredProcedure [dbo].[pr_eav_EntityAttrValuePivotGet]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_eav_EntityAttrValuePivotGet]
    @entityInfoID	int = 0		--表单实例ID 
AS


BEGIN

	SET NOCOUNT ON
	
	--判断有没有传入MatTypeID
	IF (@entityInfoID = 0)
	BEGIN
		DECLARE @error int, @message varchar(4000)
		SELECT @error = ERROR_NUMBER()
			, @message = ERROR_MESSAGE();
		RAISERROR ('无效的@entityInfoID！查询失败: %d: %s', 16, 1, @error, @message)
	END

	DECLARE @sql nvarchar(1000)
	DECLARE @countSql nvarchar(1000)
	DECLARE @query nvarchar(4000)
	DECLARE @rowsCount	int

	--组建查询用到的SQL语句
	--1. 基本语句
	SET @sql = 'SELECT ID FROM EavEntityInfo WHERE ID=' + CONVERT(varchar, @entityInfoID)
	SET @countSql = 'SELECT @total=COUNT(1) FROM EavEntityInfo WHERE ID=' + CONVERT(varchar, @entityInfoID)
    
    --3. 获取总记录数，如果总记录数为0，则返回
	DECLARE @params nvarchar(500)
	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @countSql, @params, @total=@rowsCount OUTPUT

	IF (@rowsCount = 0)
	BEGIN
		--选取空记录返回，用于Dapper构造动态类型对象
		SELECT
			EEI.ID,
			EEI.EntityDefID,
			EED.EntityName,
			EEI.ProcessGUID,
			EEI.CreatedUserName,
			EEI.CreatedUserID,
			EEI.CreatedDatetime
		FROM EavEntityInfo EEI
		INNER JOIN EavEntityDef EED
			ON EED.ID = EEI.EntityDefID
		WHERE EEI.ID = -1000

		RETURN
	END
	
	--4. 获取实体ID表
	DECLARE @tblEntityInfo TABLE(ID INT)

	INSERT INTO @tblEntityInfo
	EXEC sp_executesql @sql;
		
	--5. 查询是否有动态扩展属性，如果没有，返回主表记录
	DECLARE @tblDynamicAttr	TABLE(
		EntityInfoID		int,
		TblName		nvarchar(50),
		AttrID		int,
		AttrCode	varchar(30),
		AttrName	nvarchar(50),
		AttrDataType	int,
		OrderID			int,
		Value		nvarchar(4000)
	)
	
	--将动态属性写入临时表
	INSERT INTO @tblDynamicAttr
	SELECT * FROM(
		SELECT
			EEAI.EntityInfoID
			,'EavEntityAttrInt' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAI.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrInt EEAI
			ON EEA.ID = EEAI.AttrID
		UNION ALL
		SELECT
			EEAN.EntityInfoID
			,'EavEntityAttrDecimal' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAN.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDecimal EEAN
			ON EEA.ID = EEAN.AttrID
		UNION ALL
		SELECT
			EEAV.EntityInfoID
			,'EavEntityAttrVarchar' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAV.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrVarchar EEAV
			ON EEA.ID = EEAV.AttrID
		UNION ALL
		SELECT
			EEAD.EntityInfoID
			,'EavEntityAttrDatetime' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAD.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrDatetime EEAD
			ON EEA.ID = EEAD.AttrID
		UNION ALL
		SELECT
			EEAT.EntityInfoID
			,'EavEntityAttrText' as TblName
			,EEA.ID as AttrID
			,EEA.AttrCode
			,EEA.AttrName
			,EEA.AttrDataType
			,EEA.OrderID
			,CONVERT(nvarchar, EEAT.Value) as Value
			FROM EavEntityAttribute EEA
			INNER JOIN EavEntityAttrText EEAT
			ON EEA.ID = EEAT.AttrID
	) T
	WHERE T.EntityInfoID IN (SELECT ID FROM @tblEntityInfo) 
	ORDER BY 
		T.EntityInfoID, 
		T.OrderID

	DECLARE @dynamicRowsCount int
	SELECT @dynamicRowsCount = COUNT(1) FROM @tblDynamicAttr
	
	print 'dynamic rows count:' 
	print @dynamicRowsCount
	
	--如果没有动态扩展属性，则返回主表记录
	IF (@dynamicRowsCount = 0)
	BEGIN
		SELECT 
			EEI.ID, 
			EED.EntityName
		FROM EavEntityInfo EEI
		INNER JOIN EavEntityDef EED
			ON EED.ID = EEI.EntityDefID
		WHERE EEI.ID IN (
			SELECT ID FROM @tblEntityInfo) 

		RETURN
	END

	--6. 返回动态属性值的列表
	--物料自定义属性表的临时表
	--用于先将物料扩展属性填充到表里
	CREATE TABLE #myCustomEntityAttrValueTable
	(
		[ID] [int] NULL,
		[EntityDefID] [int] NULL,
		[EntityName] [nvarchar] (100) NULL,
		[EntityCode] [varchar](100) NULL,
		[AttrName] [nvarchar] (100) NULL,
		[AttrCode] [varchar](100) NULL,
		[OrderID]	[int] NULL,
		[Value] [nvarchar](max) NULL
	)

	--插入行记录到临时表
	INSERT INTO #myCustomEntityAttrValueTable
	SELECT 
		EEI.ID, 
		EEI.EntityDefID,
		EED.EntityName,
		EED.EntityCode,
		T.AttrName,
		T.AttrCode,
		T.OrderID,
		T.Value
	FROM EavEntityInfo EEI
	INNER JOIN EavEntityDef EED
		ON EED.ID = EEI.EntityDefID
	INNER JOIN EavEntityAttribute EEA
		ON EEA.EntityDefID = EED.ID
	INNER JOIN @tblEntityInfo T1
		ON T1.ID = EEI.ID
	LEFT JOIN @tblDynamicAttr T
		ON EEI.ID = T.EntityInfoID
	ORDER BY 
		T.EntityInfoID,
		T.OrderID
	
	
	--行列PIVOT过程
	DECLARE @QuestionList nvarchar(max);
	SELECT @QuestionList = STUFF(
		(
			SELECT 
				', ' + quotename(AttrCode) 
			FROM #myCustomEntityAttrValueTable 
			GROUP BY 
				AttrCode, 
				OrderID
			ORDER BY 
				OrderID
			FOR XML PATH('')
		), 
		1, 
		2, 
		''
	);
	
	--行列PIVOT过程SQL语句
	DECLARE @qry nvarchar(max);
	SET @qry = 'SELECT ID, EntityDefID, EntityName, EntityCode, ProcessGUID, ' 
		+ @QuestionList 
		+ ' FROM (
					SELECT ID, EntityDefID, EntityName, EntityCode, ProcessGUID, AttrCode, Value 
					FROM #myCustomEntityAttrValueTable 
			) UP
		PIVOT (
			MAX(Value) 
			FOR AttrCode IN (' + @QuestionList + ')
		) pvt
		ORDER BY 
			ID;';

	--执行输出
	print @qry
	EXEC sp_executesql @qry;


	--7. 销毁临时表
	DROP TABLE #myCustomEntityAttrValueTable 


END
GO
/****** Object:  Table [dbo].[WfTasks]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfTasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityInstanceID] [int] NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ActivityGUID] [varchar](100) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[TaskType] [smallint] NOT NULL,
	[TaskState] [smallint] NOT NULL,
	[EntrustedTaskID] [int] NULL,
	[AssignedToUserID] [varchar](50) NOT NULL,
	[AssignedToUserName] [nvarchar](50) NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[EndedDateTime] [datetime] NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NULL,
 CONSTRAINT [PK_SSIP_WfTasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WfTasks] ON
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1013, 1160, 309, N'SamplePrice', N'100', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A627014D939C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[WfTasks] OFF
/****** Object:  View [dbo].[vw_EavEntityAttributeSchema]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_EavEntityAttributeSchema]
AS
SELECT     ID, EntityDefID, AttrName, AttrCode, AttrDataType, OrderID
FROM         dbo.EavEntityAttribute
WHERE     (StorageType = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EavEntityAttribute"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EavEntityAttributeSchema'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EavEntityAttributeSchema'
GO
/****** Object:  View [dbo].[vwWfActivityInstanceTasks]    Script Date: 06/17/2016 08:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwWfActivityInstanceTasks]
AS
SELECT     dbo.WfTasks.ID AS TaskID, dbo.WfActivityInstance.AppName, dbo.WfActivityInstance.AppInstanceID, dbo.WfActivityInstance.ProcessGUID, 
                      dbo.WfProcessInstance.Version, dbo.WfTasks.ProcessInstanceID, dbo.WfActivityInstance.ActivityGUID, dbo.WfTasks.ActivityInstanceID, 
                      dbo.WfActivityInstance.ActivityName, dbo.WfActivityInstance.ActivityType, dbo.WfActivityInstance.WorkItemType, 
                      dbo.WfActivityInstance.CreatedByUserID AS PreviousUserID, dbo.WfActivityInstance.CreatedByUserName AS PreviousUserName, 
                      dbo.WfActivityInstance.CreatedDateTime AS PreviousDateTime, dbo.WfTasks.TaskType, dbo.WfTasks.EntrustedTaskID, dbo.WfTasks.AssignedToUserID, 
                      dbo.WfTasks.AssignedToUserName, dbo.WfTasks.CreatedDateTime, dbo.WfTasks.LastUpdatedDateTime, dbo.WfTasks.EndedDateTime, 
                      dbo.WfTasks.EndedByUserID, dbo.WfTasks.EndedByUserName, dbo.WfTasks.TaskState, dbo.WfActivityInstance.ActivityState, dbo.WfTasks.RecordStatusInvalid, 
                      dbo.WfProcessInstance.ProcessState, dbo.WfActivityInstance.ComplexType, dbo.WfActivityInstance.MIHostActivityInstanceID, 
                      dbo.WfProcessInstance.AppInstanceCode, dbo.WfProcessInstance.ProcessName, dbo.WfProcessInstance.CreatedByUserName, 
                      dbo.WfProcessInstance.CreatedDateTime AS PCreatedDateTime, CASE WHEN MIHostActivityInstanceID IS NULL THEN ActivityState ELSE
                          (SELECT     ActivityState
                            FROM          dbo.WfActivityInstance a
                            WHERE      a.ID = dbo.WfActivityInstance.MIHostActivityInstanceID) END AS MiHostState
FROM         dbo.WfActivityInstance INNER JOIN
                      dbo.WfTasks ON dbo.WfActivityInstance.ID = dbo.WfTasks.ActivityInstanceID INNER JOIN
                      dbo.WfProcessInstance ON dbo.WfActivityInstance.ProcessInstanceID = dbo.WfProcessInstance.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[53] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "WfActivityInstance"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "WfTasks"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "WfProcessInstance"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3930
         Alias = 2145
         Table = 2595
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwWfActivityInstanceTasks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwWfActivityInstanceTasks'
GO
/****** Object:  Default [DF_EavEntityDef_CreatedDate]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[EavEntityDef] ADD  CONSTRAINT [DF_EavEntityDef_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_WfTransitionInstance_IsBackwardFlying]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfTransitionInstance] ADD  CONSTRAINT [DF_WfTransitionInstance_IsBackwardFlying]  DEFAULT ((0)) FOR [FlyingType]
GO
/****** Object:  Default [DF_SSIP_WfTransitionInstance_ConditionParseResult]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfTransitionInstance] ADD  CONSTRAINT [DF_SSIP_WfTransitionInstance_ConditionParseResult]  DEFAULT ((0)) FOR [ConditionParseResult]
GO
/****** Object:  Default [DF_SSIP_WfTransitionInstance_CreatedDateTime]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfTransitionInstance] ADD  CONSTRAINT [DF_SSIP_WfTransitionInstance_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_SSIP_WfTransitionInstance_RecordStatusInvalid]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfTransitionInstance] ADD  CONSTRAINT [DF_SSIP_WfTransitionInstance_RecordStatusInvalid]  DEFAULT ((0)) FOR [RecordStatusInvalid]
GO
/****** Object:  Default [DF_WfProcessInstance_Version]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_WfProcessInstance_Version]  DEFAULT ((1)) FOR [Version]
GO
/****** Object:  Default [DF_SSIP_WfProcessInstance_State]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_SSIP_WfProcessInstance_State]  DEFAULT ((0)) FOR [ProcessState]
GO
/****** Object:  Default [DF_WfProcessInstance_ParentProcessInstanceID]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_WfProcessInstance_ParentProcessInstanceID]  DEFAULT ((0)) FOR [ParentProcessInstanceID]
GO
/****** Object:  Default [DF_WfProcessInstance_InvokedActivityInstanceID]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_WfProcessInstance_InvokedActivityInstanceID]  DEFAULT ((0)) FOR [InvokedActivityInstanceID]
GO
/****** Object:  Default [DF_SSIP_WfProcessInstance_CreatedDateTime]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_SSIP_WfProcessInstance_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_SSIP_WfProcessInstance_RecordStatus]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcessInstance] ADD  CONSTRAINT [DF_SSIP_WfProcessInstance_RecordStatus]  DEFAULT ((0)) FOR [RecordStatusInvalid]
GO
/****** Object:  Default [DF_WfProcess_Version]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcess] ADD  CONSTRAINT [DF_WfProcess_Version]  DEFAULT ((1)) FOR [Version]
GO
/****** Object:  Default [DF_WfProcess_IsUsing]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcess] ADD  CONSTRAINT [DF_WfProcess_IsUsing]  DEFAULT ((0)) FOR [IsUsing]
GO
/****** Object:  Default [DF_SSIP-WfPROCESS_CreatedDateTime]    Script Date: 06/17/2016 08:20:23 ******/
ALTER TABLE [dbo].[WfProcess] ADD  CONSTRAINT [DF_SSIP-WfPROCESS_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF__HrsLeave__LeaveT__1BFD2C07]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[HrsLeave] ADD  DEFAULT ((0)) FOR [LeaveType]
GO
/****** Object:  Default [DF_SSIP_WfActivityInstance_State]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_SSIP_WfActivityInstance_State]  DEFAULT ((0)) FOR [ActivityState]
GO
/****** Object:  Default [DF_WfActivityInstance_WorkItemType]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_WfActivityInstance_WorkItemType]  DEFAULT ((0)) FOR [WorkItemType]
GO
/****** Object:  Default [DF_SSIP_WfActivityInstance_CanInvokeNextActivity]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_SSIP_WfActivityInstance_CanInvokeNextActivity]  DEFAULT ((0)) FOR [CanRenewInstance]
GO
/****** Object:  Default [DF_SSIP_WfActivityInstance_TokensRequired]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_SSIP_WfActivityInstance_TokensRequired]  DEFAULT ((1)) FOR [TokensRequired]
GO
/****** Object:  Default [DF_SSIP_WfActivityInstance_CreatedDateTime]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_SSIP_WfActivityInstance_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_SSIP_WfActivityInstance_RecordStatusInvalid]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance] ADD  CONSTRAINT [DF_SSIP_WfActivityInstance_RecordStatusInvalid]  DEFAULT ((0)) FOR [RecordStatusInvalid]
GO
/****** Object:  Default [DF_EavEntityAttribute_StorageType]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[EavEntityAttribute] ADD  CONSTRAINT [DF_EavEntityAttribute_StorageType]  DEFAULT ((1)) FOR [StorageType]
GO
/****** Object:  Default [DF_EavEntityAttribute_IsMandatory]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[EavEntityAttribute] ADD  CONSTRAINT [DF_EavEntityAttribute_IsMandatory]  DEFAULT ((0)) FOR [IsMandatory]
GO
/****** Object:  Default [DF_SSIP_WfTasks_IsCompleted]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfTasks] ADD  CONSTRAINT [DF_SSIP_WfTasks_IsCompleted]  DEFAULT ((0)) FOR [TaskState]
GO
/****** Object:  Default [DF_SSIP_WfTasks_CreatedDateTime]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfTasks] ADD  CONSTRAINT [DF_SSIP_WfTasks_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO
/****** Object:  Default [DF_SSIP_WfTasks_RecordStatusInvalid]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfTasks] ADD  CONSTRAINT [DF_SSIP_WfTasks_RecordStatusInvalid]  DEFAULT ((0)) FOR [RecordStatusInvalid]
GO
/****** Object:  ForeignKey [CONS_FK_EavEntityInfo_EntityDefID]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[EavEntityInfo]  WITH CHECK ADD  CONSTRAINT [CONS_FK_EavEntityInfo_EntityDefID] FOREIGN KEY([EntityDefID])
REFERENCES [dbo].[EavEntityDef] ([ID])
GO
ALTER TABLE [dbo].[EavEntityInfo] CHECK CONSTRAINT [CONS_FK_EavEntityInfo_EntityDefID]
GO
/****** Object:  ForeignKey [FK_WfActivityInstance_ProcessInstanceID]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfActivityInstance]  WITH NOCHECK ADD  CONSTRAINT [FK_WfActivityInstance_ProcessInstanceID] FOREIGN KEY([ProcessInstanceID])
REFERENCES [dbo].[WfProcessInstance] ([ID])
GO
ALTER TABLE [dbo].[WfActivityInstance] CHECK CONSTRAINT [FK_WfActivityInstance_ProcessInstanceID]
GO
/****** Object:  ForeignKey [CONST_FK_EavEntityAttribute_EntityDefID]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[EavEntityAttribute]  WITH CHECK ADD  CONSTRAINT [CONST_FK_EavEntityAttribute_EntityDefID] FOREIGN KEY([EntityDefID])
REFERENCES [dbo].[EavEntityDef] ([ID])
GO
ALTER TABLE [dbo].[EavEntityAttribute] CHECK CONSTRAINT [CONST_FK_EavEntityAttribute_EntityDefID]
GO
/****** Object:  ForeignKey [FK_WfTasks_ActivityInstanceID]    Script Date: 06/17/2016 08:20:25 ******/
ALTER TABLE [dbo].[WfTasks]  WITH NOCHECK ADD  CONSTRAINT [FK_WfTasks_ActivityInstanceID] FOREIGN KEY([ActivityInstanceID])
REFERENCES [dbo].[WfActivityInstance] ([ID])
GO
ALTER TABLE [dbo].[WfTasks] CHECK CONSTRAINT [FK_WfTasks_ActivityInstanceID]
GO
