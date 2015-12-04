package com.app.db;

import com.app.model.Jornada;

public class JornadaMapperImpl extends MapperGenericoImpl<Jornada, Integer>
		implements JornadaMapper {

	@Override
	public Jornada encontrarJornadaActiva(int idSucursal) {
		//TODO Jornada activa (falta idSucursal en tabla de jornadas)
		return null;
	}

}
