
/*
 * drop table clientes;
 * drop table itemspedido;
 * drop table pedidos;
 * drop table jornadas;
 * 
 * */

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

create table viapagos (
	idViaPago int not null,
	constraint viapagos_pk primary key ( idViaPago )
);

create table jornadas(
);

create table choferes(
);

create table moviles(
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

