USE master
GO

IF DB_ID('VentaDirecta') IS NOT NULL
	DROP DATABASE VentaDirecta;
GO

CREATE DATABASE VentaDirecta
GO

USE VentaDirecta
GO

create table usuario (
	idUsuario int not null identity(1,1),
	nombre varchar(255) not null,
	apellido varchar(255) not null,
	[login] varchar(25) not null,
	[password] varchar(6) not null,
	activo bit not null,
	constraint usuarios_pk primary key ( idUsuario )
);

create table viapago (
	idViaPago int not null identity(1,1),
	descripcion varchar(255) null,
	constraint viapagos_pk primary key ( idViaPago )
);


create table condicioniva (
	idCondicionIVA char(2) not null,
	descripcion varchar(255),
	constraint condicioniva_pk primary key (idCondicionIVA)
);

create table cliente (
	idCliente int not null,
	nombre varchar(255) not null,
	apellido varchar(255) not null,
	razonSocial varchar(255) not null,
	tipoNif int, 
	nif varchar(50),
	idCondicionIVA char(2) not null,
	idViaPago int not null,
	email varchar(255) null,
	telefono varchar(25) null,
	constraint clientes_pk primary key ( idCliente ),
	constraint clientes_viapago_fk foreign key ( idViaPago ) references viapago ( idViaPago ),
	constraint clientes_condicioniva_fk foreign key ( idCondicionIVA ) references condicioniva ( idCondicionIVA )
);

create unique index clientes_u_idx on cliente ( nif );

create table jornada(
	idJornada int not null,
	horaInicio int not null,
	minutoInicio int not null,
	horaFin int not null,
	minutoFin int not null,
	constraint jornadas_pk primary key ( idJornada )
);

create table provincia (
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint provincias_pk primary key ( idProvincia )
);

create table sucursal (
	idSucursal int not null,
	descripcion varchar(255) not null,
	latitud float not null,
	longitud float not null,
	idProvincia int not null,
	constraint sucursales_pk primary key ( idSucursal ),
	constraint sucursal_provincias_fk foreign key ( idProvincia ) references provincia ( idProvincia )
	
);

create table localidad (
	idLocalidad int not null identity(1,1),
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint localidades_pk primary key ( idLocalidad ),
	constraint localidades_provincias_fk foreign key ( idProvincia ) references provincia ( idProvincia )
);

create table direcciones (
	idDireccion int not null identity(1,1),
	idCliente int not null,
	idLocalidad int not null,
	idProvincia int not null,
	calle varchar(255) null,
	numero int null,
	piso int null,
	departamento varchar(50) null,
	edificio varchar(50) null,
	barrio varchar(255) null,
	manzana varchar(50) null,
	parcela varchar(50) null,
	sector varchar(50) null,
	casa varchar(50) null,
	chacra varchar(50) null,
	quinta varchar(50) null,
	latitud float not null,
	longitud float not null,
	constraint direcciones_pk primary key ( idDireccion ),
	constraint direcciones_clientes_fk foreign key ( idCliente ) references cliente ( idCliente ),
	constraint direcciones_localidades_fk foreign key ( idLocalidad ) references localidad ( idLocalidad ),
	constraint direcciones_provincias_fk foreign key ( idProvincia ) references provincia ( idProvincia )
	
);

create table chofer (
	idChofer int not null,
	nombre varchar(255) not null,
	apellido varchar(255) not null,
	estado bit not null,
	idUsuario int,
	constraint choferes_pk primary key ( idChofer ),
	constraint choferes_usuarios_fk foreign key ( idUsuario ) references usuario ( idUsuario )
);

create table moviles(
	idMovil int not null,
	marca varchar(255) not null,
	modelo varchar(255) not null,
	activo bit not null,
	constraint moviles_pk primary key ( idMovil )
);

create table referenciasmovil (
	idReferenciaMovil int not null,
	latitud float not null,
	longitud float not null,
	descripcion varchar(255) null,
	constraint referenciasmovil_pk primary key ( idReferenciaMovil )
);

create table posicionmovil (
	idEvento int not null identity(1,1),
	idMovil int not null,
	latitud float not null,
	longitud float not null,
	fechaEvento datetime not null,
	constraint posicionmovil_pk primary key ( idEvento ),
	constraint posicionmovil_movil_fk foreign key ( idMovil ) references moviles ( idMovil )
);

create table cargamovil (
	idCargaMovil int not null identity(1,1),
	idJornada int not null,
	idMovil int null,
	idChofer int null,
	idReferenciaMovil int null,
	ordenProceso varchar(255) null,
	cms varchar(255) null,
	estado bit not null,
	constraint cargamoviles_pk primary key ( idCargaMovil ),
	constraint cargamoviles_sucursal_fk foreign key ( idJornada ) references jornada( idJornada ),
	constraint cargamoviles_movil_fk foreign key ( idMovil ) references moviles ( idMovil ),
	constraint cargamoviles_chofer_fk foreign key ( idChofer ) references chofer ( idChofer ),
	constraint cargamoviles_ref_fk foreign key ( idReferenciaMovil ) references referenciasmovil ( idReferenciaMovil )
);

create table productos (
	idProducto varchar(2) not null,
	nombre varchar(255) not null,
	constraint productos_pk primary key (idProducto)
);

create table itemcargamovil (
	idCargaMovil int not null,
	idProducto varchar(2) not null,
	CantidadInicial int not null,
	stockLogico int not null,
	stockFisico int not null,
	constraint cargadetalle_pk primary key ( idCargaMovil, idProducto ),
	constraint cargadetalle_cargamovil_fk foreign key ( idCargaMovil ) references cargamovil ( idCargaMovil ),
	constraint cargadetalle_producto_fk foreign key ( idProducto ) references productos ( idProducto )
);

create table cargahorariochofer (
	idCargaHorarioChofer int not null identity(1,1),
	idCargaMovil int not null,
	horaInicio datetime not null,
	horaFin datetime not null,
	constraint cargahorariochofer_pk primary key ( idCargaHorarioChofer ),
	constraint cargahorariochofer_chofer_fk foreign key ( idCargaMovil ) references cargamovil ( idCargaMovil )
);

create unique index cargadetalle_uidx on itemcargamovil ( idCargaMovil, idProducto );

create table pedidos(
	idPedido int not null identity(1,1),
	idCliente int not null,
	idDireccion int not null,
	idCargaMovil int null,
	idViaPago int null,
	idUsuario int not null,
	fechaEntrega datetime not null,
	horaDesde datetime null,
	horaHasta datetime null,
	referenciaFactura varchar(255) null,
	constraint pedidos_pk primary key ( idPedido ),
	constraint pedidos_clientes_fk foreign key ( idCliente ) references cliente ( idCliente ),
	constraint pedidos_cargamovil_fk foreign key ( idCargaMovil ) references cargamovil ( idCargaMovil ),
	constraint pedidos_viapagos_fk foreign key ( idViaPago ) references viapago ( idViaPago ),
	constraint pedidos_usuarios_fk foreign key ( idUsuario ) references usuario ( idUsuario ),
	constraint pedidos_direcciones_fk foreign key ( idDireccion ) references direcciones ( idDireccion )
);


create table pedidodetalle (
	idPedido int not null,
	idProducto varchar(2) not null,
	cantidad int not null,
	cantidadEntregada int not null,
	cantidadFacturada int not null,
	constraint pedidodetalle_pk primary key ( idPedido, idProducto ),
	constraint pedidodetalle_pedido_fk foreign key ( idPedido ) references pedidos ( idPedido ),
	constraint pedidodetalle_producto_fk foreign key ( idProducto ) references productos ( idProducto )
);

create table turnos (
	idTurno int not null identity(1,1),
	idJornada int not null,
	idPedido int not null,
	fechaDesde datetime not null,
	fechaHasta datetime not null,
	constraint turnos_pk primary key ( idTurno ),
	constraint turnos_jornada_fk foreign key ( idJornada ) references jornada ( idJornada ),
	constraint turnos_pedidos_fk foreign key ( idPedido ) references pedidos ( idPedido )
);

create table estadospedido (
	idEstadoPedido int not null identity(1,1),
	nombre varchar(255) not null,
	constraint estadospedido_pk primary key ( idEstadoPedido )
);

create table estadopedido (
	idPedido int not null,
	idEstadoPedido int not null,
	fecha datetime not null,
	idUsuario int not null,
	constraint estadopedido_pk primary key ( idPedido, idEstadoPedido, fecha ),
	constraint estadopedido_pedido_fk foreign key ( idPedido ) references pedidos ( idPedido ),
	constraint estadopedido_usuarios_fk foreign key ( idUsuario ) references usuario ( idUsuario ),
	constraint estadopedido_estados_fk foreign key ( idEstadoPedido ) references estadospedido ( idEstadoPedido )
);

create table costoasignacion (
	idSucursal int not null,
	distanciaDesde float not null,
	distanciaHasta float not null,
	pedidosEnCola int not null,
	costo float not null,
	constraint pedidoscostos_sucursal_fk foreign key ( idSucursal ) references sucursal ( idSucursal )
);