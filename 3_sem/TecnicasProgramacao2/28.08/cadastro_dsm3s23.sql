USE [master]
GO

/****** Object:  Database [cadastro_dsm3s23]    Script Date: 05/09/2023 19:25:45 ******/
CREATE DATABASE [cadastro_dsm3s23]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cadastro_dsm3s23', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.FATECMAUA\MSSQL\DATA\cadastro_dsm3s23.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cadastro_dsm3s23_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.FATECMAUA\MSSQL\DATA\cadastro_dsm3s23_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cadastro_dsm3s23].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [cadastro_dsm3s23] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ARITHABORT OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [cadastro_dsm3s23] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [cadastro_dsm3s23] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET  ENABLE_BROKER 
GO

ALTER DATABASE [cadastro_dsm3s23] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [cadastro_dsm3s23] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET RECOVERY FULL 
GO

ALTER DATABASE [cadastro_dsm3s23] SET  MULTI_USER 
GO

ALTER DATABASE [cadastro_dsm3s23] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [cadastro_dsm3s23] SET DB_CHAINING OFF 
GO

ALTER DATABASE [cadastro_dsm3s23] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [cadastro_dsm3s23] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [cadastro_dsm3s23] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [cadastro_dsm3s23] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [cadastro_dsm3s23] SET QUERY_STORE = OFF
GO

ALTER DATABASE [cadastro_dsm3s23] SET  READ_WRITE 
GO

USE [cadastro_dsm3s23]
GO

/****** Object:  Table [dbo].[tb_cadastro]    Script Date: 05/09/2023 19:26:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_cadastro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpf] [varchar](14) NULL,
	[nome] [varchar](60) NULL,
	[foto] [varchar](255) NULL
) ON [PRIMARY]
GO