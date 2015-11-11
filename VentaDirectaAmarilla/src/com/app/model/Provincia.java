package com.app.model;

import java.util.Collection;

public class Provincia {
	
	private int idProvincia;
	private String nombre;
	private Collection<Localidad> localidades;
	
	public Provincia() {
		super();
	}
	
	public int getIdProvincia() {
		return idProvincia;
	}
	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Collection<Localidad> getLocalidades() {
		return localidades;
	}
	public void setLocalidades(Collection<Localidad> localidades) {
		this.localidades = localidades;
	}
}
