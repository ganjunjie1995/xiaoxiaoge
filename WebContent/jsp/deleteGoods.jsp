<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	td{
		text-align:center;
	}
</style>
<body>
<table class="default" width="100%">
	<col width="10%">
	<col width="20%">
	<col width="5%">
	<col width="20%">
	<col width="30%">
	<col width="15%">
		<tr>
			<th>商品ID</th><th>商品名称</th><th>商品价格</th><th>库存量</th><th>删除</th>
		</tr>
		<s:iterator value="#session.goods" var="list">
			<tr>
				<td><s:property value="#list.gid"/></td>
				<td><s:property value="#list.gname"/></td>
				<td><s:property value="#list.price"/></td>
				<td><s:property value="#list.num"/></td>
				<td><a style='text-decoration: none' href="<%=path%>/jsp/Goods_delete.action?gid=<s:property value="#list.gid"/>" onclick="javascript:return confirm('真的要删除吗？');">删除</a></td>
			</tr>
		 </s:iterator> 
</table>
</body>
</html>