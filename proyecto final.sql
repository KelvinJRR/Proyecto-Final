create table Categoria(
	idCategoria int primary key identity,
	Nombre varchar(100) not null unique,
	Descripcion varchar(256) null, 
	Estado bit default(1)
);
Go

create table Articulo(
	idArticulo int primary key identity,
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

create table Persona(
	idPersona int primary key identity,
	Tipo_Persona varchar(20) not null, 
	Nombre varchar(100) not null, 
	Tipo_Documento varchar(20) null, 
	Num_Documento varchar(20) null,
	Direccion varchar(70) null, 
	Telefono varchar(20) null,
	Email varchar(50) null
);
Go

Create table Rol(
	idRol int primary key identity,
	Nombre varchar(30) not null,
	Descripcion varchar(100) null,
	Estado bit default(1)
);
GO

Create table Usuario(
	idUsuario int primary key identity,
	idRol int not null, 
	Nombre varchar(100) not  null,
	Tipo_Documento varchar(20) null,
	Num_Documento varchar(20) null, 
	Direccion varchar(70) null,
	Telefono varchar(10) not null,
	Email varchar(50) not null,
	password varbinary not null,
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
values('1','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go
insert into Articulo(idCategoria, Codigo, Nombre, Precio_Venta, Stock, Descripcion)
values('','','','','','')
go






select * from Articulo
GO


select * from Persona
GO
select * from Rol
GO
select * from Usuario
GO

