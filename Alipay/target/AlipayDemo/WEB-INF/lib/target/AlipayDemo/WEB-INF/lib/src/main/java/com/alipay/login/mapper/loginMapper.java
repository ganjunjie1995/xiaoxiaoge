package com.alipay.login.mapper;

import com.alipay.login.entity.jingoUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * <dl>
 * <dt>loginMapper</dt>
 * <dd>Description:类描述</dd>
 * <dd>Copyright: 版权归杭州京歌科技有限公司所有</dd>
 * <dd>Company: 杭州京歌科技有限公司</dd>
 * <dd>CreateDate: 2017/8/17</dd>
 * </dl>
 *
 * @author 小杰
 */
@Repository
public interface loginMapper {
    jingoUser findByName(@Param("username")String username);
}
