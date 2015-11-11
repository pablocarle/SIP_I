package com.app.model;

public class Movil {
	
	private int idMovil;
	private String marca;
	private String modelo;
	private boolean activo;
	
	public Movil() {
		super();
	}

	public int getIdMovil() {
		return idMovil;
	}

	public void setIdMovil(int idMovil) {
		this.idMovil = idMovil;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public boolean isActivo() {
		return activo;
	}

	public void setActivo(boolean activo) {
		this.activo = activo;
	}
}
