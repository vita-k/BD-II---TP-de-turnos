create procedure p_baja_profesional
@id int=null
as
if (@id is null)
begin
select 'Debe ingresar un id'
return
end
else
begin
update Profesional
set activo='false'
where id=@id
end;
