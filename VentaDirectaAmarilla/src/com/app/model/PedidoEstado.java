package com.app.model;

import java.util.Date;

public class PedidoEstado {
	
	private int idPedidoEstado;
	private Pedido pedido;
	private EstadoPedido estado;
	private Date fecha;
	private Usuario usuario;
	
	public PedidoEstado() {
		super();
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	public EstadoPedido getEstado() {
		return estado;
	}

	public void setEstado(EstadoPedido estado) {
		this.estado = estado;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public int getIdPedidoEstado() {
		return idPedidoEstado;
	}

	public void setIdPedidoEstado(int idPedidoEstado) {
		this.idPedidoEstado = idPedidoEstado;
	}
}
