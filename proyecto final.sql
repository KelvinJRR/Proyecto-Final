drop table Categoria
create table Categoria(
	idCategoria int primary key identity,
	Nombre varchar(100) not null unique,
	Descripcion varchar(256) null, 
	Estado bit default(1)
);
Go

drop table Articulo
create table Articulo(
	idArticulo int primary key identity(1,1),
	idCategoria int not null,
	Codigo varchar(50) null,
	Nombre varchar(100) not null unique,
	Precio_Venta decimal(11,2) not null,
	Stock int not null,
	Descripcion varchar(256) null,
	Estado bit default(1),

	Foreign key (idCategoria) References Categoria(idCategoria)
);
Go

drop table Persona
create table Persona(
	idPersona int primary key identity(1,1),
	Genero varchar(20) not null, 
	Nombre varchar(100) not null, 
	Tipo_Documento varchar(20) null, 
	Num_Documento varchar(20) null,
	Direccion varchar(70) null, 
	Telefono varchar(20) null,
	Email varchar(50) null
);
Go

drop table Rol
Create table Rol(
	idRol int primary key identity(1,1),
	Nombre varchar(30) not null,
	Descripcion varchar(100) null,
	Estado bit default(1)
);
GO

drop table Usuario
Create table Usuario(
	idUsuario int primary key identity(1,1),
	idRol int not null, 
	Nombre varchar(100) not  null,
	Tipo_Documento varchar(20) null,
	Num_Documento varchar(20) null, 
	Direccion varchar(70) null,
	Telefono varchar(10) not null,
	Email varchar(50) not null,
	Contrasenia nvarchar(50) not null,
	estado bit default(1),
	Foreign Key (idRol) references rol (idRol)
);
GO

insert into Categoria(Nombre,Descripcion)
values('Telefonos','Esta es la categoria telefonos')
GO
insert into Categoria(Nombre,Descripcion)
values('Televisores','Esta es la categoria de los televisores')
GO
insert into Categoria(Nombre,Descripcion)
values('Laptops','Esta es la categoria de Laptops')
GO
insert into Categoria(Nombre,Descripcion)
values('PC Sobremesa','Esta es la categoria de las PC de Sobremesa')
GO
insert into Categoria(Nombre,Descripcion)
values('Accesorios Moviles','Esta es la categoria de los accesorios para tu telefono')
GO
insert into Categoria(Nombre,Descripcion)
values('Electrodomesticos','Esta es la categoria de los electrodomesticos')
GO
insert into Categoria(Nombre,Descripcion)
values('Perifericos','Esta es la categoria de los perifericos')
GO
insert into Categoria(Nombre,Descripcion)
values('Smartwatch','Esta es la categoria de Smartwatch')
GO
insert into Categoria(Nombre,Descripcion)
values('Monitores','Esta es la categoria de los monitores')
GO
insert into Categoria(Nombre,Descripcion)
values('Bocinas','Esta es la categoria de bocinas')
GO

select * from Categoria
GO

insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('1','101','Iphone 12','20000','5','Telefono de ultima tecnologia de la compañia Apple')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('2','201','Televisor LG 42"','17800','4','Televisor LG de 42", perfecto para ponerlo en tu sala')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('6','601','AirFryer','7500','8','Air Fryer, perfecto para los amantes a comer saludable y con menos grasa')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('10','1004','LG XBOOM','12890','10','De las mejores bocinas del mercado, la mejor para tus fiestas')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('7','712','Logitech G213','5000','10','El teclado Gaming preferido de la comunidad')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('8','830','Apple Watch Series 6','21000','6','El reloj mas inteligente del mercado')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('9','902','MSI Optix G271 27"','28400','4','Monitor especial para los amantes a los videojuegos')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('4','425','Lenovo ThinkCentre M270e','27000','3','Componentes: Intel Core i5-9400/ 8GB de RAM/ 256GB SSD')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('5','504','Cover Iphone X','1200','20','Cover rojo, original Apple')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('3','369','Lenovo V15','30000','5','Caracteristicas: Intel Core i3-1005G1/8GB de RAM/256GB SSD/ 15.6"')
go

select * from Articulo
GO

insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Hombre','Daniel Rodriguez','Cedula','00102034096','Calle La Fefita #4','8098706543','DanRod2020@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Femenino','Juana Maria Gutierrez','Cedula','40234560980','Calle La Grande #120','8297654321','Mariagutierrez@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Femenino','Paola Guerrero','Cedula','20132124078','Calle Primera Casa #2','84920345671','paola020405@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Masculino','Jose David del Rosario','Cedula','00140709085','Av. España, Edificio Larimar, Apt. 101','8095593456','JoseRosario2021@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Masculino','Juan Valdes','Cedula','40232124967','Callejon La serpiente #12','8094326789','juanvaldes1965@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Masculino','Gabriel Delgado','Cedula','00145894563','Calle Central #6','8297654321','Gabriel.delgado1998@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Femenino','Justina Alvarez','Cedula','40576458906','Calle La Almendra Seca #104','8408976543','Alvarezjustina1980@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Masculino','Luis Enrique Martinez','Cedula','00245213046','Aut. Duarte Km.18 #320','8098765432','luisenrique9704@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Femenino','Eva Sanchez','Cedula','00123456789','Calle La semilla Edificio 7 Apt. 304','8094567890','evasanchez2003@gmail.com')
go
insert into Persona(Genero, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email)
values('Masculino','Ezequiel Ramirez','Cedula','00123456078','Calle Tu casita #45','8490807234','ezequielramirez2004@gmial.com')
go

select * from Persona
GO

insert into Rol(Nombre,Descripcion)
values('Director General','Maximo cargo de la compañia')
go
insert into Rol(Nombre,Descripcion)
values('Community Maneger','Encargado de la publicidad y de las redes sociales')
go
insert into Rol(Nombre,Descripcion)
values('Recursos Humanos','Encargado/a de las contrataciones de personal y el orden del mismo')
go
insert into Rol(Nombre,Descripcion)
values('Portavoz','Encargado/a de hablar en los eventos publicos o privados')
go
insert into Rol(Nombre,Descripcion)
values('Gerente de Ventas','Encargado/a de supervisar todas las ventas')
go
insert into Rol(Nombre,Descripcion)
values('Gerente de almacen','Encargado/a de supervisar el almacen')
go
insert into Rol(Nombre,Descripcion)
values('Cajero/a','Se dedica a pasar los productos y cobrar')
go
insert into Rol(Nombre,Descripcion)
values('Almacenista','Se dedica a despachar los productos en el almacen')
go
insert into Rol(Nombre,Descripcion)
values('Reponedores ','Se dedican a traer la mercancia del almacen hasta la tienda')
go
insert into Rol(Nombre,Descripcion)
values('Limpiadores','Se encargan de la limpieza de la empresa')
go

select * from Rol
GO

insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('1','Jose Andres Guzman','Cedula','40256789021','Residencial Alameda Oeste, calle Los Almendros #4','8096543219','joseandreguzman99@kelvinshop.com','@J0s312-14')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('2','Raul Cifuentes','Cedula','00123456782','Residencial Alma Rosa III, Edificio 2 Apt. 201','8295678432','Raulcifuentes@kelvinshop.com','RaulAlmendraCarro')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('3','Sofia Ramirez','Cedula','00234567892','Calle Honguito Wa #43','8496540087','sofiaramirez003@kelvinshop','@Maria23-12-04')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('4','Juan Diaz','Cedula','40233112311','Av san martin #5','8095597878','Juandiaz@gmail.com','12345rf6789')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('5','Manuel Jimenez','Cedula','40233112312','Av. Sarasota #79','8095597890','Manueljimenez@yahoo.es','123er456789')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('6','Marcos Rodriguez','Cedula','40233112313','Av. Los Restauradores Casa #100','8095597800','MarcosRodriguez@gmail.com','123fsx456789')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('7','Juan Lopez','Cedula','40233112314','Calle La calmita #400','8095597850','juanlopez@gmail.com','123456cfs789')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('8','Maria de Jesus Lopez','Cedula','40233112315','Calle Los Cocos #2','829897653','MariaLopez@hotmail.com','12xcds3456789')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('9','Daniel Ramirez','Cedula','22878543780','Calle Villa Campo #4','8096543210','DaniRam@hotmail.com','@Daniel234560')
go
insert into Usuario(idRol, Nombre, Tipo_Documento, Num_Documento, Direccion, Telefono, Email, Contrasenia)
values('10','Anselma de La Rosa','Cedula','00123456780','Calle El Campito #120','8097654321','elmadelarosa@yahoo.com','123Rosa1435')
go


select * from Usuario
GO

