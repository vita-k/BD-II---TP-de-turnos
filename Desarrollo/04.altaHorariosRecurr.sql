create procedure p_alta_horarios_recurr
@id_servicio_profesional int=null,
@es_profesional bit=null,
@tipo_repeticion char(1)=null,
@cantidad_repeticiones int=1,
@fecha_hora_inicio datetime=null,
@fecha_hora_fin datetime=null
as
if (@id_servicio_profesional is null) or (@es_profesional is null) or  (@tipo_repeticion is null) or (@fecha_hora_inicio is null) or (@fecha_hora_fin is null)
 begin
	select 'Debe introducir servicio y horarios' --falta chequear si servicio profesional existe, validar tipo de repeticion
	return
 end
else
 begin 
	declare @repeticiones int
	set @repeticiones=@cantidad_repeticiones
    if @tipo_repeticion='d'
		begin
		 while @repeticiones>0
			begin
				insert into horarios_recurr (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
				values (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, @fecha_hora_inicio, @fecha_hora_fin)
				set @repeticiones= @repeticiones-1
				set @fecha_hora_inicio= dateAdd(day,1,@fecha_hora_inicio)
				set @fecha_hora_fin=dateAdd(day,1,@fecha_hora_fin)
			end
		end --para weekday usar datepart
     else if @tipo_repeticion='l'
		begin
		SET DATEFIRST 7
		 while @repeticiones>0
			begin
			 if (datepart (weekday, @fecha_hora_inicio)!=1) and (datepart (weekday, @fecha_hora_inicio)!=7)
				begin
					insert into horarios_recurr (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
					values (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, @fecha_hora_inicio, @fecha_hora_fin)
				    set @repeticiones= @repeticiones-1
				end
              
			  set @fecha_hora_inicio= dateAdd(day,1,@fecha_hora_inicio)
			  set @fecha_hora_fin=dateAdd(day,1,@fecha_hora_fin)
			end
		end	
     else if @tipo_repeticion='s'	
		begin
		 while @repeticiones>0
			begin
				insert into horarios_recurr (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
				values (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, @fecha_hora_inicio, @fecha_hora_fin)
				set @repeticiones= @repeticiones-1
				set @fecha_hora_inicio= dateAdd(week,1,@fecha_hora_inicio)
				set @fecha_hora_fin=dateAdd(week,1,@fecha_hora_fin)
			end
		end
     else if @tipo_repeticion='m'	--inserta en el numero de dia elegido del prox mes, no toma "4th friday of each month" por ej
		begin
		 while @repeticiones>0
			begin
				insert into horarios_recurr (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
				values (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, @fecha_hora_inicio, @fecha_hora_fin)
				set @repeticiones= @repeticiones-1
				set @fecha_hora_inicio= dateAdd(month,1,@fecha_hora_inicio)
				set @fecha_hora_fin=dateAdd(month,1,@fecha_hora_fin)
			end
		end
     else
		begin
			select 'Tipo de repeticion no valida' --cambiar a mensaje de error
		end
 end;  
