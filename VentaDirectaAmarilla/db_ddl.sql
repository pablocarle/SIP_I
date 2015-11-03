/*
costoasignacion
estadopedido
estadospedido
pedidodetalle
pedidos
cargahorariochofer
cargadetalle
productos
cargamoviles
posicionmovil
referenciasmovil
moviles
choferes
jornadas
viapagos
direcciones
localidades
provincias
turnos
clientes
sucursales
usuarios
*/

IF OBJECT_ID('costoasignacion', 'U') IS NOT NULL DROP TABLE dbo.costoasignacion;
IF OBJECT_ID('estadopedido', 'U') IS NOT NULL DROP TABLE dbo.estadopedido;
IF OBJECT_ID('estadospedido', 'U') IS NOT NULL DROP TABLE dbo.estadospedido;
IF OBJECT_ID('pedidodetalle', 'U') IS NOT NULL DROP TABLE dbo.pedidodetalle;
IF OBJECT_ID('pedidos', 'U') IS NOT NULL DROP TABLE dbo.pedidos;
IF OBJECT_ID('cargahorariochofer', 'U') IS NOT NULL DROP TABLE dbo.cargahorariochofer;
IF OBJECT_ID('cargadetalle', 'U') IS NOT NULL DROP TABLE dbo.cargadetalle;
IF OBJECT_ID('productos', 'U') IS NOT NULL DROP TABLE dbo.productos;
IF OBJECT_ID('cargamoviles', 'U') IS NOT NULL DROP TABLE dbo.cargamoviles;
IF OBJECT_ID('posicionmovil', 'U') IS NOT NULL DROP TABLE dbo.posicionmovil;
IF OBJECT_ID('referenciasmovil', 'U') IS NOT NULL DROP TABLE dbo.referenciasmovil;
IF OBJECT_ID('moviles', 'U') IS NOT NULL DROP TABLE dbo.moviles;
IF OBJECT_ID('choferes', 'U') IS NOT NULL DROP TABLE dbo.choferes;
IF OBJECT_ID('jornadas', 'U') IS NOT NULL DROP TABLE dbo.jornadas;
IF OBJECT_ID('viapagos', 'U') IS NOT NULL DROP TABLE dbo.viapagos;
IF OBJECT_ID('direcciones', 'U') IS NOT NULL DROP TABLE dbo.direcciones;
IF OBJECT_ID('localidades', 'U') IS NOT NULL DROP TABLE dbo.localidades;
IF OBJECT_ID('provincias', 'U') IS NOT NULL DROP TABLE dbo.provincias;
IF OBJECT_ID('turnos', 'U') IS NOT NULL DROP TABLE dbo.turnos;
IF OBJECT_ID('clientes', 'U') IS NOT NULL DROP TABLE dbo.clientes;
IF OBJECT_ID('sucursales', 'U') IS NOT NULL DROP TABLE dbo.sucursales;
IF OBJECT_ID('usuarios', 'U') IS NOT NULL DROP TABLE dbo.usuarios;  

create table usuarios (
	idUsuario int not null identity(1,1),
	nombre varchar(255) not null,
	constraint usuarios_pk primary key ( idUsuario )
);

create table sucursales (
	idSucursal int not null,
	duracionTurno float,
	nombre varchar(255) not null,
	constraint sucursales_pk primary key ( idSucursal )
);

create table clientes (
	idCliente int not null,
	nombre varchar(255) not null,
	apellido varchar(255) not null,
	razonSocial varchar(255) not null,
	tipoNif int, 
	nif varchar(50),
	constraint clientes_pk primary key ( idCliente )
);

create unique index clientes_u_idx on clientes ( nif );

create table turnos (
	idTurno int not null identity(1,1),
	idJornada int not null,
	idPedido int not null,
	fechaDesde datetime not null,
	fechaHasta datetime not null,
	constraint turnos_pk primary key ( idTurno ),
	constraint turnos_jornada_fk foreign key ( idJornada ) references jornadas ( idJornada ),
	constraint turnos_pedidos_fk foreign key ( idPedido ) references pedidos ( idPedido )
);

create table provincias (
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint provincias_pk primary key ( idProvincia )
);

create table localidades (
	idLocalidad int not null identity(1,1),
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint localidades_pk primary key ( idLocalidad ),
	constraint localidades_provincias_fk foreign key ( idProvincia ) references provincias ( idProvincia )
);

create table direcciones (
	idDireccion int not null identity(1,1),
	idCliente int not null,
	idLocalidad int not null,
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
	constraint direcciones_pk primary key ( idDireccion ),
	constraint direcciones_clientes_fk foreign key ( idCliente ) references clientes ( idCliente ),
	constraint direcciones_localidades_fk foreign key ( idLocalidad ) references localidades ( idLocalidad )
);

create table viapagos (
	idViaPago int not null identity(1,1),
	nombre varchar(255) null,
	constraint viapagos_pk primary key ( idViaPago )
);

create table jornadas(
	idJornada int not null,
	horaInicio int not null,
	minutoInicio int not null,
	horaFin int not null,
	minutoFin int not null,
	constraint jornadas_pk primary key ( idJornada )
);

create table choferes(
	idChofer int not null,
	nombre varchar(255) not null,
	constraint choferes_pk primary key ( idChofer )
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

create table cargamoviles(
	idCargaMovil int not null identity(1,1),
	idSucursal int not null,
	idMovil int null,
	idChofer int null,
	idReferenciaMovil int null,
	ordenProceso varchar(255) null,
	cms varchar(255) null,
	constraint cargamoviles_pk primary key ( idCargaMovil ),
	constraint cargamoviles_sucursal_fk foreign key ( idSucursal ) references sucursales ( idSucursal ),
	constraint cargamoviles_movil_fk foreign key ( idMovil ) references moviles ( idMovil ),
	constraint cargamoviles_chofer_fk foreign key ( idChofer ) references choferes ( idChofer ),
	constraint cargamoviles_ref_fk foreign key ( idReferenciaMovil ) references referenciasmovil ( idReferenciaMovil )
);

create table productos (
	idProducto varchar(2) not null,
	nombre varchar(255) not null,
	constraint productos_pk primary key (idProducto)
);

create table cargadetalle (
	idCargaDetalle int not null identity(1,1),
	idCargaMovil int not null,
	idProducto varchar(2) not null,
	stockInicial int not null,
	stockLogico int not null,
	stockFisico int not null,
	constraint cargadetalle_pk primary key ( idCargaDetalle ),
	constraint cargadetalle_cargamovil_fk foreign key ( idCargaMovil ) references cargamoviles ( idCargaMovil ),
	constraint cargadetalle_producto_fk foreign key ( idProducto ) references productos ( idProducto )
);

create table cargahorariochofer (
	idCargaHorarioChofer int not null identity(1,1),
	idCargaMovil int not null,
	horaInicio datetime not null,
	horaFin datetime not null,
	constraint cargahorariochofer_pk primary key ( idCargaHorarioChofer ),
	constraint cargahorariochofer_chofer_fk foreign key ( idCargaMovil ) references cargamoviles ( idCargaMovil )
);

create unique index cargadetalle_uidx on cargadetalle ( idCargaMovil, idProducto );

create table pedidos(
	idPedido int not null identity(1,1),
	idCliente int not null,
	idCargaMovil int null,
	idViaPago int null,
	idUsuario int not null,
	fechaEntrega datetime not null,
	horaDesde datetime null,
	horaHasta datetime null,
	referenciaFactura varchar(255) null,
	constraint pedidos_pk primary key ( idPedido ),
	constraint pedidos_clientes_fk foreign key ( idCliente ) references clientes ( idCliente ),
	constraint pedidos_cargamovil_fk foreign key ( idCargaMovil ) references cargamoviles ( idCargaMovil ),
	constraint pedidos_viapagos_fk foreign key ( idViaPago ) references viapagos ( idViaPago ),
	constraint pedidos_usuarios_fk foreign key ( idUsuario ) references usuarios ( idUsuario )
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
	constraint estadopedido_usuarios_fk foreign key ( idUsuario ) references usuarios ( idUsuario )
	constraint estadopedido_estados_fk foreign key ( idEstadoPedido ) references estadospedido ( isEstadoPedido )
);

create table costoasignacion (
	idSucursal int not null,
	distanciaDesde float not null,
	distanciaHasta float not null,
	pedidosEnCola int not null,
	costo float not null,
	constraint pedidoscostos_sucursal_fk foreign key ( idSucursal ) references sucursales ( idSucursal )
);