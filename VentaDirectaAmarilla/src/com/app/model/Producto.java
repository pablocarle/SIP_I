package com.app.model;

public class Producto {
	
	private int idProducto;
	private String nombre;

	public Producto() {
		super();
	}
	
	public int getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}
	public String getDescripcion() {
		return nombre;
	}
	public void setDescripcion(String nombre) {
		this.nombre = nombre;
	}
}
