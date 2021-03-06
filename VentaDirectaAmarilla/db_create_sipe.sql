USE [master]
GO
/****** Object:  Database [sipe]    Script Date: 12/04/2015 15:50:21 ******/
CREATE DATABASE [sipe] ON  PRIMARY 
( NAME = N'sipe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\sipe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sipi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\sipe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sipe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sipe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sipe] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [sipe] SET ANSI_NULLS OFF
GO
ALTER DATABASE [sipe] SET ANSI_PADDING OFF
GO
ALTER DATABASE [sipe] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [sipe] SET ARITHABORT OFF
GO
ALTER DATABASE [sipe] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [sipe] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [sipe] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [sipe] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [sipe] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [sipe] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [sipe] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [sipe] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [sipe] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [sipe] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [sipe] SET  DISABLE_BROKER
GO
ALTER DATABASE [sipe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [sipe] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [sipe] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [sipe] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [sipe] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [sipe] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [sipe] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [sipe] SET  READ_WRITE
GO
ALTER DATABASE [sipe] SET RECOVERY FULL
GO
ALTER DATABASE [sipe] SET  MULTI_USER
GO
ALTER DATABASE [sipe] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [sipe] SET DB_CHAINING OFF
GO
USE [sipe]
GO
/****** Object:  Table [dbo].[estadospedido]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estadospedido](
	[idEstadoPedido] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
 CONSTRAINT [estadospedido_pk] PRIMARY KEY CLUSTERED 
(
	[idEstadoPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estadopedido]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadopedido](
	[idEstadoPedido] [int] NOT NULL,
	[idPedido] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [estadopedido_pk] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC,
	[idEstadoPedido] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viapagos]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[viapagos](
	[idViaPago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NULL,
 CONSTRAINT [viapagos_pk] PRIMARY KEY CLUSTERED 
(
	[idViaPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[viapagos] ON
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (1, N'Cabal 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (2, N'Cabal 2P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (3, N'Cabal 3P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (4, N'Cabal 4P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (5, N'Cabal 5P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (6, N'Cabal 6P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (7, N'Cheque al día')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (8, N'CM FC. Mutual')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (9, N'Cheque diferido')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (10, N'Efectivo')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (11, N'Canje (reclamo)')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (12, N'MasterCard 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (13, N'MasterCard 12P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (14, N'MasterCard 2P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (15, N'MasterCard 3P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (16, N'MasterCard 4P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (17, N'MasterCard 5P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (18, N'MasterCard 6P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (19, N'Naranja 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (20, N'CM FC. Cliente')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (21, N'American Express 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (22, N'American Express 2P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (23, N'American Express 3P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (24, N'American Express 4P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (25, N'American Express 5P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (26, N'American Express 6P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (27, N'Sin cargo')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (28, N'Debito')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (29, N'Credencial 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (30, N'Nativa 1 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (31, N'Nativa 2 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (32, N'Nativa 3 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (33, N'Nativa 4 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (34, N'Nativa 5 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (35, N'Nativa 6 P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (36, N'Visa 1P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (37, N'Visa 12P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (38, N'Visa 2P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (39, N'Visa 3P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (40, N'Visa 4P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (41, N'Visa 5P')
INSERT [dbo].[viapagos] ([idViaPago], [nombre]) VALUES (42, N'Visa 6P')
SET IDENTITY_INSERT [dbo].[viapagos] OFF
/****** Object:  Table [dbo].[usuarios]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [usuarios_pk] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (1, N'Edgar                   ', N'Enrique                 ', N'eenrique  ', N'eenrique  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (2, N'Ubaldo                  ', N'Bruzzo                  ', N'ubruzzo   ', N'ubruzzo   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (3, N'Alejandro               ', N'Herrera                 ', N'aherrera  ', N'aherrera  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (4, N'Walter                  ', N'Bruzzo                  ', N'wbruzzo   ', N'wbruzzo   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (5, N'Luis                    ', N'Rodríguez               ', N'lrodriguez', N'lrodriguez', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (6, N'Marcelo Ariel           ', N'Alarcón                 ', N'malarcon  ', N'malarcon  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (7, N'Diego Daniel            ', N'Rios                    ', N'drios     ', N'drios     ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (8, N'Angel G.                ', N'Espindola               ', N'aespindola', N'aespindola', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (9, N'Ricardo                 ', N'Domínguez               ', N'rdominguez', N'rdominguez', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (10, N'Darío                   ', N'Centurión               ', N'dcenturion', N'dcenturion', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (11, N'Luis                    ', N'Benítez                 ', N'lbenitez  ', N'lbenitez  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (12, N'Ricardo                 ', N'Coria                   ', N'rcoria    ', N'rcoria    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (13, N'Hugo                    ', N'Fernández               ', N'hfernandez', N'hfernandez', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (14, N'José                    ', N'Maidana                 ', N'jmaidana  ', N'jmaidana  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (15, N'Luis                    ', N'González                ', N'lgonzalez ', N'lgonzalez ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (16, N'Sebastián               ', N'Bazan                   ', N'sbazan    ', N'sbazan    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (17, N'Molina                  ', N'De La Cruz              ', N'mdelacruz ', N'mdelacruz ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (18, N'Claudio                 ', N'Sotelo                  ', N'csotelo   ', N'csotelo   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (19, N'Adrián                  ', N'Gómez                   ', N'agomez    ', N'agomez    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (20, N'Leonardo Javier         ', N'Passi Pérez             ', N'lpassi    ', N'lpassi    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (21, N'Gabriel                 ', N'Del Fabro               ', N'gdelfabro ', N'gdelfabro ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (22, N'Emiliano                ', N'Cladera                 ', N'ecladera  ', N'ecladera  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (23, N'Diego                   ', N'Guarnieri               ', N'dguarnieri', N'dguarnieri', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (24, N'Romina                  ', N'Fabrissin               ', N'rfabrissin', N'rfabrissin', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (25, N'Laura                   ', N'Merlo                   ', N'lmerlo    ', N'lmerlo    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (26, N'Ivana                   ', N'Hess                    ', N'ihess     ', N'ihess     ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (27, N'Víctor                  ', N'Dominguez               ', N'vdominguez', N'vdominguez', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (28, N'Carolina                ', N'Sorba                   ', N'csorba    ', N'csorba    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (29, N'Gabriela                ', N'Grey Oliveira           ', N'golivera  ', N'golivera  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (30, N'Maria Paula             ', N'Escobar                 ', N'mpescobar ', N'mpescobar ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (31, N'Maria Paula             ', N'Escobar                 ', N'pescobar  ', N'pescobar  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (32, N'Leonardo                ', N'Vitis                   ', N'lvitis    ', N'lvitis    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (33, N'Viviana                 ', N'Gonzalez                ', N'vgonzalez ', N'vgonzalez ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (34, N'Daniel                  ', N'Mianovich               ', N'dmianovich', N'dmianovich', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (35, N'Daiana                  ', N'Villalba                ', N'dvillalba ', N'dvillalba ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (36, N'Lara                    ', N'Aguilar                 ', N'laguilar  ', N'laguilar* ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (37, N'Francisco               ', N'Cañete                  ', N'fcanete   ', N'fcanete   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (38, N'Veronica                ', N'Carnevale               ', N'vcarnevale', N'vcarnevale', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (39, N'Juan Jose               ', N'Ritorto Hadad           ', N'jritorto  ', N'jritorto  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (40, N'MIGUEL                  ', N'OJEDA                   ', N'mojeda    ', N'mojeda    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (41, N'ENZO                    ', N'PORTUGAL                ', N'eportugal ', N'eportugal ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (42, N'LUIS                    ', N'MARQUEZ                 ', N'lmarquez  ', N'lmarquez  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (43, N'ALBERTO                 ', N'BARBOZA                 ', N'abarboza  ', N'abarboza  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (44, N'MARCELO                 ', N'BENITEZ                 ', N'mbenitez  ', N'mbenitez  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (45, N'WALTER                  ', N'RASCHLE                 ', N'wraschle  ', N'wraschle  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (46, N'WALTER                  ', N'BENITEZ                 ', N'wbenitez  ', N'wbenitez  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (47, N'FEDERICO                ', N'MIR                     ', N'fmir      ', N'fmir      ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (48, N'RITO                    ', N'CORREA                  ', N'rcorrea   ', N'rcorrea   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (49, N'ROBERTO                 ', N'AMBROZEVICH             ', N'rambrozevi', N'rambrozevi', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (50, N'OSCAR                   ', N'BILLALBA                ', N'obillalba ', N'obillalba ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (51, N'LUIS                    ', N'CANETE                  ', N'lcanete   ', N'lcanete   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (52, N'RAMON                   ', N'MUMBACH                 ', N'rmumbach  ', N'rmumbach  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (53, N'ELIO                    ', N'CUBILLA                 ', N'ecubilla  ', N'ecubilla  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (54, N'Liliana                 ', N'Borel                   ', N'lborel    ', N'lborel    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (55, N'Guillermo               ', N'Fortini                 ', N'gfortini  ', N'gfortini  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (56, N'María De Los Angeles    ', N'Gómez                   ', N'mgomez    ', N'mgomez    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (57, N'Elvio Nicolas           ', N'Alvarenga               ', N'nalvarenga', N'nalvarenga', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (58, N'Ricardo Ruben           ', N'Fraire                  ', N'rfraire   ', N'rfraire   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (59, N'Amado                   ', N'Quintana                ', N'aquintana ', N'aquintana ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (60, N'Matías                  ', N'Otero                   ', N'motero    ', N'motero    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (61, N'Juan Domingo            ', N'Villordo                ', N'jvillordo ', N'jvillordo ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (62, N'Marcelo                 ', N'Fernandez               ', N'mfernandez', N'mfernandez', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (63, N'Pablo                   ', N'Winarzick               ', N'pwinarzick', N'pwinarzick', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (64, N'Fernando                ', N'Buquerin                ', N'fbuquerin ', N'fbuquerin ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (65, N'Aldo                    ', N'Chavez                  ', N'achavez   ', N'achavez   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (66, N'Luis                    ', N'Hardy                   ', N'lhardy    ', N'lhardy    ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (67, N'Roberto                 ', N'Alegre                  ', N'ralegre   ', N'ralegre   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (68, N'VICTOR EDUARDO DAVID    ', N'ARCE                    ', N'varce     ', N'varce     ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (69, N'Hector                  ', N'Gonzalez                ', N'hgonzalez ', N'hgonzalez ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (70, N'GERARDI                 ', N'MARIANO                 ', N'mgerardi  ', N'mgerardi  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (71, N'Leandro Gaston          ', N'Bianchi                 ', N'lbianchi  ', N'lbianchi  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (72, N'Valeria                 ', N'Moresco                 ', N'vmoresco  ', N'vmoresco  ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (73, N'Hector Fabian           ', N'Echeverria              ', N'fecheverri', N'fecheverri', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (74, N'Luciano Hernan          ', N'Bertinat                ', N'lbertinat ', N'lbertinat ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (75, N'Miguel                  ', N'Del Valle               ', N'mdelvalle ', N'mdelvalle ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (76, N'Mariano                 ', N'Vagabculow              ', N'mvaga     ', N'mvaga     ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (77, N'Carolina                ', N'Cancelarich             ', N'ccancelari', N'ccancelari', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (78, N'Fernando                ', N'Falcon                  ', N'ffalcon   ', N'ffalcon   ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (79, N'Juan Manuel             ', N'Liva                    ', N'jliva     ', N'jliva     ', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (80, N'David                   ', N'Barrientos              ', N'dbarriento', N'dbarriento', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (81, N'Claudia                 ', N'Schvember               ', N'cschvember', N'cschvember', 1)
INSERT [dbo].[usuarios] ([idUsuario], [nombre], [apellido], [login], [password], [activo]) VALUES (82, N'Ana Ines                ', N'Fernandez               ', N'afernandez', N'afernandez', 1)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
/****** Object:  Table [dbo].[turnos]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[turnos](
	[idTurno] [int] IDENTITY(1,1) NOT NULL,
	[dominio] [char](6) NOT NULL,
	[idJornada] [int] NOT NULL,
	[idPedido] [int] NOT NULL,
	[fechaDesde] [datetime] NOT NULL,
	[fechaHasta] [datetime] NOT NULL,
 CONSTRAINT [turnos_pk] PRIMARY KEY CLUSTERED 
(
	[idTurno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tiposNif]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tiposNif](
	[idTipoNif] [int] NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [tiposNif_pk] PRIMARY KEY CLUSTERED 
(
	[idTipoNif] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (0, N'C.I.Policia Federal')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (1, N'C.I. Buenos Aires')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (2, N'C.I. Catamarca')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (3, N'C.I. Córdoba')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (4, N'C.I. Corrientes')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (5, N'C.I. Entre Ríos')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (6, N'C.I. Jujuy')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (7, N'C.I. Mendoza')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (8, N'C.I. La Rioja')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (9, N'C.I. Salta')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (10, N'C.I. San Juan')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (11, N'C.I. San Luis')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (12, N'C.I. Santa Fé')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (13, N'C.I. Santiago del Estero')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (14, N'C.I. Tucumán')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (16, N'C.I. Chaco')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (17, N'C.I. Chubut')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (18, N'C.I. Formosa')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (19, N'C.I. Misiones')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (20, N'C.I. Neuquen')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (21, N'C.I. La Pampa')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (22, N'C.I. Rio Negro')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (23, N'C.I. Santa Cruz')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (24, N'C.I. Tierra del Fuego')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (80, N'C.U.I.T.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (85, N'D.N.R.P.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (86, N'C.U.I.L.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (87, N'C.D.I.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (89, N'L.E.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (90, N'L.C.')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (94, N'Pasaporte')
INSERT [dbo].[tiposNif] ([idTipoNif], [descripcion]) VALUES (96, N'D.N.I.')
/****** Object:  Table [dbo].[sucursales]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursales](
	[idSucursal] [int] NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[latitud] [float] NULL,
	[longitud] [float] NULL,
	[idProvincia] [int] NOT NULL,
 CONSTRAINT [sucursales_pk] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (111, N'RESISTENCIA', -27.451733, -58.980779, 16)
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (121, N'POSADAS', -27.377712399093241, -55.918006896972656, 19)
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (231, N'MAR DEL PLATA', -37.987138, -57.571229, 1)
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (251, N'NECOCHEA', -38.553401, -58.73946, 1)
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (271, N'CORRIENTES', -27.4803108511025, -58.8033183652856, 4)
INSERT [dbo].[sucursales] ([idSucursal], [descripcion], [latitud], [longitud], [idProvincia]) VALUES (291, N'RECONQUISTA                   ', -29.143297065542367, -59.64303731918335, 12)
/****** Object:  Table [dbo].[provincias]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provincias](
	[idProvincia] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
 CONSTRAINT [provincias_pk] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (0, N'Capital Federal')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (2, N'Catamarca')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (3, N'Córdoba')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (4, N'Corrientes')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (5, N'Entre Rios')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (6, N'Jujuy')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (7, N'Mendoza')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (8, N'La Rioja')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (9, N'Salta')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (10, N'San Juan')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (11, N'San Luis')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (12, N'Santa Fé')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (13, N'Santiago del Estero')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (14, N'Tucumán')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (16, N'Chaco')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (17, N'Chubut')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (18, N'Formosa')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (19, N'Misiones')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (20, N'Neuquen')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (21, N'La Pampa')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (22, N'Rio Negro')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (23, N'Santa Cruz')
INSERT [dbo].[provincias] ([idProvincia], [nombre]) VALUES (24, N'Tierra de Fuego')
/****** Object:  Table [dbo].[productos]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[idProducto] [varchar](2) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
 CONSTRAINT [productos_pk] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[productos] ([idProducto], [nombre]) VALUES (N'10', N'CARGA x 10 Kg.')
INSERT [dbo].[productos] ([idProducto], [nombre]) VALUES (N'15', N'CARGA x 15 Kg.')
INSERT [dbo].[productos] ([idProducto], [nombre]) VALUES (N'16', N'CARGA AUTOELEV.')
INSERT [dbo].[productos] ([idProducto], [nombre]) VALUES (N'30', N'CARGA x 30 Kg.')
INSERT [dbo].[productos] ([idProducto], [nombre]) VALUES (N'45', N'CARGA x 45 Kg.')
/****** Object:  Table [dbo].[choferes]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[choferes](
	[idChofer] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [choferes_pk] PRIMARY KEY CLUSTERED 
(
	[idChofer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2155, 121, N'MIGUEL', N'OJEDA', 40, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2426, 121, N'ENZO', N'PORTUGAL', 41, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2445, 111, N'EDGAR', N'ENRIQUE', 1, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2447, 111, N'UBALDO', N'BRUZZO', 2, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2472, 111, N'ALEJANDRO', N'HERRERA', 3, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2588, 291, N'ALDO', N'CHAVEZ', 65, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2682, 121, N'LUIS', N'MARQUEZ', 42, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2692, 291, N'MARCELO', N'FERNANDEZ', 62, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2702, 111, N'WALTER', N'BRUZZO', 4, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2752, 121, N'ALBERTO', N'BARBOZA', 43, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2789, 121, N'MARCELO', N'BENITEZ', 44, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2808, 121, N'WALTER', N'RASCHLE', 45, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (2846, 111, N'LUIS', N'RODRÍGUEZ', 5, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3032, 111, N'MARCELO ARIEL', N'ALARCÓN', 6, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3081, 111, N'DIEGO DANIEL', N'RIOS', 7, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3137, 121, N'WALTER', N'BENITEZ', 46, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3149, 121, N'FEDERICO', N'MIR', 47, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3162, 111, N'ANGEL G.', N'ESPINDOLA', 8, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3175, 121, N'RITO', N'CORREA', 48, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3176, 121, N'ROBERTO', N'AMBROZEVICH', 49, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3190, 111, N'FRANCISCO', N'CAÑETE', 37, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3199, 121, N'OSCAR', N'BILLALBA', 50, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3200, 121, N'LUIS', N'CANETE', 51, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3201, 121, N'RAMON', N'MUMBACH', 52, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3245, 111, N'RICARDO', N'DOMÍNGUEZ', 9, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3286, 121, N'ELIO', N'CUBILLA', 53, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3295, 111, N'DARÍO', N'CENTURIÓN', 10, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3296, 271, N'LUIS', N'BENÍTEZ', 11, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3297, 271, N'RICARDO', N'CORIA', 12, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3298, 271, N'HUGO', N'FERNÁNDEZ', 13, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3299, 271, N'JOSÉ', N'MAIDANA', 14, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3300, 271, N'LUIS', N'GONZÁLEZ', 15, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3301, 271, N'SEBASTIÁN', N'BAZAN', 16, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3302, 271, N'MOLINA', N'DE LA CRUZ', 17, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3303, 271, N'DANIEL', N'MIANOVICH', 34, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3443, 121, N'HECTOR', N'GONZALEZ', 69, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3446, 111, N'CLAUDIO', N'SOTELO', 18, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3458, 291, N'ROBERTO', N'ALEGRE', 67, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3496, 111, N'ADRIÁN', N'GÓMEZ', 19, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3500, 251, N'GERARDI', N'MARIANO', 70, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3507, 111, N'LEONARDO JAVIER', N'PASSI PÉREZ', 20, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3533, 111, N'GABRIEL', N'DEL FABRO', 21, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3548, 111, N'DANIEL', N'MIANOVICH', 34, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3563, 271, N'JUAN JOSE', N'RITORTO HADAD', 39, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3570, 111, N'GUILLERMO', N'FORTINI', 55, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3574, 271, N'NICOLAS', N'ALVARENGA', 57, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3582, 111, N'RICARDO RUBEN', N'FRAIRE', 58, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3591, 111, N'AMADO', N'QUINTANA', 59, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3593, 271, N'DIEGO RAUL', N'RIOS', 7, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3596, 271, N'VILLORDO', N'JUAN DOMINGO', 61, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3669, 271, N'VICTOR EDUARDO', N'ARCE', 68, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3698, 111, N'LEANDRO GASTON', N'BIANCHI', 71, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3731, 271, N'HECTOR FABIAN', N'ECHEVERRI', 73, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3763, 111, N'FERNANDO ALCIDES', N'FALCON', 78, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3766, 111, N'JUAN MANUEL', N'LIVA', 79, 1)
INSERT [dbo].[choferes] ([idChofer], [idSucursal], [nombre], [apellido], [idUsuario], [activo]) VALUES (3768, 271, N'DAVID', N'BARRIENTOS', 80, 1)
/****** Object:  Table [dbo].[costoasignacion]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costoasignacion](
	[idCostoAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[distanciaDesde] [float] NOT NULL,
	[distanciaHasta] [float] NOT NULL,
	[pedidosEnCola] [int] NOT NULL,
	[costo] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[condicionesiva]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[condicionesiva](
	[idCondicionIVA] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [condicionesiva_pk] PRIMARY KEY CLUSTERED 
(
	[idCondicionIVA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[condicionesiva] ON
INSERT [dbo].[condicionesiva] ([idCondicionIVA], [descripcion]) VALUES (1, N'Responsable Inscripto')
INSERT [dbo].[condicionesiva] ([idCondicionIVA], [descripcion]) VALUES (2, N'Consumidor Final')
INSERT [dbo].[condicionesiva] ([idCondicionIVA], [descripcion]) VALUES (3, N'Monotributista')
SET IDENTITY_INSERT [dbo].[condicionesiva] OFF
/****** Object:  Table [dbo].[clientes]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[idCliente] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[razonSocial] [varchar](255) NOT NULL,
	[tipoNif] [int] NULL,
	[nif] [varchar](50) NULL,
	[idCondicionIVA] [int] NOT NULL,
	[idViaPago] [int] NOT NULL,
	[email] [varchar](255) NULL,
 CONSTRAINT [clientes_pk] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [clientes_u_idx] ON [dbo].[clientes] 
(
	[nif] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referenciasmovil]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[referenciasmovil](
	[idReferenciaMovil] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[latitud] [float] NOT NULL,
	[longitud] [float] NOT NULL,
	[descripcion] [varchar](255) NULL,
 CONSTRAINT [referenciasmovil_pk] PRIMARY KEY CLUSTERED 
(
	[idReferenciaMovil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (1, 111, -27.455024726631393, -58.9906756084656, N'CENTRO')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (4, 111, -27.4782314638448, -58.955746948853616, N'Barranqueras')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (7, 111, -27.476682451499119, -58.986566948853607, N'ITALIANO')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (8, 111, -27.463955978835973, -58.971976419753091, N'Villa Los Lirios')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (9, 111, -27.463833245149907, -59.000797372134038, N'MARCONI')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (11, 111, -27.483629858906525, -58.979227654320987, N'17 de Octubre (ALTERNATIVA)')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (13, 111, -27.448677136405113, -58.975127479567334, N'Centro Norte')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (15, 111, -27.440200670194006, -59.014258677248669, N'Foecyt')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (16, 111, -27.455694761904763, -59.011284462081129, N'Puerto Madero')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (18, 111, -27.4386178659612, -59.000882539682536, N'Villa Chica')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (20, 271, -27.471270458553793, -58.840063633156966, N'Plaza Torrent')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (21, 271, -27.471345255731922, -58.811587072310395, N'Hipodromo')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (22, 271, -27.492197571270697, -58.826284685386689, N'Huracan')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (23, 271, -27.486789504107762, -58.810069492462823, N'San Pantaleon')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (25, 271, -27.466190811287479, -58.787183774250444, N'UNNE')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (26, 111, -27.476753178370391, -58.971720931757538, N'Villa Federal')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (27, 121, -27.366528, -55.894188, N'Centro')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (28, 121, -27.369213, -55.94355, N'Villa Cabello')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (29, 121, -27.380150968253414, -55.903111267614356, N'Brown - Feriado')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (30, 121, -27.381292973464106, -55.926035148790589, N'El Territorio - Feriado')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (31, 121, -27.412245443182631, -55.901462787773141, N'Garupá')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (32, 121, -27.372542432712592, -55.913510082958155, N'Tomas Guido - Lopez y Planes')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (33, 121, -27.384638289119497, -55.896256725913958, N'Av. Cabred - Av. Rademacher')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (34, 271, -27.464712870825441, -58.846817178397387, N'Parque Camba Cua')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (35, 121, -27.425754456159318, -55.894789984602255, N'Garupa2')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (36, 121, -27.408829875378192, -55.92504388084734, N'Punto 6')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (37, 121, -27.353576459462076, -55.895664265595613, N'Villa Sarita')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (38, 111, -27.440947425812464, -58.983773993904876, N'Villa Avalos')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (39, 291, -29.146145692493121, -59.6450275182724, N'Centro')
INSERT [dbo].[referenciasmovil] ([idReferenciaMovil], [idSucursal], [latitud], [longitud], [descripcion]) VALUES (40, 251, -38.553401, -58.73946, N'Centro')
/****** Object:  Table [dbo].[moviles]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[moviles](
	[dominio] [char](6) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[marca] [varchar](255) NULL,
	[modelo] [varchar](255) NULL,
	[activo] [bit] NULL,
 CONSTRAINT [PK_moviles] PRIMARY KEY CLUSTERED 
(
	[dominio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'AGS236', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'AWQ195', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'BAK496', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'BPS500', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'CVF959', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'CZD383', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DJB288', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DJB307', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DJB308', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DJB309', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DNY759', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DUG154', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DUG155', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'DWU166', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ELE158', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ELE159', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ELE161', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ELE164', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'EMB477', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ESL225', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'ESL226', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN981', 251, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN982', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN983', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN984', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN985', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN986', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN987', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN988', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'FJN989', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW354', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW355', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW356', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW357', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW358', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW359', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW360', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'GXW361', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'JYH461', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'JYH462', 231, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'JYH463', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'JYH464', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF344', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF345', 251, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF346', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF348', 121, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF349', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KFF366', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'KLF757', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'MAI234', 231, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'NJD374', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'NJD375', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'NJD376', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'NJD378', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'NJD380', 271, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN626', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN627', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN628', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN629', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN630', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN634', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN635', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN636', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN637', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'OMN639', 111, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'RJT644', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'WHA371', 291, NULL, NULL, 1)
INSERT [dbo].[moviles] ([dominio], [idSucursal], [marca], [modelo], [activo]) VALUES (N'WHN676', 121, NULL, NULL, 1)
/****** Object:  Table [dbo].[localidades]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[localidades](
	[idLocalidad] [int] IDENTITY(1,1) NOT NULL,
	[idProvincia] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
 CONSTRAINT [localidades_pk] PRIMARY KEY CLUSTERED 
(
	[idLocalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[localidades] ON
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (1, 19, N'Posadas')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (2, 4, N'Corrientes')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (3, 16, N'Resistencia')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (4, 16, N'Barranqueras')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (5, 16, N'Puerto Vilelas')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (6, 16, N'Fontana')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (7, 12, N'Reconquista')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (8, 12, N'Avellaneda')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (9, 1, N'Necochea')
INSERT [dbo].[localidades] ([idLocalidad], [idProvincia], [nombre]) VALUES (10, 1, N'Mar del Plata')
SET IDENTITY_INSERT [dbo].[localidades] OFF
/****** Object:  Table [dbo].[jornadas]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jornadas](
	[idJornada] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[horaInicio] [int] NOT NULL,
	[minutoInicio] [int] NOT NULL,
	[horaFin] [int] NOT NULL,
	[minutoFin] [int] NOT NULL,
 CONSTRAINT [jornadas_pk] PRIMARY KEY CLUSTERED 
(
	[idJornada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direcciones]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[direcciones](
	[idDireccion] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idProvincia] [int] NOT NULL,
	[idLocalidad] [int] NOT NULL,
	[calle] [varchar](255) NULL,
	[numero] [int] NULL,
	[piso] [int] NULL,
	[departamento] [varchar](50) NULL,
	[edificio] [varchar](50) NULL,
	[barrio] [varchar](255) NULL,
	[manzana] [varchar](50) NULL,
	[parcela] [varchar](50) NULL,
	[sector] [varchar](50) NULL,
	[casa] [varchar](50) NULL,
	[chacra] [varchar](50) NULL,
	[quinta] [varchar](50) NULL,
 CONSTRAINT [direcciones_pk] PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cargamoviles]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cargamoviles](
	[idCargaMovil] [int] IDENTITY(1,1) NOT NULL,
	[idJornada] [int] NULL,
	[dominio] [char](6) NULL,
	[idChofer] [int] NULL,
	[idReferenciaMovil] [int] NULL,
	[ordenProceso] [varchar](255) NULL,
	[cms] [varchar](255) NULL,
	[activo] [bit] NULL,
 CONSTRAINT [cargamoviles_pk] PRIMARY KEY CLUSTERED 
(
	[idCargaMovil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[posicionmovil]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posicionmovil](
	[idEvento] [int] IDENTITY(1,1) NOT NULL,
	[dominio] [char](6) NOT NULL,
	[latitud] [float] NOT NULL,
	[longitud] [float] NOT NULL,
	[fechaEvento] [datetime] NOT NULL,
 CONSTRAINT [posicionmovil_pk] PRIMARY KEY CLUSTERED 
(
	[idEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pedidos](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[idCargaMovil] [int] NULL,
	[idViaPago] [int] NULL,
	[idUsuario] [int] NOT NULL,
	[fechaEntrega] [datetime] NOT NULL,
	[horaDesde] [datetime] NULL,
	[horaHasta] [datetime] NULL,
	[referenciaFactura] [varchar](255) NULL,
 CONSTRAINT [pedidos_pk] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pedidodetalle]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pedidodetalle](
	[idPedido] [int] NOT NULL,
	[idProducto] [varchar](2) NOT NULL,
	[cantidad] [int] NOT NULL,
	[cantidadEntregada] [int] NOT NULL,
	[cantidadFacturada] [int] NOT NULL,
 CONSTRAINT [pedidodetalle_pk] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cargahorariochofer]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargahorariochofer](
	[idCargaHorarioChofer] [int] IDENTITY(1,1) NOT NULL,
	[idCargaMovil] [int] NOT NULL,
	[horaInicio] [datetime] NOT NULL,
	[horaFin] [datetime] NOT NULL,
 CONSTRAINT [cargahorariochofer_pk] PRIMARY KEY CLUSTERED 
(
	[idCargaHorarioChofer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargadetalle]    Script Date: 12/04/2015 15:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cargadetalle](
	[idCargaMovil] [int] NOT NULL,
	[idProducto] [varchar](2) NOT NULL,
	[stockInicial] [int] NOT NULL,
	[stockLogico] [int] NOT NULL,
	[stockFisico] [int] NOT NULL,
 CONSTRAINT [PK_cargadetalle] PRIMARY KEY CLUSTERED 
(
	[idCargaMovil] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [cargadetalle_uidx] ON [dbo].[cargadetalle] 
(
	[idCargaMovil] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_clientes_condicionesiva]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_condicionesiva] FOREIGN KEY([idCondicionIVA])
REFERENCES [dbo].[condicionesiva] ([idCondicionIVA])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_condicionesiva]
GO
/****** Object:  ForeignKey [FK_clientes_sucursales]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_sucursales]
GO
/****** Object:  ForeignKey [FK_clientes_tiposNif]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_tiposNif] FOREIGN KEY([tipoNif])
REFERENCES [dbo].[tiposNif] ([idTipoNif])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_tiposNif]
GO
/****** Object:  ForeignKey [FK_clientes_viapagos]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_viapagos] FOREIGN KEY([idViaPago])
REFERENCES [dbo].[viapagos] ([idViaPago])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_viapagos]
GO
/****** Object:  ForeignKey [FK_referenciasmovil_sucursales]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[referenciasmovil]  WITH CHECK ADD  CONSTRAINT [FK_referenciasmovil_sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[referenciasmovil] CHECK CONSTRAINT [FK_referenciasmovil_sucursales]
GO
/****** Object:  ForeignKey [FK_moviles_sucursales]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[moviles]  WITH CHECK ADD  CONSTRAINT [FK_moviles_sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[moviles] CHECK CONSTRAINT [FK_moviles_sucursales]
GO
/****** Object:  ForeignKey [FK_localidades_provincias]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[localidades]  WITH CHECK ADD  CONSTRAINT [FK_localidades_provincias] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[provincias] ([idProvincia])
GO
ALTER TABLE [dbo].[localidades] CHECK CONSTRAINT [FK_localidades_provincias]
GO
/****** Object:  ForeignKey [FK_jornadas_sucursales]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[jornadas]  WITH CHECK ADD  CONSTRAINT [FK_jornadas_sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[jornadas] CHECK CONSTRAINT [FK_jornadas_sucursales]
GO
/****** Object:  ForeignKey [FK_direcciones_clientes]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[direcciones]  WITH CHECK ADD  CONSTRAINT [FK_direcciones_clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[direcciones] CHECK CONSTRAINT [FK_direcciones_clientes]
GO
/****** Object:  ForeignKey [FK_direcciones_localidades]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[direcciones]  WITH CHECK ADD  CONSTRAINT [FK_direcciones_localidades] FOREIGN KEY([idLocalidad])
REFERENCES [dbo].[localidades] ([idLocalidad])
GO
ALTER TABLE [dbo].[direcciones] CHECK CONSTRAINT [FK_direcciones_localidades]
GO
/****** Object:  ForeignKey [FK_direcciones_provincias]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[direcciones]  WITH CHECK ADD  CONSTRAINT [FK_direcciones_provincias] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[provincias] ([idProvincia])
GO
ALTER TABLE [dbo].[direcciones] CHECK CONSTRAINT [FK_direcciones_provincias]
GO
/****** Object:  ForeignKey [FK_cargamoviles_jornadas]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargamoviles]  WITH CHECK ADD  CONSTRAINT [FK_cargamoviles_jornadas] FOREIGN KEY([idJornada])
REFERENCES [dbo].[jornadas] ([idJornada])
GO
ALTER TABLE [dbo].[cargamoviles] CHECK CONSTRAINT [FK_cargamoviles_jornadas]
GO
/****** Object:  ForeignKey [FK_cargamoviles_moviles]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargamoviles]  WITH CHECK ADD  CONSTRAINT [FK_cargamoviles_moviles] FOREIGN KEY([dominio])
REFERENCES [dbo].[moviles] ([dominio])
GO
ALTER TABLE [dbo].[cargamoviles] CHECK CONSTRAINT [FK_cargamoviles_moviles]
GO
/****** Object:  ForeignKey [FK_cargamoviles_referenciasmovil]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargamoviles]  WITH CHECK ADD  CONSTRAINT [FK_cargamoviles_referenciasmovil] FOREIGN KEY([idReferenciaMovil])
REFERENCES [dbo].[referenciasmovil] ([idReferenciaMovil])
GO
ALTER TABLE [dbo].[cargamoviles] CHECK CONSTRAINT [FK_cargamoviles_referenciasmovil]
GO
/****** Object:  ForeignKey [FK_posicionmovil_moviles]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[posicionmovil]  WITH CHECK ADD  CONSTRAINT [FK_posicionmovil_moviles] FOREIGN KEY([dominio])
REFERENCES [dbo].[moviles] ([dominio])
GO
ALTER TABLE [dbo].[posicionmovil] CHECK CONSTRAINT [FK_posicionmovil_moviles]
GO
/****** Object:  ForeignKey [FK_pedidos_clientes]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [FK_pedidos_clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [FK_pedidos_clientes]
GO
/****** Object:  ForeignKey [FK_pedidodetalle_pedidos]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[pedidodetalle]  WITH CHECK ADD  CONSTRAINT [FK_pedidodetalle_pedidos] FOREIGN KEY([idPedido])
REFERENCES [dbo].[pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[pedidodetalle] CHECK CONSTRAINT [FK_pedidodetalle_pedidos]
GO
/****** Object:  ForeignKey [FK_pedidodetalle_productos]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[pedidodetalle]  WITH CHECK ADD  CONSTRAINT [FK_pedidodetalle_productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[pedidodetalle] CHECK CONSTRAINT [FK_pedidodetalle_productos]
GO
/****** Object:  ForeignKey [FK_cargahorariochofer_cargamoviles]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargahorariochofer]  WITH CHECK ADD  CONSTRAINT [FK_cargahorariochofer_cargamoviles] FOREIGN KEY([idCargaMovil])
REFERENCES [dbo].[cargamoviles] ([idCargaMovil])
GO
ALTER TABLE [dbo].[cargahorariochofer] CHECK CONSTRAINT [FK_cargahorariochofer_cargamoviles]
GO
/****** Object:  ForeignKey [FK_cargadetalle_cargamoviles]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargadetalle]  WITH CHECK ADD  CONSTRAINT [FK_cargadetalle_cargamoviles] FOREIGN KEY([idCargaMovil])
REFERENCES [dbo].[cargamoviles] ([idCargaMovil])
GO
ALTER TABLE [dbo].[cargadetalle] CHECK CONSTRAINT [FK_cargadetalle_cargamoviles]
GO
/****** Object:  ForeignKey [FK_cargadetalle_productos]    Script Date: 12/04/2015 15:50:22 ******/
ALTER TABLE [dbo].[cargadetalle]  WITH CHECK ADD  CONSTRAINT [FK_cargadetalle_productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[cargadetalle] CHECK CONSTRAINT [FK_cargadetalle_productos]
GO
