package com.app.db;

import java.util.Collection;

import com.app.model.Direccion;

public interface DireccionMapper extends MapperGenerico<Direccion, Integer> {

	Collection<? extends Direccion> buscarDeCliente(int idCliente);

}
