package com.app.model;

import java.util.Collection;
import java.util.Date;

public class Pedido {
	
	private int idPedido;
	private Collection<PedidoDetalle> items;
	private Cliente cliente;
	private Direccion direccion;
	private CargaMovil cargaMovil;
	private Usuario usuario;
	private Date fechaEntrega;
	private Date horaDesde;
	private Date horaHasta;
	private ViaPago viaPago;
	private String referenciaFactura;
	private Collection<PedidoEstado> estados;
	
	public Pedido() {
		super();
	}

	public int getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}

	public Collection<PedidoDetalle> getItems() {
		return items;
	}

	public void setItems(Collection<PedidoDetalle> items) {
		this.items = items;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Direccion getDireccion() {
		return direccion;
	}

	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
	}

	public CargaMovil getCargaMovil() {
		return cargaMovil;
	}

	public void setCargaMovil(CargaMovil cargaMovil) {
		this.cargaMovil = cargaMovil;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Date getFechaEntrega() {
		return fechaEntrega;
	}

	public void setFechaEntrega(Date fechaEntrega) {
		this.fechaEntrega = fechaEntrega;
	}

	public Date getHoraDesde() {
		return horaDesde;
	}

	public void setHoraDesde(Date horaDesde) {
		this.horaDesde = horaDesde;
	}

	public Date getHoraHasta() {
		return horaHasta;
	}

	public void setHoraHasta(Date horaHasta) {
		this.horaHasta = horaHasta;
	}

	public ViaPago getViaPago() {
		return viaPago;
	}

	public void setViaPago(ViaPago viaPago) {
		this.viaPago = viaPago;
	}

	public String getReferenciaFactura() {
		return referenciaFactura;
	}

	public void setReferenciaFactura(String referenciaFactura) {
		this.referenciaFactura = referenciaFactura;
	}

	public Collection<PedidoEstado> getEstados() {
		return estados;
	}

	public void setEstados(Collection<PedidoEstado> estados) {
		this.estados = estados;
	}
}
