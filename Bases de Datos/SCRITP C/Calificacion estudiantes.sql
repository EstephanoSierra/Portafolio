create or alter proc añadir_a
@estudiante varchar(50),
@actividades varchar(50),
@aspecto1 varchar(50),
@aspecto2 varchar(50),
@aspecto3 varchar(50),
@aspecto4 varchar(50),
@aspecto5 varchar(50),
@nota varchar(50)
as 
begin
insert into notitas values(@estudiante,@actividades,@aspecto1,@aspecto2,@aspecto3,@aspecto4,@aspecto5,@nota)
end
go

create or alter proc selectt

as 
begin
select * from notitas;
end
go


create or alter proc borrar
as 
begin
delete from notitas;
end
go

select * from notitas;
