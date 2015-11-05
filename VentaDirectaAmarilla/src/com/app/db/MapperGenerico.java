package com.app.db;

import java.io.Serializable;
import java.util.Collection;

import org.hibernate.Query;
import org.hibernate.Session;

public interface MapperGenerico<T, ID extends Serializable> {
	
	public Session getSession();
	
	public Session openSession();
	
	public T buscarPorId(Class<T> clasz, ID id);
	
	public T encontrarUno(Query query);
	
	public Collection<T> buscarTodos(Class<T> clasz);
	
	public Collection<T> buscarMuchos(Query query);
	
	public void guardar(T t);
	
	public T actualizar(T t);
	
	public T eliminar(T id);
	
}
