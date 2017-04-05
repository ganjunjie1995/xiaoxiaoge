package oa.jie.basedao;

import java.util.List;

public interface BaseDao<T> {
	void save(T t);
	void update(T t);
	void delete(long id);
	List<T> findAll(String table);
	T findById(long id,String table);
}
