USE [patagones1]
GO
/****** Object:  Table [dbo].[cargo_personal]    Script Date: 11/06/2019 11:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo_personal](
	[id_cargo] [int] NOT NULL,
	[tipocargo_personal] [varchar](20) NULL,
 CONSTRAINT [PK_cargo_personal] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria_producto]    Script Date: 11/06/2019 11:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_producto](
	[id_categoria] [int] NOT NULL,
	[tipo_categoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_categoria_producto] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_glaseado]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_glaseado](
	[id_estado_glaseado] [int] NOT NULL,
	[tipo_estado] [varchar](20) NULL,
 CONSTRAINT [PK_estado_glaseado] PRIMARY KEY CLUSTERED 
(
	[id_estado_glaseado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_producto]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_producto](
	[id_estado_producto] [int] NOT NULL,
	[tipo_estado] [varchar](20) NULL,
 CONSTRAINT [PK_estado_producto] PRIMARY KEY CLUSTERED 
(
	[id_estado_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal](
	[rut_personal] [int] NOT NULL,
	[nombre_completo] [varchar](50) NULL,
	[apellido_paterno] [varchar](20) NULL,
	[apellido_materno] [varchar](20) NULL,
	[direccion_personal] [varchar](50) NULL,
	[fk_id_cargo] [int] NOT NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[rut_personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[producto] [varchar](50) NOT NULL,
	[fk_id_categoria] [int] NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_glaseado]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_glaseado](
	[id_producto_glaseado] [int] NOT NULL,
	[cantidad_glaseada] [int] NULL,
	[fecha_glaseada] [date] NULL,
 CONSTRAINT [PK_producto_glaseado] PRIMARY KEY CLUSTERED 
(
	[id_producto_glaseado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_proceso]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_proceso](
	[id_producto_proceso] [int] NOT NULL,
	[cantidad_procesada] [int] NOT NULL,
	[fecha_proceso] [date] NOT NULL,
	[producto_proceso] [varchar](50) NOT NULL,
	[fk_id_producto] [int] NOT NULL,
	[fk_id_producto_glaseado] [int] NOT NULL,
	[fk_estado_producto] [int] NOT NULL,
 CONSTRAINT [PK_producto_proceso] PRIMARY KEY CLUSTERED 
(
	[id_producto_proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[rut_ptoveedor] [int] NOT NULL,
	[nombre_proveedor] [varchar](20) NULL,
	[direccion_proveedor] [varchar](30) NULL,
	[telefono_proveedor] [int] NULL,
	[email_proveedor] [varchar](40) NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[rut_ptoveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_producto]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_producto](
	[id_producto_proveedor] [int] NOT NULL,
	[fk_id_producto] [int] NULL,
	[fk_id_provvedor] [int] NULL,
 CONSTRAINT [PK_proveedor_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_compra]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_compra](
	[id_registro_compra] [int] NOT NULL,
	[cantidad_comprada] [int] NOT NULL,
	[fecha_comprada] [date] NOT NULL,
	[n_factura] [varchar](30) NOT NULL,
	[lote] [varchar](50) NOT NULL,
	[tipo_documento] [varchar](50) NOT NULL,
	[fk_id_producto] [int] NOT NULL,
 CONSTRAINT [PK_registro_compra] PRIMARY KEY CLUSTERED 
(
	[id_registro_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefono_personal]    Script Date: 11/06/2019 11:15:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono_personal](
	[id_telefono_personal] [int] NOT NULL,
	[num1_personal] [int] NULL,
	[num2_personal] [int] NULL,
	[fk_rut_personal] [int] NULL,
 CONSTRAINT [PK_telefono_personal] PRIMARY KEY CLUSTERED 
(
	[id_telefono_personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[estado_glaseado]  WITH CHECK ADD  CONSTRAINT [FK_estado_glaseado_producto_glaseado] FOREIGN KEY([id_estado_glaseado])
REFERENCES [dbo].[producto_glaseado] ([id_producto_glaseado])
GO
ALTER TABLE [dbo].[estado_glaseado] CHECK CONSTRAINT [FK_estado_glaseado_producto_glaseado]
GO
ALTER TABLE [dbo].[personal]  WITH CHECK ADD  CONSTRAINT [FK_personal_cargo_personal] FOREIGN KEY([fk_id_cargo])
REFERENCES [dbo].[cargo_personal] ([id_cargo])
GO
ALTER TABLE [dbo].[personal] CHECK CONSTRAINT [FK_personal_cargo_personal]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_categoria_producto] FOREIGN KEY([fk_id_categoria])
REFERENCES [dbo].[categoria_producto] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_categoria_producto]
GO
ALTER TABLE [dbo].[producto_proceso]  WITH CHECK ADD  CONSTRAINT [FK_producto_proceso_estado_producto] FOREIGN KEY([fk_estado_producto])
REFERENCES [dbo].[estado_producto] ([id_estado_producto])
GO
ALTER TABLE [dbo].[producto_proceso] CHECK CONSTRAINT [FK_producto_proceso_estado_producto]
GO
ALTER TABLE [dbo].[producto_proceso]  WITH CHECK ADD  CONSTRAINT [FK_producto_proceso_producto] FOREIGN KEY([fk_id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[producto_proceso] CHECK CONSTRAINT [FK_producto_proceso_producto]
GO
ALTER TABLE [dbo].[producto_proceso]  WITH CHECK ADD  CONSTRAINT [FK_producto_proceso_producto_glaseado1] FOREIGN KEY([fk_id_producto_glaseado])
REFERENCES [dbo].[producto_glaseado] ([id_producto_glaseado])
GO
ALTER TABLE [dbo].[producto_proceso] CHECK CONSTRAINT [FK_producto_proceso_producto_glaseado1]
GO
ALTER TABLE [dbo].[proveedor_producto]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_producto_producto1] FOREIGN KEY([fk_id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[proveedor_producto] CHECK CONSTRAINT [FK_proveedor_producto_producto1]
GO
ALTER TABLE [dbo].[proveedor_producto]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_producto_proveedor] FOREIGN KEY([fk_id_provvedor])
REFERENCES [dbo].[proveedor] ([rut_ptoveedor])
GO
ALTER TABLE [dbo].[proveedor_producto] CHECK CONSTRAINT [FK_proveedor_producto_proveedor]
GO
ALTER TABLE [dbo].[registro_compra]  WITH CHECK ADD  CONSTRAINT [FK_registro_compra_producto] FOREIGN KEY([fk_id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[registro_compra] CHECK CONSTRAINT [FK_registro_compra_producto]
GO
ALTER TABLE [dbo].[telefono_personal]  WITH CHECK ADD  CONSTRAINT [FK_telefono_personal_personal] FOREIGN KEY([fk_rut_personal])
REFERENCES [dbo].[personal] ([rut_personal])
GO
ALTER TABLE [dbo].[telefono_personal] CHECK CONSTRAINT [FK_telefono_personal_personal]
GO
