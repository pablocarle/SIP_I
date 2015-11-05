package com.app.db;

import java.util.List;

import com.app.model.Cliente;

public interface ClienteMapper extends MapperGenerico<Cliente, Integer> {
	
	public List<Cliente> buscarPorNombreApellido(String nombre, String apellido);
	
}
