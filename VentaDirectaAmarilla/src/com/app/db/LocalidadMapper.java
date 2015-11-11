package com.app.db;

import java.util.Collection;

import com.app.model.Localidad;

public interface LocalidadMapper extends MapperGenerico<Localidad, Integer> {

	Collection<? extends Localidad> buscarDeProvincia(int idProvincia);

}
