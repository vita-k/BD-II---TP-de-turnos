create procedure p_alta_horarios
@id_servicio_profesional int=null,
@es_profesional bit=null,
@fecha_hora_inicio datetime=null,
@fecha_hora_fin datetime=null
as
if (@id_servicio_profesional is null) or (@es_profesional is null) or (@fecha_hora_inicio is null) or (@fecha_hora_fin is null)
begin
select 'Debe introducir servicio y horarios' --falta chequear si servicio profesional existe
return
end
else
begin 
insert into horarios (id_servicio_profesional, es_profesional, fecha_hora_inicio, fecha_hora_fin)
values (@id_servicio_profesional, @es_profesional, @fecha_hora_inicio, @fecha_hora_fin)
end;  
