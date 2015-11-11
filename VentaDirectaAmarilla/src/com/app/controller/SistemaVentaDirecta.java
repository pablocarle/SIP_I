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
	
	private static final SessionFactory factory = nuevaSessionFactory();
	
	private SistemaVentaDirecta() {
		super();
	}
	
	private static SessionFactory nuevaSessionFactory() {
		return new Configuration().configure().buildSessionFactory();
	}

	public static void main(String[] args) {
		MapperGenerico<Usuario, Integer> usuarioMapper = new MapperGenericoImpl<Usuario, Integer>();
		Collection<Usuario> usuarios = usuarioMapper.buscarTodos(Usuario.class);
		System.out.println("Encontrados " + usuarios.size());
	}

	public static SessionFactory getSessionFactory() {
		return factory;
	}
}
