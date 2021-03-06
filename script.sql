USE [master]
GO
/****** Object:  Database [aspnet-ProductManagementMVC-20210917031303]    Script Date: 20.09.2021 02:54:22 ******/
CREATE DATABASE [aspnet-ProductManagementMVC-20210917031303]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-ProductManagementMVC-20210917031303.mdf', FILENAME = N'C:\Users\velig\source\repos\product-management-mvc-sample\ProductManagementMVC\App_Data\aspnet-ProductManagementMVC-20210917031303.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-ProductManagementMVC-20210917031303_log.ldf', FILENAME = N'C:\Users\velig\source\repos\product-management-mvc-sample\ProductManagementMVC\App_Data\aspnet-ProductManagementMVC-20210917031303_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-ProductManagementMVC-20210917031303].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET QUERY_STORE = OFF
GO
USE [aspnet-ProductManagementMVC-20210917031303]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [aspnet-ProductManagementMVC-20210917031303]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20.09.2021 02:54:22 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20.09.2021 02:54:22 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20.09.2021 02:54:22 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20.09.2021 02:54:22 ******/
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202109170018095_InitialCreate', N'ProductManagementMVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB43EA245BB0E6823A2DF656D012ED08952855A2D204437FD91EF693F617762851375E74B115DB19060CB1487EE7F0F023797878D87FFFFE67FCEB83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCD5FDF7CFFDDF8CCF11F8C8F79BD23560F5A927862DE511A1E5B566CDF611FC523DFB5A3200E16746407BE859CC03ADCDFFFC53A38B0304098806518E3F709A1AE8FD31FF0731A101B873441DE65E0602FE6DFA16496A21A57C8C771886C3C316FA2C0496C7A89085A621F137AF9713ACA9A99C689E722506986BD85692042028A28287CFC21C6331A0564390BE103F26E1F430CF516C88B31EFC87159BD6B9FF60F599FACB2610E6527310DFC9E800747DC4896D87C25539B8511C18C67606EFAC87A9D9A72625E3838FDF43EF0C000A2C0E3A917B1CA13F3B21071128757988EF286A30CF23C02B8AF41F4795445DC333AB7DB2B487538DA67FFED19D3C4A349842704273442DE9E7193CC3DD7FE033FDE069F31991C1DCC1747AF5FBE42CED1AB9FF1D1CB6A4FA1AF50AFF6013E0167421C816E7851F4DF34AC7A3B4B6C5834ABB4C9AC025C82F9611A97E8E11D264B7A0733E7F0B5699CBB0FD8C9BF70727D202E4C276844A3047E5E259E87E61E2ECAAD4699ECFF0D520F5FBE1A44EA15BA7797E9D00BF261E24430AFDE632F2D8DEFDC309B5EB5F1FEC4AB9D4781CF7ED7F995957E9A054964B3CE04DA2AB7285A625AD76E6C95E4ED446906353CAD73D4DDA736D354A6B7B22AEBD02A332117B1E9D990EBFBB4723B33EE240C61F0526A318B3411AE61D71A0930400A45E5924C075DC944A093FFE7B5F1CC47AE37C0E2D8410A38280B37F271D1CBB701501191DE3ADFA03886B5C1F91DC5770DAAC39F03A83EC3761201656714F9E1934BBBB90B08BE4AFC399B099B9335D8D0DC7E0DCE914D83E88CB0566BE3BD0BECCF4142CF88738A28FE40ED1C90FDBC75FDEE0083A87362DB388ECF81CCD89906E07FE78017841E1DF686632BD5B69D93A9875C5FED9D086BEAA7BC6AE9A1A86B485E8AA69ACA536952F55DB074493755F3AA7A55B31AADAAF26A7D556560DD34E535F58AA6155AF5CC6A0DE6FBA52334BCF397C2EEBEF7B7DEE6AD5B0B2A669CC10A897FC30447B08C393788521C917204BAAC1BDB7016D2E163429F7C6F4A257D445E32B4A8956643BA080C3F1B52D8DD9F0DA99AF0F9DE759857D2E148945706F84EF5D5A7ADF6392768B6E9E950EBE6A6856F660DD04D9793380E6C379D058A60180F65D4F5071FCE688F6B64BD116323D03120BACBB63CF8027D3345525D9353EC618A8D133B0B164E516C2347362374C8E9A158BEA32A142B632475E57E926402D371C41A2176088A61A6BA84CAD3C225B61B22AFD54A42CB8E5B18EB7B21432C39C521264C60AB25BA085787449802851C6150DA2C34B62A8C6B26A2C66BD58D799B0B5B8EBB14A9D808275B7C670D2FB9FFF624C46CB6D806C8D96C922E0A68C37BDB20283FAB7425807870D935820A27260D41B94BB51182D62DB60582D64DF2EC089A1D51BB8EBF705EDD357AD60FCA9BDFD61BCDB5056ED6ECB163D4CC7C4F6843A1058E647A9ECE59217EA08AC319E8C9CF67317775458A30F019A6F5904DE9EF2AFD50AB19442451136049B416507E3128014913AA8772792CAF513BEE45F480CDE36E8DB07CED17602B1C90B1AB17A4958AFA6B54919C9D4E1F45CF0A364824EF7458A8E02808212E5EF58E77308A2E2E2B1BA68B2FDCC71BAE748C0F4683815A3C578D91F2CE0C6EA59C9AED565239647D5CB2B5AC24B84F1A2BE59D19DC4A9CA3ED465238053DDC82B54C54DFC2079A6C79A4A3D86D8AB2B1952550F10F634B936935BE4461E8926525F38A7F316659DAD5F4C5AC7F1A929F615876ACC8462AB42D24D120424B2C948268D0F4DC8D627A8A289A2316E7993ABE544DB9B76A96FF5C6475FB940731DF07F2DAECEF227CA6BDCEAF6DBAB257C2C1CEA1ABAC61DA6BAC2082BAB9C152E290872245087F1A78894FF49E96BE757691576D9F7D9111C696A0BFE449496693FCDDFA18741A2179760C3D5A8547B3FA88E9217476CFFDD1AAE5753EAA1E250F5955517461ACAD8DA0CEB5596DD444F7B1FFA0B5223CCD4CE3392B5500FEA9274625ED4102AB947547AD67A65431EB25DD1185F4932AA450D443CB6A92494DC96AC14A781A8BAA6B749720A79554D1E5D2EEC88A04932AB4A278056C85CE62597754450E4A155851DC1DBB4C481157D31DDECBB4879AF537B3EC00BCDE6EA6C1789AA57198CDB072CF5F05AA7CEE89C56FF22530FE7D2769A53D05AE4FAB2C00B21EAD3418FAB5A876555E5F8A1AEFF7F598B5FBEFDA72DF74FFAFC7EB47DE27A588741A14AB14D28B53A170FA1BF39358FB631CE9689655318DDC8CB0D53FC614FB23566134FBE24D3D17B3853DAF0084731738A659CE8779B87F70283CE3D99D2735561C3B9EE224AB7B57531FB30DA46F917B14D97728929329D6787652824A71EA0BE2E08789F957DAEA380D79B0BFD2CF7BC645FC81B85F1228B88D126C7C9393438749C3EFF0F0A350F4DBB37851D1DDE4177F7ECA9AEE19D7114CA763635F30F42AC35F7F67D14B9BACE91ADAACFCFAE2F9CEB6DA430625AA305B567FB73077E9206F16722D7FF0D1C38F7D5553BE4B580B51F1F66028BC414CA87B5BB00A96F65D81033F69FAAEA05F67D5EF0C56514DFBC6C025FDC1C41706DD97A1BCE516F721C5C969134B526AE7D60CEDB5D235B7BD374989DC6B4D743959BB07DCA009D9EBB928CF2CD179B0AD5391C73C18F63679FFE4C9CBBB92AF5C3AEDDB4D53DE646672C35DD3FF2A21790752E8142941DB4F3BDE34D774A1E01DCFDDEC975CBC6364E3DBFCF65388374D365D8078C7C9D62B5178C7B8B6ADFD73CB4CEBBC856E3DED57CE60D25CE9A8A2C86D69BD59C81D8EFFF30048907994D96B4C751E994E584916ADC0B28A5EA83E814D142C4D1C49AE54A3596CBFBEF20DBFB1B3BC4EB3584DDA67936CBEFE37CAE6759A656B9229B79190AC4C67542589B7AC634D9955CF2901B9D693967CF7369FB5F17EFE39E51B0F6294DAECD1DC2E3F9FF4E2414C32E4D4E9914E2C5F14C3DE59F9B71D61FF8EDD6509C1FEA54782EDDAAE59D4B9208B20DFBC058DF22A4284E61253E4C0967A125177816C0AC52C009D3E274F837AEC1A648E9D0B729DD030A1D065ECCFBD5AC08B39014DF2D39CE9BACEE3EB90FD8A87E802A8E9B2C0FD35799BB89E53E87DAE880969209877C1C3BD6C2C290BFB2E1F0BA4AB807404E2E62B9CA25BEC871E80C5D76486EEF12ABA01FDDEE125B21FCB08A00EA47D20EA661F9FBA6819213FE618657BF8091C76FC8737FF0157403132E2540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'63e3e1e5-4cb3-4bbb-9282-39259ab0b582', N'admin@admin.com', 0, N'AKclO4v1gO68XFtKuCWTSdYG8drMt37nwUtXeCCwtoRS3qKxSEiisiPRuIfqLx/MFA==', N'b8cb4112-9960-4607-b224-cadd5f5a5d54', NULL, 0, 0, NULL, 1, 0, N'admin@admin.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b3799282-c0b6-408e-a64f-a06538fec3f9', N'user@user.com', 0, N'AALrSj+zXOTcQ5ZAuD+sNCTdHmuTJj4Ev+lerIs5xUFHGoutw7s4YE5q9+KXSXIDFA==', N'1926d654-ef68-4f0b-961f-35a26d8d0c74', NULL, 0, 0, NULL, 1, 0, N'user@user.com')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (25, N'Product1', 324.0000, 212)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (26, N'Product2', 312.0000, 543)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (27, N'Product3', 76.0000, 23)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (28, N'Product4', 786.0000, 633)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (29, N'Product5', 696.0000, 482)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (30, N'Product6', 493.0000, 9392)
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [Stock]) VALUES (32, N'Product7', 4395.0000, 381)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20.09.2021 02:54:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 20.09.2021 02:54:22 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 20.09.2021 02:54:22 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 20.09.2021 02:54:22 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 20.09.2021 02:54:22 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20.09.2021 02:54:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddProduct] 
	@ProductName varchar(50),
	@Price money,
	@Stock int
AS

BEGIN

	INSERT INTO Products VALUES(@ProductName, @Price, @Stock)

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct] 
	@Id int
AS

BEGIN

	DELETE FROM Products WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProducts]
AS

BEGIN

	SELECT * FROM Products
   
END
GO
/****** Object:  StoredProcedure [dbo].[GetProduct]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProduct]
@Id int
AS

BEGIN

	SELECT * FROM Products WHERE Id = @Id
   
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 20.09.2021 02:54:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProduct] 
	@Id int,
	@ProductName varchar(50),
	@Price money,
	@Stock int
AS

BEGIN

	UPDATE Products SET ProductName = @ProductName, Price = @Price, Stock = @Stock WHERE Id = @Id

END
GO
USE [master]
GO
ALTER DATABASE [aspnet-ProductManagementMVC-20210917031303] SET  READ_WRITE 
GO
