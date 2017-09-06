package com.alipay.login.mapper;


import com.alipay.login.entity.BaseModel;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface BaseMapper<T, V> {

    public void add(T t);

    public Integer save(T t);

    public void update(T t);

    public void updateBySelective(T t);

    public void deleteById(Object id);

    public int queryByCount(BaseModel model);

    public List<V> queryByList(BaseModel model);

    public int queryCountByMap(Map<String, Object> params);

    public List<V> queryListByMap(Map<String, Object> params);

    public V queryById(Object id);

}
