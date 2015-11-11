package com.app.model;

public class Localidad {
	
	private int idLocalidad;
	private Provincia provincia;
	private String nombre;
	
	public Localidad() {
		super();
	}

	@Override
	public String toString() {
		return nombre;
	}
	
	public int getIdLocalidad() {
		return idLocalidad;
	}

	public void setIdLocalidad(int idLocalidad) {
		this.idLocalidad = idLocalidad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}
}
