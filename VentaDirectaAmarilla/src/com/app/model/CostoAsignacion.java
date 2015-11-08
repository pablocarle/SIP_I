package com.app.model;

public class CostoAsignacion {

	private int idCostoAsignacion;
	private Sucursal sucursal;
	private double distanciaDesde;
	private double distanciaHasta;
	private int pedidosEnCola;
	private double costo;
	
	public CostoAsignacion() {
		super();
	}

	public Sucursal getSucursal() {
		return sucursal;
	}

	public void setSucursal(Sucursal sucursal) {
		this.sucursal = sucursal;
	}

	public double getDistanciaDesde() {
		return distanciaDesde;
	}

	public void setDistanciaDesde(double distanciaDesde) {
		this.distanciaDesde = distanciaDesde;
	}

	public double getDistanciaHasta() {
		return distanciaHasta;
	}

	public void setDistanciaHasta(double distanciaHasta) {
		this.distanciaHasta = distanciaHasta;
	}

	public int getPedidosEnCola() {
		return pedidosEnCola;
	}

	public void setPedidosEnCola(int pedidosEnCola) {
		this.pedidosEnCola = pedidosEnCola;
	}

	public double getCosto() {
		return costo;
	}

	public void setCosto(double costo) {
		this.costo = costo;
	}

	public int getIdCostoAsignacion() {
		return idCostoAsignacion;
	}

	public void setIdCostoAsignacion(int idCostoAsignacion) {
		this.idCostoAsignacion = idCostoAsignacion;
	}
}
