create login Altas with password='123'
create user Usario1 for login Altas

create login Turnos with password='123'
create user Usuario2 for login Turnos

grant insert, update, delete on Profesional to Usario1
grant insert, update, delete on Servicio to Usario1
grant execute on p_alta_profesional to Usario1
grant execute on p_alta_servicio to Usario1
grant execute on p_baja_profesional to Usario1
grant execute on p_baja_servicio to Usario1
grant execute on p_modif_profesional to Usario1
grant execute on p_modif_servicio to Usario1
deny insert, update, delete on Horarios to Usario1
deny insert, update, delete on Horarios_recurr  to Usario1
deny execute on p_alta_horarios to Usario1
deny execute on p_alta_horarios_recurr to Usario1


grant insert, update, delete on Profesional to Usuario2
grant insert, update, delete on Servicio to Usuario2
grant insert, update, delete on Horarios to Usuario2
grant insert, update, delete on Horarios_recurr to Usuario2
grant execute on p_alta_profesional to Usuario2
grant execute on p_alta_servicio to Usuario2
grant execute on p_baja_profesional to Usuario2
grant execute on p_baja_servicio to Usuario2
grant execute on p_modif_profesional to Usuario2
grant execute on p_modif_servicio to Usuario2
grant execute on p_alta_horarios to Usuario2
grant execute on p_alta_horarios_recurr to Usuario2