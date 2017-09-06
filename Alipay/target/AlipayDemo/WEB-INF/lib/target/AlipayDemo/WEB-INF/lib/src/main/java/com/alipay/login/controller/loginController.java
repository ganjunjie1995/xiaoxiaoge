package com.alipay.login.controller;

import com.alipay.login.entity.jingoUser;
import com.alipay.login.service.loginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <dl>
 * <dt>loginController</dt>
 * <dd>Description:登录的controller</dd>
 * <dd>Copyright: 版权归杭州京歌科技有限公司所有</dd>
 * <dd>Company: 杭州京歌科技有限公司</dd>
 * <dd>CreateDate: 2017/8/17</dd>
 * </dl>
 *
 * @author 小杰
 */

@Controller
public class loginController {
    @Autowired
    private loginService loginservice;

    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public void login(HttpServletRequest request, @RequestParam String username, @RequestParam String password, HttpServletResponse response){

        if(username==null||username.equals("")){

            }

        if(password==null||password.equals("")){

        }
        jingoUser user=loginservice.findByName(username);

        int a=1;

    }


}
