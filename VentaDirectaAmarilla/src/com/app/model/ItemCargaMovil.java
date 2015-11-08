package com.app.model;

public class ItemCargaMovil {
	
	private CargaMovil cargaMovil;
	private Producto producto;
	private int cantidadInicial;
	private int stockLogico;
	private int stockFisico;
	
	public ItemCargaMovil() {
		super();
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

	public int getCantidadInicial() {
		return cantidadInicial;
	}

	public void setCantidadInicial(int cantidadInicial) {
		this.cantidadInicial = cantidadInicial;
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
