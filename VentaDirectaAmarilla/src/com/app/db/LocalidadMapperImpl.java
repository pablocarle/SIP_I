package com.app.db;

import java.util.Collection;

import org.hibernate.Query;

import com.app.model.Localidad;

public class LocalidadMapperImpl extends MapperGenericoImpl<Localidad, Integer>
		implements LocalidadMapper {

	@Override
	public Collection<? extends Localidad> buscarDeProvincia(int idProvincia) {
		Query query = getSession().createQuery("from Localidad where idProvincia = :idProvincia");
		query.setParameter("idProvincia", idProvincia);
		return buscarMuchos(query);
	}

}
