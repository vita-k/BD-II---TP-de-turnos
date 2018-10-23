create table Auditoria (
id int not null identity (1,1),
usuario varchar (60),
fecha datetime,
accion varchar (30),
tabla varchar (60))
