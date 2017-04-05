<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>${login}</h3>
<s:form action="User_login" namespace="/" method="post" theme="simple">
<table>
<tr><td>用户名</td><td><s:textfield name="name"/></td></tr>
<tr><td>密码</td><td><s:textfield name="password"/></td></tr>
<tr><td colspan="2"><input type="submit" value="登录"/></td></tr>
</table>
</s:form> 
<a href="jsp/register.jsp" style='text-decoration: none'>点我注册</a>
</body>
</html>