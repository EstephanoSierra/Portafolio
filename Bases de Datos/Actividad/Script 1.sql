USE [proc]
GO
/****** Object:  StoredProcedure [dbo].[borrar]    Script Date: 23/09/2022 08:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   proc [dbo].[borrar]
as 
begin
delete from notitas;
select * from notitas
end
