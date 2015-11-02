package com.app.controller;

import org.hibernate.cfg.Configuration;

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
		initConnection();
	}

	private void initConnection() {
		new Configuration().configure();
	}
}
