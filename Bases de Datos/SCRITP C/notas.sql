USE [test]
GO
/****** Object:  StoredProcedure [dbo].[añadir]    Script Date: 22/09/2022 23:50:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER   proc [dbo].[añadir]
@estudiante varchar(50),
@actividad varchar(50),
@aspecto1 varchar(50),
@aspecto2 varchar(50),
@aspecto3 varchar(50),
@aspecto4 varchar(50),
@aspecto5 varchar(50),
@nota varchar(50)
as
begin
insert into actividad values(@estudiante,@actividad,@aspecto1,@aspecto2,@aspecto3,@aspecto4,@aspecto5,@nota)
end
