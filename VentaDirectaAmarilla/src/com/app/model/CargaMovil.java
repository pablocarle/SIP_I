package com.app.model;

import java.util.Collection;

public class CargaMovil {
	
	private int idCargaMovil;
	private Sucursal sucursal;
	private Movil movil;
	private Chofer chofer;
	private ReferenciaMovil referenciaMovil;
	private String orderProceso;
	private String cms;
	private Collection<CargaDetalle> detalles;
	private Collection<CargaHorarioChofer> choferes;
	
	public CargaMovil() {
		super();
	}

	public Sucursal getSucursal() {
		return sucursal;
	}

	public void setSucursal(Sucursal sucursal) {
		this.sucursal = sucursal;
	}

	public Movil getMovil() {
		return movil;
	}

	public void setMovil(Movil movil) {
		this.movil = movil;
	}

	public Chofer getChofer() {
		return chofer;
	}

	public void setChofer(Chofer chofer) {
		this.chofer = chofer;
	}

	public ReferenciaMovil getReferenciaMovil() {
		return referenciaMovil;
	}

	public void setReferenciaMovil(ReferenciaMovil referenciaMovil) {
		this.referenciaMovil = referenciaMovil;
	}

	public String getOrderProceso() {
		return orderProceso;
	}

	public void setOrderProceso(String orderProceso) {
		this.orderProceso = orderProceso;
	}

	public String getCms() {
		return cms;
	}

	public void setCms(String cms) {
		this.cms = cms;
	}

	public int getIdCargaMovil() {
		return idCargaMovil;
	}

	public void setIdCargaMovil(int idCargaMovil) {
		this.idCargaMovil = idCargaMovil;
	}

	public Collection<CargaDetalle> getDetalles() {
		return detalles;
	}

	public void setDetalles(Collection<CargaDetalle> detalles) {
		this.detalles = detalles;
	}

	public Collection<CargaHorarioChofer> getChoferes() {
		return choferes;
	}

	public void setChoferes(Collection<CargaHorarioChofer> choferes) {
		this.choferes = choferes;
	}
}
