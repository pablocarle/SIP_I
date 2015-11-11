package com.app.model;

public class Chofer {

	private int idChofer;
	private String nombre;
	private String apellido;
	private boolean estado;
	private Usuario usuario;
	
	public Chofer() {
		super();
	}

	public int getIdChofer() {
		return idChofer;
	}

	public void setIdChofer(int idChofer) {
		this.idChofer = idChofer;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
