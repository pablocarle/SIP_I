package com.app.model;

public class ItemPedido {

	private Producto producto;
	private double cantidad;

	public ItemPedido() {
		super();
	}
	
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
}
