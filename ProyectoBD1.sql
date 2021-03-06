
/*Nombre(1):  Victor Benzant       |    Matricula(1): 16-SIIT-1-017    |    Seccion(1): 0541*/
/*Nombre(2):  Anyi Paola Mendez    |    Matricula(2): 16-SIIT-1-044    |    Seccion(2): 0541*/
/*Nombre(3):  Emely Aquino         |    Matricula(3): 16-SIIT-1-040    |    Seccion(3): 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoBD1]    Script Date: 06/04/2018 14:00:26 ******/
CREATE DATABASE [ProyectoBD1]

USE [ProyectoBD1]
GO
/****** Object:  Table [dbo].[Despachos]    Script Date: 06/04/2018 14:00:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despachos](
	[Numero] [int] NOT NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Despachos] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Directores]    Script Date: 06/04/2018 14:00:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directores](
	[DNI] [varchar](50) NOT NULL,
	[NombreApellido] [nvarchar](50) NULL,
	[DNIJefe] [varchar](50) NULL,
	[Despacho] [int] NULL,
 CONSTRAINT [PK_Directores] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (1, 1234567)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (2, 7654321)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (3, 1478523)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (4, 6985214)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (5, 7895236)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (6, 4215687)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (7, 1258963)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (8, 582589)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (9, 465215)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (10, 741469)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'1', N'Robert T.', N'1', 1)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'10', N'Ezequiel R.', N'10', 10)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'2', N'Graciela M.', N'2', 2)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'3', N'Fernandito P.', N'3', 3)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'4', N'Hansel D.', N'4', 4)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'5', N'Xiomara N.', N'5', 5)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'6', N'Sariel R.', N'6', 6)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'7', N'Isabel F.', N'7', 7)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'8', N'Hector T.', N'8', 8)
INSERT [dbo].[Directores] ([DNI], [NombreApellido], [DNIJefe], [Despacho]) VALUES (N'9', N'Michelle G.', N'9', 9)
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Despachos] FOREIGN KEY([Despacho])
REFERENCES [dbo].[Despachos] ([Numero])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Despachos]
GO
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Directores] FOREIGN KEY([DNIJefe])
REFERENCES [dbo].[Directores] ([DNI])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Directores]
GO
USE [master]
GO
ALTER DATABASE [ProyectoBD1] SET  READ_WRITE 
GO
