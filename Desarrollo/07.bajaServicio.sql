create procedure p_baja_servicio
@id int=null
as
if (@id is null)
begin
select 'Debe ingresar un id'
return
end
else
begin
update Servicio
set activo='false'
where id=@id
end;