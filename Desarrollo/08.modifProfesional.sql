create procedure p_modif_profesional
@id int=null,
@nombre varchar (255)=null,
@email varchar (80)=null,
@telefono varchar (40)=null,
@activo varchar (20)='true'
as
if (@id is null) or (@nombre is null)
begin
select 'Introducir id a modificar y nombre nuevo'
return
end
else
begin
update Profesional
set nombre=@nombre, email=@email, telefono=@telefono --agregar trigger para dejar los datos que no se quieren modificar
where id=@id
end;
