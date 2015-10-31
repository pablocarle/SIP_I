package com.app.model;

import java.util.Date;
import java.util.List;

public class Pedido {
	
	private List<ItemPedido> items;
	private Cliente cliente;
	private CargaMovil cargaMovil;
	private Date fechaEntrega;
	private Date horaDesde;
	private Date horaHasta;
	private ViaPago viaPago;
	
	public Pedido() {
		super();
	}
	
	public List<ItemPedido> getItems() {
		return items;
	}
	public void setItems(List<ItemPedido> items) {
		this.items = items;
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
}
