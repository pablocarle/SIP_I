package com.app.db;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.app.controller.SistemaVentaDirecta;

public class MapperGenericoImpl<T, ID extends Serializable> implements MapperGenerico<T, ID> {

	private SessionFactory sessionFactory = SistemaVentaDirecta.getSistema().getSessionFactory(); 
	
	@Override
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Session openSession() {
		return sessionFactory.openSession();
	}

	@Override
	public T buscarPorId(Class<T> clasz, ID id) {
		Session session = this.getSession();
		T t = null;
		t = (T)session.get(clasz, id);
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T encontrarUno(Query query) {
		T t;
		t = (T) query.uniqueResult();
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Collection<? extends T> buscarTodos(Class<T> clasz) {
		Session session = this.getSession();
		List<T> t = null;
		Query query = session.createQuery("from " + clasz.getCanonicalName());
		t = query.list();
		return t;
	}

	@Override
	public Collection<? extends T> buscarMuchos(Map<String, Object> criteria) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void guardar(T t) {
		Session session = this.getSession();
		session.saveOrUpdate(t);
	}

	@Override
	public T actualizar(T t) {
		Session session = this.getSession();
		session.merge(t);
		return t;
	}

	@Override
	public T eliminar(T t) {
		Session session = this.getSession();
		session.delete(t);
		return t;
	}

}
