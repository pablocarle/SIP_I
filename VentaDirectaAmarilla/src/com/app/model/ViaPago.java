package com.app.model;

public class ViaPago {
	
	private int idViaPago;
	private String descripcion;
	
	public ViaPago() {
		super();
	}

	@Override
	public String toString() {
		return descripcion;
	}
	
	public int getIdViaPago() {
		return idViaPago;
	}

	public void setIdViaPago(int idViaPago) {
		this.idViaPago = idViaPago;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
