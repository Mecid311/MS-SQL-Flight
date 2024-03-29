USE [DB]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Airlines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airports]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Airports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightName] [nvarchar](50) NOT NULL,
	[AirlinesId] [int] NOT NULL,
	[PlaneId] [int] NOT NULL,
	[DepartureId] [int] NOT NULL,
	[DepartureDate] [datetime] NOT NULL,
	[ArrivalId] [int] NOT NULL,
	[ArrivalDate] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planes]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaneName] [nvarchar](50) NOT NULL,
	[RealizeDate] [datetime] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[Pin] [int] NOT NULL,
	[PassengerSeatCount] [smallint] NOT NULL,
	[Luggage] [smallint] NULL,
 CONSTRAINT [PK_Planes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaneTechInfo]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaneTechInfo](
	[İd] [int] IDENTITY(1,1) NOT NULL,
	[TechReview] [nvarchar](50) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
	[ReviewDate] [datetime] NOT NULL,
	[ProblemTitle] [nvarchar](max) NOT NULL,
	[PlaneId] [int] NULL,
 CONSTRAINT [PK_PlaneTechInfo] PRIMARY KEY CLUSTERED 
(
	[İd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 08.10.2019 10:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Airlines] ON 

INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (1, N'Azal')
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (2, N'Turkish Airlines')
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (3, N'Ganja Airlines')
INSERT [dbo].[Airlines] ([Id], [Name]) VALUES (4, N'Milan Airlines')
SET IDENTITY_INSERT [dbo].[Airlines] OFF
SET IDENTITY_INSERT [dbo].[Airports] ON 

INSERT [dbo].[Airports] ([Id], [Name], [Country], [City]) VALUES (1, N'Heydər Əliyev Aİr ', N'Azərbaycan', N'Bakı')
INSERT [dbo].[Airports] ([Id], [Name], [Country], [City]) VALUES (2, N'İstanbul Air', N'Türkiyyə', N'İstanbul')
INSERT [dbo].[Airports] ([Id], [Name], [Country], [City]) VALUES (3, N'Qəbələ Air', N'Azərbaycan', N'Qəbələ')
INSERT [dbo].[Airports] ([Id], [Name], [Country], [City]) VALUES (4, N'Milan Air', N'İtaliya', N'Milan')
SET IDENTITY_INSERT [dbo].[Airports] OFF
SET IDENTITY_INSERT [dbo].[Flights] ON 

INSERT [dbo].[Flights] ([Id], [FlightName], [AirlinesId], [PlaneId], [DepartureId], [DepartureDate], [ArrivalId], [ArrivalDate], [StatusId]) VALUES (1, N'Bakı-Naxçıvan', 1, 1, 1, CAST(N'2019-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2019-02-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Flights] ([Id], [FlightName], [AirlinesId], [PlaneId], [DepartureId], [DepartureDate], [ArrivalId], [ArrivalDate], [StatusId]) VALUES (3, N'Bakı -İstanbul', 2, 2, 2, CAST(N'2019-03-03T21:00:00.000' AS DateTime), 2, CAST(N'2019-03-03T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Flights] ([Id], [FlightName], [AirlinesId], [PlaneId], [DepartureId], [DepartureDate], [ArrivalId], [ArrivalDate], [StatusId]) VALUES (4, N'İstanbul-Bakı', 2, 2, 2, CAST(N'2019-03-04T10:00:00.000' AS DateTime), 2, CAST(N'2019-03-04T12:00:00.000' AS DateTime), 3)
INSERT [dbo].[Flights] ([Id], [FlightName], [AirlinesId], [PlaneId], [DepartureId], [DepartureDate], [ArrivalId], [ArrivalDate], [StatusId]) VALUES (5, N'İstanbul-Ankara', 3, 3, 3, CAST(N'2019-04-05T16:00:00.000' AS DateTime), 4, CAST(N'2019-04-05T20:00:00.000' AS DateTime), 4)
INSERT [dbo].[Flights] ([Id], [FlightName], [AirlinesId], [PlaneId], [DepartureId], [DepartureDate], [ArrivalId], [ArrivalDate], [StatusId]) VALUES (6, N'BAKI - QƏBƏLƏ', 4, 4, 4, CAST(N'2019-06-08T17:00:00.000' AS DateTime), 3, CAST(N'2019-06-08T21:50:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Flights] OFF
SET IDENTITY_INSERT [dbo].[Planes] ON 

INSERT [dbo].[Planes] ([Id], [PlaneName], [RealizeDate], [ExpirationDate], [Pin], [PassengerSeatCount], [Luggage]) VALUES (1, N'Boing-747', CAST(N'2019-03-04T21:00:00.000' AS DateTime), CAST(N'2019-03-04' AS Date), 1558964, 500, 600)
INSERT [dbo].[Planes] ([Id], [PlaneName], [RealizeDate], [ExpirationDate], [Pin], [PassengerSeatCount], [Luggage]) VALUES (2, N'Airbus', CAST(N'2019-06-06T10:00:00.000' AS DateTime), CAST(N'2019-06-06' AS Date), 1655897, 600, 700)
INSERT [dbo].[Planes] ([Id], [PlaneName], [RealizeDate], [ExpirationDate], [Pin], [PassengerSeatCount], [Luggage]) VALUES (3, N'Buran', CAST(N'2019-07-05T12:00:00.000' AS DateTime), CAST(N'2019-07-06' AS Date), 1111111, 200, 50)
INSERT [dbo].[Planes] ([Id], [PlaneName], [RealizeDate], [ExpirationDate], [Pin], [PassengerSeatCount], [Luggage]) VALUES (4, N'Antonov', CAST(N'2012-05-04T00:00:00.000' AS DateTime), CAST(N'2012-07-05' AS Date), 1256897, 10, 7000)
SET IDENTITY_INSERT [dbo].[Planes] OFF
SET IDENTITY_INSERT [dbo].[PlaneTechInfo] ON 

INSERT [dbo].[PlaneTechInfo] ([İd], [TechReview], [Condition], [ReviewDate], [ProblemTitle], [PlaneId]) VALUES (1, N'LAnding Gear', N'okey', CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[PlaneTechInfo] ([İd], [TechReview], [Condition], [ReviewDate], [ProblemTitle], [PlaneId]) VALUES (6, N'Body', N'Okey', CAST(N'2018-03-06T00:00:00.000' AS DateTime), N'', 2)
INSERT [dbo].[PlaneTechInfo] ([İd], [TechReview], [Condition], [ReviewDate], [ProblemTitle], [PlaneId]) VALUES (8, N'Engine', N'Okey', CAST(N'2017-06-06T00:00:00.000' AS DateTime), N'', 3)
INSERT [dbo].[PlaneTechInfo] ([İd], [TechReview], [Condition], [ReviewDate], [ProblemTitle], [PlaneId]) VALUES (9, N'fuselage', N'Okey', CAST(N'2019-06-08T00:00:00.000' AS DateTime), N'', 4)
SET IDENTITY_INSERT [dbo].[PlaneTechInfo] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (1, N'Okey ')
INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (2, N'Good')
INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (3, N'Bad')
INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (4, N'Succesfull')
SET IDENTITY_INSERT [dbo].[Status] OFF
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Fk_Airlines_To_Flights] FOREIGN KEY([AirlinesId])
REFERENCES [dbo].[Airlines] ([Id])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Fk_Airlines_To_Flights]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Fk_Airports_To_Flights_ArrivalId] FOREIGN KEY([ArrivalId])
REFERENCES [dbo].[Airports] ([Id])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Fk_Airports_To_Flights_ArrivalId]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Fk_Airports_To_Flights_DepartureId] FOREIGN KEY([DepartureId])
REFERENCES [dbo].[Airports] ([Id])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Fk_Airports_To_Flights_DepartureId]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Fk_Plines_To_Flights] FOREIGN KEY([PlaneId])
REFERENCES [dbo].[Planes] ([Id])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Fk_Plines_To_Flights]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Fk_Status_To_Flights] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Fk_Status_To_Flights]
GO
ALTER TABLE [dbo].[PlaneTechInfo]  WITH CHECK ADD  CONSTRAINT [Fk_PlaneTechInfo_To_Planes] FOREIGN KEY([PlaneId])
REFERENCES [dbo].[Planes] ([Id])
GO
ALTER TABLE [dbo].[PlaneTechInfo] CHECK CONSTRAINT [Fk_PlaneTechInfo_To_Planes]
GO
