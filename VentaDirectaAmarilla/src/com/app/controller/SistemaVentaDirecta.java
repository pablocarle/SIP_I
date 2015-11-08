package com.app.controller;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SistemaVentaDirecta {
	
	private static SistemaVentaDirecta instancia;
	
	public static SistemaVentaDirecta getSistema() {
		if (instancia == null) {
			instancia = new SistemaVentaDirecta();
		}
		return instancia;
	}
	
	private Configuration hbmConfig = null;
	private SessionFactory factory = null;
	
	private SistemaVentaDirecta() {
		super();
		initConnection();
	}
	
	public static void main(String[] args) {
		SistemaVentaDirecta vd = SistemaVentaDirecta.getSistema();
		vd.getSessionFactory();
		
	}

	private void initConnection() {
		hbmConfig = new Configuration().configure();
		System.out.println("Init HBM: " + hbmConfig.getProperties());
		factory = hbmConfig.buildSessionFactory();
	}
	
	public SessionFactory getSessionFactory() {
		if (factory == null && hbmConfig != null) {
			factory = hbmConfig.buildSessionFactory();
			return factory;
		} else if (factory != null) {
			return factory;
		} else {
			throw new IllegalStateException("No se detecto configuracion hibernate activa");
		}
	}
}
