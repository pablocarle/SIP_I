package com.app.db;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

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
		Transaction tr = session.beginTransaction();
		T t = null;
		t = (T)session.get(clasz, id);
		tr.commit();
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T encontrarUno(Query query) {
		Transaction tr = getSession().beginTransaction();
		T t;
		t = (T) query.uniqueResult();
		tr.commit();
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Collection<T> buscarTodos(Class<T> clasz) {
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		List<T> t = null;
		Query query = session.createQuery("from Cliente");
		t = query.list();
		tr.commit();
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Collection<T> buscarMuchos(Query query) {
		Transaction tr = getSession().beginTransaction();
		List<T> t = null;
		t = query.list();
		tr.commit();
		return t;
	}

	@Override
	public void guardar(T t) {
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(t);
		tr.commit();
	}

	@Override
	public T actualizar(T t) {
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		session.merge(t);
		tr.commit();
		return t;
	}

	@Override
	public T eliminar(T t) {
		Session session = this.getSession();
		Transaction tr = session.beginTransaction();
		session.delete(t);
		tr.commit();
		return t;
	}

}
