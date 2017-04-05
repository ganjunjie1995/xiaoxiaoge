package oa.jie.basedaoimpl;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.springframework.stereotype.Repository;

import oa.jie.basedao.BaseDao;
import util.LogUtil;
@SuppressWarnings( "unchecked")
@Repository
public class BaseDaoImpl<T> implements BaseDao<T>{
	@Resource
	protected SessionFactory sessionFactory;
	protected Logger logger=LogUtil.logger;
	protected  Class<T> clazz;
	
	public BaseDaoImpl() {
	 ParameterizedType  parm=(ParameterizedType) this.getClass().getGenericSuperclass();
	 this.clazz=(Class<T>) parm.getActualTypeArguments()[0];
	}
	@Override
	public void save(T t) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Transaction tr=	session.beginTransaction();
			session.save(t);
			tr.commit();
		} catch (Exception e) {
			logger.error("保存出錯");
		}

	}

	@Override
	public void update(T t) {
		try {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr=	session.beginTransaction();
		session.update(t);
		tr.commit();
		} catch (Exception e) {
			logger.error("update出錯");
		}
	}

	@Override
	public void delete(long id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Transaction tr=	session.beginTransaction();
			session.delete(id);
			tr.commit();
			} catch (Exception e) {
				logger.error("delete出錯");
			}
	}

	@Override
	public List<T> findAll(String table) {
		List<T> list=new ArrayList<T>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Transaction tr=	session.beginTransaction();
			 list= session.createQuery("from ?")
					.setParameter(0, table)
					.list();
			tr.commit();
			
			} catch (Exception e) {
				logger.error("delete出錯");
			}
		return list;
	}

	@Override
	public T findById(long id, String table) {
		T t = null;
		try {
			Session session = sessionFactory.getCurrentSession();
			Transaction tr = session.beginTransaction();
			t = (T) session.get(clazz, id);
			tr.commit();

		} catch (Exception e) {
			logger.error("delete出錯");
		}
		return t;
	}

}
