package com.alipay.login.entity;

/**
 * <dl>
 * <dt>jingoUser</dt>
 * <dd>Description:类描述</dd>
 * <dd>Copyright: 版权归杭州京歌科技有限公司所有</dd>
 * <dd>Company: 杭州京歌科技有限公司</dd>
 * <dd>CreateDate: 2017/8/17</dd>
 * </dl>
 *
 * @author 小杰
 */
public class jingoUser {
    private int id;  //id
    private String userCode;  //用户编码
    private String userName;    //用户名
    private String password;    //密码
    private String userType;    //用户类型
    private String userPhone;   //用户手机号码
    private String alipayCode;  //支付宝号码

    public jingoUser(int id) {
        this.id = id;
    }

    public jingoUser() {
    }

    public jingoUser(int id, String userCode, String userName, String password, String userType, String userPhone, String alipayCode) {
        this.id = id;
        this.userCode = userCode;
        this.userName = userName;
        this.password = password;
        this.userType = userType;
        this.userPhone = userPhone;
        this.alipayCode = alipayCode;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getAlipayCode() {
        return alipayCode;
    }

    public void setAlipayCode(String alipayCode) {
        this.alipayCode = alipayCode;
    }
}
