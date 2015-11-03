package com.app.model;

import java.util.Collection;
import java.util.Date;

public class Pedido {
	
	private Collection<ItemPedido> items;
	private Cliente cliente;
	private CargaMovil cargaMovil;
	private Date fechaEntrega;
	private Date horaDesde;
	private Date horaHasta;
	private ViaPago viaPago;
	
	public Pedido() {
		super();
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public CargaMovil getCargaMovil() {
		return cargaMovil;
	}
	public void setCargaMovil(CargaMovil cargaMovil) {
		this.cargaMovil = cargaMovil;
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
	public Collection<ItemPedido> getItems() {
		return items;
	}
	public void setItems(Collection<ItemPedido> items) {
		this.items = items;
	}
}
