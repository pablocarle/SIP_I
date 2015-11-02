package com.app.model;

import java.util.Collection;

public class Cliente {
	
	private int idCliente;
	private String apellido;
	private String nombre;
	private String razonSocial;
	private int tipoNif;
	private String nif;
	private Collection<Direccion> direcciones;
	private Collection<Pedido> pedidos;
	
	public Cliente() {
		super();
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getRazonSocial() {
		return razonSocial;
	}

	public void setRazonSocial(String razonSocial) {
		this.razonSocial = razonSocial;
	}

	public int getTipoNif() {
		return tipoNif;
	}

	public void setTipoNif(int tipoNif) {
		this.tipoNif = tipoNif;
	}

	public String getNif() {
		return nif;
	}

	public void setNif(String nif) {
		this.nif = nif;
	}

	public Collection<Direccion> getDirecciones() {
		return direcciones;
	}

	public void setDirecciones(Collection<Direccion> direcciones) {
		this.direcciones = direcciones;
	}

	public Collection<Pedido> getPedidos() {
		return pedidos;
	}

	public void setPedidos(Collection<Pedido> pedidos) {
		this.pedidos = pedidos;
	}
}
