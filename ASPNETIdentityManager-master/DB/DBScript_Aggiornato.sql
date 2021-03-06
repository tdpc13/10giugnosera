
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giornate]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giornate](
	[Giorno] [date] NOT NULL,
	[Posti] [int] NOT NULL,
 CONSTRAINT [PK_Giornate] PRIMARY KEY CLUSTERED 
(
	[Giorno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazione]    Script Date: 10/06/2022 20:04:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazione](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [uniqueidentifier] NOT NULL,
	[Dal] [nvarchar](40) NOT NULL,
	[Al] [nvarchar](40) NOT NULL,
	[Persone] [int] NOT NULL,
	[Pacchetto] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Prenotazione] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'1d31a2a2-2abf-4305-8069-0d7be67dd471', 0, N'99f70833-c2e9-4f9c-90b0-bff8ccbf31e8', N'fleg@eam.it', 0, 1, NULL, N'FLEG@EAM.IT', N'PIPPO', N'AQAAAAEAACcQAAAAEJPYbr32Wv9uXJTHVDdNYDnRmiXytBV2bgwd1q8/S18TciMhYFWT5PNTwNZVc9U3yA==', NULL, 0, N'JLSZZNCQPPWXROEQKDTNUDUNEQY3XFNY', 0, N'Pippo', N'pippo', N'pluto')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'3602a19c-1e65-4f8c-afc9-62a3543a5dcf', 0, N'6fcb8bf8-9789-4500-84e1-15d7f162661f', N'admin@admin.it', 0, 1, NULL, N'ADMIN@ADMIN.IT', N'ADMIN', N'AQAAAAEAACcQAAAAEAVta6YkglL1rJXhCFL65gHtzyQHliWoGwVX3/wflOeCbWvCYJpmz7YkcEdwlCcn3g==', NULL, 0, N'NKTYXMCE66TNETHCH6GIFAGHO32SFHWI', 0, N'admin', N'amministratore', N'amministratore')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'8930ff32-bab2-4571-ad4e-0c61cf8c831a', 0, N'234b403c-08a8-4e13-a578-b36e251d36dc', N'filip@gmail.it', 0, 1, NULL, N'FILIP@GMAIL.IT', N'FLIPPER', N'AQAAAAEAACcQAAAAEDxzSXfnvbzUkYNGlyw+4uyPnBwYJq30AmhggWK3HRA5MFaAjaAGG1ohH5RQS+v+yQ==', NULL, 0, N'GCOWIGRAJTYBPTOOWNVWCPZ2W6RSRGEY', 0, N'Flipper', N'Filippo', N'LoNobile')
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-01' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-02' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-03' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-04' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-05' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-06' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-07' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-08' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-09' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-10' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-11' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-12' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-13' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-14' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-15' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-16' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-17' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-18' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-19' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-20' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-21' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-22' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-23' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-24' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-25' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-26' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-27' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-28' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-29' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-06-30' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-01' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-02' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-03' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-04' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-05' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-06' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-07' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-08' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-09' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-10' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-11' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-12' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-13' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-14' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-15' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-16' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-17' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-18' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-19' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-20' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-21' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-22' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-23' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-24' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-25' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-26' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-27' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-28' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-29' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-30' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-07-31' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-01' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-02' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-03' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-04' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-05' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-06' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-07' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-08' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-09' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-10' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-11' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-12' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-13' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-14' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-15' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-16' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-17' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-18' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-19' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-20' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-21' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-22' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-23' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-24' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-25' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-26' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-27' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-28' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-29' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-30' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-08-31' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-01' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-02' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-03' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-04' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-05' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-06' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-07' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-08' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-09' AS Date), 60)
GO
INSERT [dbo].[Giornate] ([Giorno], [Posti]) VALUES (CAST(N'2022-09-10' AS Date), 60)
GO
SET IDENTITY_INSERT [dbo].[Prenotazione] ON 
GO
INSERT [dbo].[Prenotazione] ([Id], [IdUser], [Dal], [Al], [Persone], [Pacchetto]) VALUES (1, N'3602a19c-1e65-4f8c-afc9-62a3543a5dcf', N'01/06/2022', N'06/06/2022', 3, N'gold')
GO
SET IDENTITY_INSERT [dbo].[Prenotazione] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [AspNetIdentityDB] SET  READ_WRITE 
GO
