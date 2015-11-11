package com.app.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.app.db.CondicionIVAMapper;
import com.app.db.CondicionIVAMapperImpl;
import com.app.db.LocalidadMapper;
import com.app.db.LocalidadMapperImpl;
import com.app.db.MapperGenerico;
import com.app.db.MapperGenericoImpl;
import com.app.db.ProvinciaMapper;
import com.app.db.ProvinciaMapperImpl;
import com.app.db.ViaPagoMapper;
import com.app.db.ViaPagoMapperImpl;
import com.app.model.CondicionIVA;
import com.app.model.Localidad;
import com.app.model.Provincia;
import com.app.model.Usuario;
import com.app.model.ViaPago;

public class SistemaVentaDirecta {
	
	private static SistemaVentaDirecta instancia;
	
	public static SistemaVentaDirecta getSistema() {
		if (instancia == null) {
			instancia = new SistemaVentaDirecta();
		}
		return instancia;
	}
	
	private static final SessionFactory factory = nuevaSessionFactory();
	
	private ViaPagoMapper vpMapper = new ViaPagoMapperImpl();
	private CondicionIVAMapper ciMapper = new CondicionIVAMapperImpl();
	private ProvinciaMapper provMapper = new ProvinciaMapperImpl();
	private LocalidadMapper localidadMapper = new LocalidadMapperImpl();
	
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

	public List<Provincia> obtenerProvincias() {
		return new ArrayList<Provincia>(provMapper.buscarTodos(Provincia.class));
	}

	public List<Localidad> obtenerLocalidades(int idProvincia) {
		return new ArrayList<Localidad>(localidadMapper.buscarDeProvincia(idProvincia));
	}

	public List<ViaPago> obtenerViasPago() {
		return new ArrayList<ViaPago>(vpMapper.buscarTodos(ViaPago.class));
	}

	public List<CondicionIVA> obtenerCondicionesIVA() {
		return new ArrayList<CondicionIVA>(ciMapper.buscarTodos(CondicionIVA.class));
	}
}
