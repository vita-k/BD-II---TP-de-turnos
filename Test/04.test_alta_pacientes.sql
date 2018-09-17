create procedure p_alta_pacientes
@nombre varchar (255)=null,
@email varchar (80)=null,
@telefono varchar (40)=null,
@activo varchar (20)='true'
as
if (@nombre is null)
begin
select 'Debe introducir nombre del paciente'
return
end
else 
begin
insert into Pacientes (nombre, email, telefono, activo)
values (@nombre, @email, @telefono, @activo)
end;

exec p_alta_pacientes @nombre='Jaana Haer', @email='jaana@gmail.com'

select* from Pacientes

delete from Pacientes
where id=1
