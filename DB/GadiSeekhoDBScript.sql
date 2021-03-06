USE [master]
GO
/****** Object:  Database [GadiSeekho]    Script Date: 8/12/2018 1:30:31 PM ******/
CREATE DATABASE [GadiSeekho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GadiSeekho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GadiSeekho.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GadiSeekho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GadiSeekho_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GadiSeekho] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GadiSeekho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GadiSeekho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GadiSeekho] SET ARITHABORT OFF 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GadiSeekho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GadiSeekho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GadiSeekho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GadiSeekho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GadiSeekho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GadiSeekho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GadiSeekho] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GadiSeekho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GadiSeekho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GadiSeekho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GadiSeekho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GadiSeekho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GadiSeekho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GadiSeekho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GadiSeekho] SET  MULTI_USER 
GO
ALTER DATABASE [GadiSeekho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GadiSeekho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GadiSeekho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GadiSeekho] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GadiSeekho] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GadiSeekho] SET QUERY_STORE = OFF
GO
USE [GadiSeekho]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GadiSeekho]
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alert](
	[AlertId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[AlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetPermissions]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetPermissions](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](140) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRolePermissions]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRolePermissions](
	[RoleId] [nvarchar](128) NOT NULL,
	[PermissionId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetRolePermissions] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserPermissions]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserPermissions](
	[UserId] [nvarchar](128) NOT NULL,
	[PermissionId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[PersonnelId] [int] NULL,
	[Name] [varchar](100) NULL,
	[CentreId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsersAlertSchedule]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsersAlertSchedule](
	[AspnetUsersAlertScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[AspNetUsersId] [nvarchar](128) NOT NULL,
	[AlertId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsersAlertSchedule] PRIMARY KEY CLUSTERED 
(
	[AspnetUsersAlertScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[CityMileage] [varchar](100) NULL,
	[ARAIMileage] [varchar](100) NULL,
	[FuelType] [varchar](100) NOT NULL,
	[Engine] [int] NOT NULL,
	[MaxPower] [varchar](100) NULL,
	[MaxTorque] [varchar](100) NULL,
	[Seating] [int] NULL,
	[EngineDescription] [varchar](500) NOT NULL,
	[TransmissionType] [varchar](100) NULL,
	[CargoVolume] [varchar](100) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarType]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarType](
	[CarTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
 CONSTRAINT [PK_CarType] PRIMARY KEY CLUSTERED 
(
	[CarTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentCode] [varchar](100) NOT NULL,
	[StudentName] [varchar](500) NULL,
	[FileName] [varchar](4000) NOT NULL,
	[Description] [varchar](1000) NULL,
	[Location] [varchar](max) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[DownloadedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[BasePath] [varchar](1000) NOT NULL,
	[IsEnquiry] [bit] NOT NULL,
	[IsCounselling] [bit] NOT NULL,
	[IsAdmission] [bit] NOT NULL,
	[IsExpense] [bit] NOT NULL,
	[IsTrainer] [bit] NOT NULL,
	[IsFixAsset] [bit] NOT NULL,
	[IsBankDepositeDocument] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[DriverId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[DrivingLicenceNumber] [varchar](500) NOT NULL,
	[IssuedDate] [date] NOT NULL,
	[ValidTill] [date] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Mobile] [bigint] NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NOT NULL,
	[Address3] [varchar](500) NULL,
	[Address4] [varchar](500) NULL,
	[Pincode] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverFeedback]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverFeedback](
	[DriverFeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[HasYourDrivingInstructorEverBeenLateForALesson] [varchar](100) NULL,
	[HasYourDrivingInstructorEverMadeYouFeelUncomfortable] [varchar](100) NULL,
	[WouldYouRecommendThisDrivingSchoolToFriends] [varchar](100) NULL,
	[DoYouThinkThisSyllabusWillMakeYouASaferDriver] [varchar](100) NULL,
	[Comment] [varchar](max) NULL,
	[Rating] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_DriverFeedback] PRIMARY KEY CLUSTERED 
(
	[DriverFeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrivingSchool]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrivingSchool](
	[DrivingSchoolId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NULL,
	[Address3] [varchar](500) NULL,
	[Address4] [varchar](500) NULL,
	[Pincode] [int] NOT NULL,
	[Mobile] [bigint] NOT NULL,
	[Telephone] [varchar](100) NULL,
	[EmailId] [varchar](100) NULL,
 CONSTRAINT [PK_DrivingSchool] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrivingSchoolCar]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrivingSchoolCar](
	[DrivingSchoolCarId] [int] NOT NULL,
	[DrivingSchoolId] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
 CONSTRAINT [PK_DrivingSchoolCar] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolCarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Forenames] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Address1] [nvarchar](100) NOT NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Postcode] [nvarchar](12) NOT NULL,
	[Telephone] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[NINumber] [varchar](10) NULL,
	[BankAccountNumber] [varchar](10) NULL,
	[BankSortCode] [varchar](6) NULL,
	[BankAccountName] [nvarchar](100) NULL,
	[BankAddress1] [nvarchar](100) NULL,
	[BankAddress2] [nvarchar](100) NULL,
	[BankAddress3] [nvarchar](100) NULL,
	[BankAddress4] [nvarchar](100) NULL,
	[BankPostcode] [nvarchar](12) NULL,
	[BankTelephone] [varchar](15) NULL,
	[Email] [varchar](256) NOT NULL,
 CONSTRAINT [PK_[Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 8/12/2018 1:30:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description]) VALUES (N'1', N'SuperUser', N'SuperUser')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'1', N'SuperUser', N'ApplicationRole')
GO
INSERT [dbo].[AspNetUserPermissions] ([UserId], [PermissionId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [CentreId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'superadmin@gadiseekho.com', 1, N'AKE8YmPQDYyVK65rkJk73JJp1Zy6fzDtABvuxihKa1Ksej+08LEGjiIS/iDKS/N3Tg==', N'e905150b-246a-478c-9d09-74e19072d875', NULL, 0, 0, NULL, 0, 0, N'superadmin@gadiseekho.com', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DrivingSchool] ON 
GO
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId]) VALUES (5, N'Test', N'Addresr', NULL, NULL, NULL, 421306, 8097537537, NULL, N'sanjayp@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[DrivingSchool] OFF
GO
ALTER TABLE [dbo].[AspNetRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRolePermission_AspNetPermissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[AspNetPermissions] ([Id])
GO
ALTER TABLE [dbo].[AspNetRolePermissions] CHECK CONSTRAINT [FK_AspNetRolePermission_AspNetPermissions]
GO
ALTER TABLE [dbo].[AspNetRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRolePermission_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRolePermissions] CHECK CONSTRAINT [FK_AspNetRolePermission_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserPermissions_AspNetPermissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[AspNetPermissions] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserPermissions] CHECK CONSTRAINT [FK_AspNetUserPermissions_AspNetPermissions]
GO
ALTER TABLE [dbo].[AspNetUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserPermissions_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserPermissions] CHECK CONSTRAINT [FK_AspNetUserPermissions_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUsersAlertSchedule]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsersAlertSchedule_Alert1] FOREIGN KEY([AlertId])
REFERENCES [dbo].[Alert] ([AlertId])
GO
ALTER TABLE [dbo].[AspNetUsersAlertSchedule] CHECK CONSTRAINT [FK_AspNetUsersAlertSchedule_Alert1]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentType] ([DocumentTypeId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
ALTER TABLE [dbo].[DriverFeedback]  WITH CHECK ADD  CONSTRAINT [FK_DriverFeedback_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([DriverId])
GO
ALTER TABLE [dbo].[DriverFeedback] CHECK CONSTRAINT [FK_DriverFeedback_Driver]
GO
ALTER TABLE [dbo].[DriverFeedback]  WITH CHECK ADD  CONSTRAINT [FK_DriverFeedback_DriverFeedback] FOREIGN KEY([DriverFeedBackId])
REFERENCES [dbo].[DriverFeedback] ([DriverFeedBackId])
GO
ALTER TABLE [dbo].[DriverFeedback] CHECK CONSTRAINT [FK_DriverFeedback_DriverFeedback]
GO
ALTER TABLE [dbo].[DrivingSchoolCar]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolCar_Car] FOREIGN KEY([CarId])
REFERENCES [dbo].[Car] ([CarId])
GO
ALTER TABLE [dbo].[DrivingSchoolCar] CHECK CONSTRAINT [FK_DrivingSchoolCar_Car]
GO
ALTER TABLE [dbo].[DrivingSchoolCar]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolCar_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DrivingSchoolCar] CHECK CONSTRAINT [FK_DrivingSchoolCar_DrivingSchool]
GO
USE [master]
GO
ALTER DATABASE [GadiSeekho] SET  READ_WRITE 
GO
