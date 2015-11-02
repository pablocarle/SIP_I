package com.app.model;

public class Sucursal {
	
	private int idSucursal;
	private Float duracionTurno;
	private String nombre;
	
	public Sucursal() {
		super();
	}

	public int getIdSucursal() {
		return idSucursal;
	}

	public void setIdSucursal(int idSucursal) {
		this.idSucursal = idSucursal;
	}

	public Float getDuracionTurno() {
		return duracionTurno;
	}

	public void setDuracionTurno(Float duracionTurno) {
		this.duracionTurno = duracionTurno;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
