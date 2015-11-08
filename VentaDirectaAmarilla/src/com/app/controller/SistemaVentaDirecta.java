package com.app.controller;

import java.util.Collection;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.app.db.MapperGenerico;
import com.app.db.MapperGenericoImpl;
import com.app.model.Usuario;

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
		MapperGenerico<Usuario, Integer> usuarios = new MapperGenericoImpl<Usuario, Integer>();
		Collection<Usuario> usuariosTodos = usuarios.buscarTodos(Usuario.class);
		System.out.println("Encontrados " + usuariosTodos.size());
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
