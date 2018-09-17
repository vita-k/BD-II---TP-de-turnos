create procedure p_alta_profesional
@nombre varchar (255)=null,
@email varchar (80)=null,
@telefono varchar (40)=null,
@activo varchar (20)='true'
as
if (@nombre is null)
begin
select 'Debe introducir nombre del profesional'
return
end
else 
begin
insert into Profesional (nombre, email, telefono, activo)
values (@nombre, @email, @telefono, @activo)
end;
