package com.app.model;

import java.util.Date;

public class CargaHorarioChofer {
	
	private int idCargaHorarioChofer;
	private CargaMovil cargaMovil;
	private Date horaInicio;
	private Date horaFin;
	
	public CargaHorarioChofer() {
		super();
	}

	public int getIdCargaHorarioChofer() {
		return idCargaHorarioChofer;
	}

	public void setIdCargaHorarioChofer(int idCargaHorarioChofer) {
		this.idCargaHorarioChofer = idCargaHorarioChofer;
	}

	public CargaMovil getCargaMovil() {
		return cargaMovil;
	}

	public void setCargaMovil(CargaMovil cargaMovil) {
		this.cargaMovil = cargaMovil;
	}

	public Date getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(Date horaInicio) {
		this.horaInicio = horaInicio;
	}

	public Date getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(Date horaFin) {
		this.horaFin = horaFin;
	}
}
