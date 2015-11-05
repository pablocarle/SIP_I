package com.app.controller;

import java.util.Collection;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.app.db.ClienteMapper;
import com.app.db.ClienteMapperImpl;
import com.app.model.Cliente;

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
		
		ClienteMapper mapperCliente = new ClienteMapperImpl();
		Collection<Cliente> clientes = mapperCliente.buscarTodos(Cliente.class);
		System.out.println(clientes.size());
		
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
