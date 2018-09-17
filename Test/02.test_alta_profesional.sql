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



exec p_alta_profesional @nombre='Juliana Korinek', @telefono='1541284444'

select* from Profesional

delete from Profesional
where nombre='Juliana Korinek'

if object_id ('p_alta_profesional') is not null
drop proc p_alta_profesional