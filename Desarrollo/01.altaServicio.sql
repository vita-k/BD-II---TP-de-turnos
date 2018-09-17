create procedure p_alta_servicio
@nombre varchar(255)=null, 
@tipo char (2)=null,
@activo varchar (20)='true'
as 
if (@nombre is null) or (@tipo is null)
begin
select 'Debe introducir el nombre y tipo de servicio'
return
end
else
begin
insert into Servicio (nombre,tipo,activo)
values (@nombre, @tipo,@activo)
end;