package com.app.model;

public class Jornada {
	
	private int idJornada;
	private int horaInicio;
	private int minutoInicio;
	private int horaFin;
	private int minutoFin;
	
	public Jornada() {
		super();
	}

	public int getIdJornada() {
		return idJornada;
	}

	public void setIdJornada(int idJornada) {
		this.idJornada = idJornada;
	}

	public int getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(int horaInicio) {
		this.horaInicio = horaInicio;
	}

	public int getMinutoInicio() {
		return minutoInicio;
	}

	public void setMinutoInicio(int minutoInicio) {
		this.minutoInicio = minutoInicio;
	}

	public int getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(int horaFin) {
		this.horaFin = horaFin;
	}

	public int getMinutoFin() {
		return minutoFin;
	}

	public void setMinutoFin(int minutoFin) {
		this.minutoFin = minutoFin;
	}
}
