package oa.jie.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import oa.jie.basedaoimpl.BaseDaoImpl;
import oa.jie.dao.RoelDao;
import oa.jie.modle.Roel;
@SuppressWarnings(value={ "unchecked"})
public class RoelDaoimpl extends BaseDaoImpl<Roel> implements RoelDao{	
	@Override
	public Roel findByName(String name) {
		List<Roel> list = null;
		try {
			Session session = sessionFactory.getCurrentSession();
			Transaction tr = session.beginTransaction();
			list = session.createQuery("from Roel where Rname=?").//
					setParameter(0, name).list();
			tr.commit();
		} catch (Exception e) {
			logger.error("²éÑ¯³ö´í");
		}
		return list.get(0);

	}

}
