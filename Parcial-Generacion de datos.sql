exec p_alta_servicio @nombre='Clinica', @tipo='01'
select * from Servicio
select * from Auditoria


exec p_alta_servicio @nombre='Traumatologia', @tipo='01'
exec p_alta_servicio @nombre='Ortopedia', @tipo='02'
exec p_alta_servicio @nombre='Dermatologia', @tipo='02'


exec p_alta_profesional @nombre='Juan Perez', @email='juanp@gmail.com', @telefono='1234'
exec p_alta_profesional @nombre='Paula Martinez', @email='pm@gmail.com', @telefono='12354354'
exec p_alta_profesional @nombre='Pablo Garcia', @email='pg@gmail.com', @telefono='12785'

exec p_alta_horarios @id_servicio_profesional=1, @es_profesional=1, @fecha_hora_inicio='20181215 14:00:00', @fecha_hora_fin='20181215 15:00:00'
exec p_alta_horarios @id_servicio_profesional=2, @es_profesional=1, @fecha_hora_inicio='20181110 14:00', @fecha_hora_fin='20181110 15:00'
exec p_alta_horarios @id_servicio_profesional=3, @es_profesional=1, @fecha_hora_inicio='20181210 10:00', @fecha_hora_fin='20181210 11:00'	

select * from servicio

select * from horarios_recurr

exec p_alta_horarios_recurr @id_servicio_profesional=1, @es_profesional=1, @tipo_repeticion='l', @cantidad_repeticiones=10, @fecha_hora_inicio='20181112 11:00:00', @fecha_hora_fin='20181112 12:00:00'
exec p_alta_horarios_recurr @id_servicio_profesional=1, @es_profesional=1, @tipo_repeticion='s', @cantidad_repeticiones=20, @fecha_hora_inicio='20181112 15:00:00', @fecha_hora_fin='20181112 16:00:00'

exec p_alta_pacientes @nombre='Tomas Guitierres', @email='tom@tom.com', @telefono='123113'
exec p_alta_pacientes @nombre='Pepe Sanchez', @email='pepe@gmail.com', @telefono='123113'
exec p_alta_pacientes @nombre='Irina Perez', @email='ir@gmail.com'

