package com.app.db;

import java.util.Collection;
import java.util.Map;

public interface MapperGenerico<T, ID> {
	
	public T buscarPorId(ID id);
	
	public Collection<? extends T> buscarMuchos(Map<String, Object> criteria);
	
	public T actualizar(T t);
	
	public T eliminar(ID id);
	
}
