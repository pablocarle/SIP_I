package com.app.model;

import java.util.Collection;

public class CargaMovil {
	
	private int idCargaMovil;
	private Jornada jornada;
	private Movil movil;
	private Chofer chofer;
	private ReferenciaMovil referenciaMovil;
	private String orderProceso;
	private String cms;
	private boolean estado;
	private Collection<ItemCargaMovil> detalles;
	private Collection<CargaHorarioChofer> choferes;
	
	public CargaMovil() {
		super();
	}

	public int getIdCargaMovil() {
		return idCargaMovil;
	}

	public void setIdCargaMovil(int idCargaMovil) {
		this.idCargaMovil = idCargaMovil;
	}

	public Jornada getJornada() {
		return jornada;
	}

	public void setJornada(Jornada jornada) {
		this.jornada = jornada;
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

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public Collection<ItemCargaMovil> getDetalles() {
		return detalles;
	}

	public void setDetalles(Collection<ItemCargaMovil> detalles) {
		this.detalles = detalles;
	}

	public Collection<CargaHorarioChofer> getChoferes() {
		return choferes;
	}

	public void setChoferes(Collection<CargaHorarioChofer> choferes) {
		this.choferes = choferes;
	}

	public ReferenciaMovil getReferenciaMovil() {
		return referenciaMovil;
	}

	public void setReferenciaMovil(ReferenciaMovil referenciaMovil) {
		this.referenciaMovil = referenciaMovil;
	}
}
