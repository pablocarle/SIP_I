package com.app.db;

import java.util.Collection;
import java.util.List;

import com.app.model.Cliente;

public interface ClienteMapper extends MapperGenerico<Cliente, Integer> {
	
	public List<Cliente> buscarPorNombreApellido(String nombre, String apellido);

	public Collection<? extends Cliente> buscarPorMultiple(String idCliente,
			String nombre, String apellido, String razonSocial,
			String telefono, String numero, String calle);
	
}
