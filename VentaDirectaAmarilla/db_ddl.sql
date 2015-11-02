
/*
 * drop table clientes;
 * drop table itemspedido;
 * drop table pedidos;
 * drop table jornadas;
 * 
 * */

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
	idTurno int not null,
	idSucursal int not null,
	constraint turnos_pk primary key ( idTurno )
);

create table provincias (
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint provincias_pk primary key ( idProvincia )
);

create table localidades (
	idLocalidad int not null,
	idProvincia int not null,
	nombre varchar(255) not null,
	constraint localidades_pk primary key ( idLocalidad ),
	constraint localidades_provincias_fk foreign key ( idProvincia ) references provincias ( idProvincia )
);

create table direcciones (
	idDireccion int not null,
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
	idViaPago int not null,
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
	constraint choferes_pk primary key ( idChofer )
);

create table moviles(
	idMovil int not null,
	constraint moviles_pk primary key ( idMovil )
);

create table referenciasmovil (
	idReferenciaMovil int not null,
	latitud float not null,
	longitud float not null,
	descripcion varchar(255) null,
	constraint referenciasmovil_pk primary key ( idReferenciaMovil )
);

create table cargamoviles(
	idCargaMovil int not null,
	constraint cargamoviles_pk primary key ( idCargaMovil )
);

create table pedidos(
	idPedido int not null,
	idCliente int not null,
	idCargaMovil int null,
	idViaPago int null,
	fechaEntrega date not null,
	horaDesde date null,
	horaHasta date null,
	constraint pedidos_pk primary key ( idPedido ),
	constraint pedidos_clientes_fk foreign key ( idCliente ) references clientes ( idCliente ),
	constraint pedidos_cargamovil_fk foreign key ( idCargaMovil ) references cargamoviles ( idCargaMovil ),
	constraint pedidos_viapagos_fk foreign key ( idViaPago ) references viapagos ( idViaPago )
);

