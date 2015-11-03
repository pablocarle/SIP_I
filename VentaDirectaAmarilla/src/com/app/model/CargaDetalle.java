package com.app.model;

public class CargaDetalle {
	
	private int idCargaDetalle;
	private CargaMovil cargaMovil;
	private Producto producto;
	private int stockInicial;
	private int stockLogico;
	private int stockFisico;
	
	public CargaDetalle() {
		super();
	}

	public int getIdCargaDetalle() {
		return idCargaDetalle;
	}

	public void setIdCargaDetalle(int idCargaDetalle) {
		this.idCargaDetalle = idCargaDetalle;
	}

	public CargaMovil getCargaMovil() {
		return cargaMovil;
	}

	public void setCargaMovil(CargaMovil cargaMovil) {
		this.cargaMovil = cargaMovil;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public int getStockInicial() {
		return stockInicial;
	}

	public void setStockInicial(int stockInicial) {
		this.stockInicial = stockInicial;
	}

	public int getStockLogico() {
		return stockLogico;
	}

	public void setStockLogico(int stockLogico) {
		this.stockLogico = stockLogico;
	}

	public int getStockFisico() {
		return stockFisico;
	}

	public void setStockFisico(int stockFisico) {
		this.stockFisico = stockFisico;
	}
}
