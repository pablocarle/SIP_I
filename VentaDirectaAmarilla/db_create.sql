USE [master]
GO

/****** Object:  Database [ventadirecta]    Script Date: 01/11/2015 20:25:39 ******/
DROP DATABASE [ventadirecta]
GO

/****** Object:  Database [ventadirecta]    Script Date: 01/11/2015 20:25:39 ******/
CREATE DATABASE [ventadirecta] ON  PRIMARY 
( NAME = N'ventadirecta', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\ventadirecta.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ventadirecta_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\ventadirecta_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ventadirecta] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ventadirecta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ventadirecta] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ventadirecta] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ventadirecta] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ventadirecta] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ventadirecta] SET ARITHABORT OFF 
GO

ALTER DATABASE [ventadirecta] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ventadirecta] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ventadirecta] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ventadirecta] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ventadirecta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ventadirecta] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ventadirecta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ventadirecta] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ventadirecta] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ventadirecta] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ventadirecta] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ventadirecta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ventadirecta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ventadirecta] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ventadirecta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ventadirecta] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ventadirecta] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ventadirecta] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ventadirecta] SET  MULTI_USER 
GO

ALTER DATABASE [ventadirecta] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ventadirecta] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ventadirecta] SET  READ_WRITE 
GO


