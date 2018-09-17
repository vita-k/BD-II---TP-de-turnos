create procedure p_modif_servicio
@id int=null,
@nombre varchar (50)=null,
@tipo char (2)=null,
@activo varchar (20)='true'
as 
if (@nombre is null) or (@tipo is null) or (@id is null)
begin
select 'Debe ingresar un id y el nuevo nombre y tipo de servicio'
return
end
else 
begin
update Servicio
set nombre=@nombre, tipo=@tipo
where id=@id
end;


exec p_modif_servicio @id=5, @nombre='a', @tipo='b'

select * from Servicio