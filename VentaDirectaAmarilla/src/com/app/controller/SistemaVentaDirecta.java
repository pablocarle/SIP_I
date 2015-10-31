package com.app.controller;

public class SistemaVentaDirecta {
	
	private static SistemaVentaDirecta instancia;
	
	public static SistemaVentaDirecta getSistema() {
		if (instancia == null) {
			instancia = new SistemaVentaDirecta();
		}
		return instancia;
	}
	
	private SistemaVentaDirecta() {
		super();
	}
}
