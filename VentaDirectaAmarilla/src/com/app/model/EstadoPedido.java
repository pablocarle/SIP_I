package com.app.model;

public class EstadoPedido {
	
	private int idEstadoPedido;
	private String nombre;
	
	public EstadoPedido() {
		super();
	}

	public int getIdEstadoPedido() {
		return idEstadoPedido;
	}

	public void setIdEstadoPedido(int idEstadoPedido) {
		this.idEstadoPedido = idEstadoPedido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
