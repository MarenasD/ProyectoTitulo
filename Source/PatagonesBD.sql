USE [master]
GO
/****** Object:  Database [patagones7]    Script Date: 22-09-2019 21:14:24 ******/
CREATE DATABASE [patagones7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'patagones7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\patagones7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'patagones7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\patagones7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [patagones7] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [patagones7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [patagones7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [patagones7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [patagones7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [patagones7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [patagones7] SET ARITHABORT OFF 
GO
ALTER DATABASE [patagones7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [patagones7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [patagones7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [patagones7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [patagones7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [patagones7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [patagones7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [patagones7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [patagones7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [patagones7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [patagones7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [patagones7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [patagones7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [patagones7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [patagones7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [patagones7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [patagones7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [patagones7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [patagones7] SET  MULTI_USER 
GO
ALTER DATABASE [patagones7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [patagones7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [patagones7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [patagones7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [patagones7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [patagones7] SET QUERY_STORE = OFF
GO
USE [patagones7]
GO
/****** Object:  Table [dbo].[cargo_personal]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo_personal](
	[IdCargoPersonal] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cargo_personal] PRIMARY KEY CLUSTERED 
(
	[IdCargoPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria_producto]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_producto](
	[Id] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria_producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credenciales]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credenciales](
	[Usuario] [int] NOT NULL,
	[Clave] [int] NOT NULL,
	[FkUsuario] [int] NOT NULL,
 CONSTRAINT [PK_credenciales] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[RutPersonal] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[DireccionPersonal] [varchar](50) NOT NULL,
	[FkCargoPersonal] [int] NOT NULL,
	[FkUsuario] [int] NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[RutPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[IdProducto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_glaseado]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_glaseado](
	[Id] [int] NOT NULL,
	[CantidadGlaseado] [int] NOT NULL,
	[FechaGlaseado] [date] NOT NULL,
	[FkProducto] [int] NOT NULL,
 CONSTRAINT [PK_producto_glaseado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_proceso]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_proceso](
	[Id] [int] NOT NULL,
	[CantidadProceso] [int] NOT NULL,
	[FechaProceso] [date] NOT NULL,
	[FkProducto] [int] NOT NULL,
 CONSTRAINT [PK_producto_proceso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[RutProveedor] [int] NOT NULL,
	[NombreProveedor] [varchar](50) NOT NULL,
	[DireccionProveedor] [varchar](50) NOT NULL,
	[TelefonoProveedor] [int] NOT NULL,
	[EmailProveedor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[RutProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_producto]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_producto](
	[Id] [int] NOT NULL,
	[FkProducto] [int] NOT NULL,
	[FkProveedor] [int] NOT NULL,
 CONSTRAINT [PK_proveedor_producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_compra]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_compra](
	[Id] [int] NOT NULL,
	[CantidadCompra] [int] NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[NumeroFactura] [varchar](50) NOT NULL,
	[Lote] [varchar](50) NOT NULL,
	[TipoDocumento] [varchar](50) NOT NULL,
	[FkProducto] [int] NOT NULL,
	[FkPersonal] [int] NOT NULL,
 CONSTRAINT [PK_registro_compra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefono_personal]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono_personal](
	[Id] [int] NOT NULL,
	[PrimerNumero] [int] NOT NULL,
	[SegundoNumero] [int] NOT NULL,
	[FkPersonal] [int] NOT NULL,
 CONSTRAINT [PK_telefono_personal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_usuario]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_usuario](
	[Id] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[FkUsuario] [int] NOT NULL,
 CONSTRAINT [PK_tipo_usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 22-09-2019 21:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[Rut] [int] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[Rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[credenciales]  WITH CHECK ADD  CONSTRAINT [FK_credenciales_usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[usuario] ([Rut])
GO
ALTER TABLE [dbo].[credenciales] CHECK CONSTRAINT [FK_credenciales_usuario]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_cargo_personal] FOREIGN KEY([FkCargoPersonal])
REFERENCES [dbo].[cargo_personal] ([IdCargoPersonal])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_cargo_personal]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[usuario] ([Rut])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_usuario]
GO
ALTER TABLE [dbo].[producto_glaseado]  WITH CHECK ADD  CONSTRAINT [FK_producto_glaseado_producto] FOREIGN KEY([FkProducto])
REFERENCES [dbo].[producto] ([IdProducto])
GO
ALTER TABLE [dbo].[producto_glaseado] CHECK CONSTRAINT [FK_producto_glaseado_producto]
GO
ALTER TABLE [dbo].[producto_proceso]  WITH CHECK ADD  CONSTRAINT [FK_producto_proceso_producto] FOREIGN KEY([FkProducto])
REFERENCES [dbo].[producto] ([IdProducto])
GO
ALTER TABLE [dbo].[producto_proceso] CHECK CONSTRAINT [FK_producto_proceso_producto]
GO
ALTER TABLE [dbo].[proveedor_producto]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_producto_producto] FOREIGN KEY([FkProducto])
REFERENCES [dbo].[producto] ([IdProducto])
GO
ALTER TABLE [dbo].[proveedor_producto] CHECK CONSTRAINT [FK_proveedor_producto_producto]
GO
ALTER TABLE [dbo].[proveedor_producto]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_producto_proveedor] FOREIGN KEY([FkProveedor])
REFERENCES [dbo].[proveedor] ([RutProveedor])
GO
ALTER TABLE [dbo].[proveedor_producto] CHECK CONSTRAINT [FK_proveedor_producto_proveedor]
GO
ALTER TABLE [dbo].[registro_compra]  WITH CHECK ADD  CONSTRAINT [FK_registro_compra_personal] FOREIGN KEY([FkPersonal])
REFERENCES [dbo].[personal] ([RutPersonal])
GO
ALTER TABLE [dbo].[registro_compra] CHECK CONSTRAINT [FK_registro_compra_personal]
GO
ALTER TABLE [dbo].[registro_compra]  WITH CHECK ADD  CONSTRAINT [FK_registro_compra_producto] FOREIGN KEY([FkProducto])
REFERENCES [dbo].[producto] ([IdProducto])
GO
ALTER TABLE [dbo].[registro_compra] CHECK CONSTRAINT [FK_registro_compra_producto]
GO
ALTER TABLE [dbo].[telefono_personal]  WITH CHECK ADD  CONSTRAINT [FK_telefono_personal_personal] FOREIGN KEY([FkPersonal])
REFERENCES [dbo].[personal] ([RutPersonal])
GO
ALTER TABLE [dbo].[telefono_personal] CHECK CONSTRAINT [FK_telefono_personal_personal]
GO
ALTER TABLE [dbo].[tipo_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tipo_usuario_usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[usuario] ([Rut])
GO
ALTER TABLE [dbo].[tipo_usuario] CHECK CONSTRAINT [FK_tipo_usuario_usuario]
GO
USE [master]
GO
ALTER DATABASE [patagones7] SET  READ_WRITE 
GO
