package com.app.model;

public class ReferenciaMovil {
	
	private int idReferenciaMovil;
	private double latitud;
	private double longitud;
	private String descripcion;
	
	public ReferenciaMovil() {
		super();
	}

	public int getIdReferenciaMovil() {
		return idReferenciaMovil;
	}

	public void setIdReferenciaMovil(int idReferenciaMovil) {
		this.idReferenciaMovil = idReferenciaMovil;
	}

	public double getLatitud() {
		return latitud;
	}

	public void setLatitud(double latitud) {
		this.latitud = latitud;
	}

	public double getLongitud() {
		return longitud;
	}

	public void setLongitud(double longitud) {
		this.longitud = longitud;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
