package com.app.db;

import java.util.Collection;
import java.util.List;

import org.hibernate.Query;

import com.app.model.Cliente;

public class ClienteMapperImpl extends MapperGenericoImpl<Cliente, Integer>
		implements ClienteMapper {

	@Override
	public List<Cliente> buscarPorNombreApellido(String nombre, String apellido) {
		// TODO buscar cliente por nombre y apellido
		return null;
	}

	@Override
	public Collection<? extends Cliente> buscarPorMultiple(String idCliente,
			String nombre, String apellido, String razonSocial,
			String telefono, String numero, String calle) {
		StringBuilder queryStr = new StringBuilder("from Cliente where 1 = 1 ");
		if (idCliente != null && idCliente.length() > 0) queryStr.append(" and idCliente = :idCliente");
		if (nombre != null && nombre.length() > 0) queryStr.append(" and lower(nombre) like :nombre");
		if (apellido != null && apellido.length() > 0) queryStr.append(" and lower(apellido) like :apellido");
		if (razonSocial != null && razonSocial.length() > 0) queryStr.append(" and lower(razonSocial) like :razonSocial");
		if (telefono != null && telefono.length() > 0) queryStr.append(" and lower(telefono) like :telefono");
		if (numero != null && numero.length() > 0) queryStr.append(" and lower(numero) like :numero");
		if (calle != null && calle.length() > 0) queryStr.append(" and lower(calle) like :calle");
		
		Query query = getSession().createQuery(queryStr.toString());
		if (idCliente != null && idCliente.length() > 0) query.setParameter("idCliente", idCliente);
		if (nombre != null && nombre.length() > 0) query.setParameter("nombre", "%" + nombre + "%");
		if (apellido != null && apellido.length() > 0) query.setParameter("apellido", "%" + apellido + "%");
		if (razonSocial != null && razonSocial.length() > 0) query.setParameter("razonSocial", "%" + razonSocial + "%");
		if (telefono != null && telefono.length() > 0) query.setParameter("telefono", "%" + telefono + "%");
		if (numero != null && numero.length() > 0) query.setParameter("numero", "%" + numero + "%");
		if (calle != null && calle.length() > 0) query.setParameter("calle", "%" + calle + "%");
		
		return buscarMuchos(query);
	}
}
