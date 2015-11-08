package com.app.model;

public class PedidoDetalle {

	private Pedido pedido;
	private Producto producto;
	private int cantidad;
	private int cantidadFacturada;
	private int cantidadEntregada;

	public PedidoDetalle() {
		super();
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public int getCantidadFacturada() {
		return cantidadFacturada;
	}

	public void setCantidadFacturada(int cantidadFacturada) {
		this.cantidadFacturada = cantidadFacturada;
	}

	public int getCantidadEntregada() {
		return cantidadEntregada;
	}

	public void setCantidadEntregada(int cantidadEntregada) {
		this.cantidadEntregada = cantidadEntregada;
	}
}
