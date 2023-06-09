USE [master]
GO
/****** Object:  Database [udb_virtual]    Script Date: 7/5/2023 21:30:09 ******/
CREATE DATABASE [udb_virtual]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'udb_virtual', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\udb_virtual.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'udb_virtual_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\udb_virtual_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [udb_virtual] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [udb_virtual].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [udb_virtual] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [udb_virtual] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [udb_virtual] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [udb_virtual] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [udb_virtual] SET ARITHABORT OFF 
GO
ALTER DATABASE [udb_virtual] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [udb_virtual] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [udb_virtual] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [udb_virtual] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [udb_virtual] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [udb_virtual] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [udb_virtual] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [udb_virtual] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [udb_virtual] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [udb_virtual] SET  DISABLE_BROKER 
GO
ALTER DATABASE [udb_virtual] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [udb_virtual] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [udb_virtual] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [udb_virtual] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [udb_virtual] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [udb_virtual] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [udb_virtual] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [udb_virtual] SET RECOVERY FULL 
GO
ALTER DATABASE [udb_virtual] SET  MULTI_USER 
GO
ALTER DATABASE [udb_virtual] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [udb_virtual] SET DB_CHAINING OFF 
GO
ALTER DATABASE [udb_virtual] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [udb_virtual] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [udb_virtual] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [udb_virtual] SET QUERY_STORE = OFF
GO
USE [udb_virtual]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [udb_virtual]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumno](
	[matricula_alumno] [int] NOT NULL,
	[nombres_alumno] [varchar](50) NOT NULL,
	[apellidos_alumno] [varchar](50) NOT NULL,
	[edad_alumno] [int] NOT NULL,
	[genero_alumno] [varchar](10) NOT NULL,
	[clave_c1] [int] NOT NULL,
 CONSTRAINT [pk_alu] PRIMARY KEY CLUSTERED 
(
	[matricula_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alumno_docente]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumno_docente](
	[materia_alumno] [int] NOT NULL,
	[clave_d1] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrera](
	[clave_c] [int] NOT NULL,
	[nombres_c] [varchar](50) NOT NULL,
	[apellidos_c] [varchar](50) NOT NULL,
	[duracion_c] [float] NOT NULL,
 CONSTRAINT [pk_cc] PRIMARY KEY CLUSTERED 
(
	[clave_c] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[docente]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docente](
	[clave_docente] [int] NOT NULL,
	[nombre_docente] [varchar](50) NOT NULL,
	[apellidos_docente] [varchar](50) NOT NULL,
	[direccion_docente] [varchar](200) NOT NULL,
	[telefono_docente] [bigint] NOT NULL,
 CONSTRAINT [pk_cp] PRIMARY KEY CLUSTERED 
(
	[clave_docente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[clave_materia] [int] NOT NULL,
	[nombre_materia] [varchar](50) NOT NULL,
	[credenciales] [float] NOT NULL,
 CONSTRAINT [pk_cm] PRIMARY KEY CLUSTERED 
(
	[clave_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia_alumno]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia_alumno](
	[clave_m1] [int] NOT NULL,
	[materia_alumno] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia_docente]    Script Date: 7/5/2023 21:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia_docente](
	[clave_m2] [int] NOT NULL,
	[clave_p2] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alumno]  WITH CHECK ADD  CONSTRAINT [fk_fc1] FOREIGN KEY([clave_c1])
REFERENCES [dbo].[carrera] ([clave_c])
GO
ALTER TABLE [dbo].[alumno] CHECK CONSTRAINT [fk_fc1]
GO
ALTER TABLE [dbo].[alumno_docente]  WITH CHECK ADD  CONSTRAINT [fk_fa1] FOREIGN KEY([materia_alumno])
REFERENCES [dbo].[alumno] ([matricula_alumno])
GO
ALTER TABLE [dbo].[alumno_docente] CHECK CONSTRAINT [fk_fa1]
GO
ALTER TABLE [dbo].[alumno_docente]  WITH CHECK ADD  CONSTRAINT [fk_fd1] FOREIGN KEY([clave_d1])
REFERENCES [dbo].[docente] ([clave_docente])
GO
ALTER TABLE [dbo].[alumno_docente] CHECK CONSTRAINT [fk_fd1]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_fal2] FOREIGN KEY([materia_alumno])
REFERENCES [dbo].[alumno] ([matricula_alumno])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_fal2]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_fm1] FOREIGN KEY([clave_m1])
REFERENCES [dbo].[materia] ([clave_materia])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_fm1]
GO
ALTER TABLE [dbo].[materia_docente]  WITH CHECK ADD  CONSTRAINT [fk_fm2] FOREIGN KEY([clave_m2])
REFERENCES [dbo].[materia] ([clave_materia])
GO
ALTER TABLE [dbo].[materia_docente] CHECK CONSTRAINT [fk_fm2]
GO
ALTER TABLE [dbo].[materia_docente]  WITH CHECK ADD  CONSTRAINT [fk_fp2] FOREIGN KEY([clave_p2])
REFERENCES [dbo].[docente] ([clave_docente])
GO
ALTER TABLE [dbo].[materia_docente] CHECK CONSTRAINT [fk_fp2]
GO
USE [master]
GO
ALTER DATABASE [udb_virtual] SET  READ_WRITE 
GO
