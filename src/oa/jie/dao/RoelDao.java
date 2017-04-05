package oa.jie.dao;

import oa.jie.basedao.BaseDao;
import oa.jie.modle.Roel;

public interface RoelDao extends BaseDao<Roel>{
	Roel findByName(String name);
}
