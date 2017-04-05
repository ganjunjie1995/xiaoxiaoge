<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <%@page import="action.GoodsAction"%>
<%@page import="entity.Goods"%> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My JSP 'goos_xiangxi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  <style>
	td{
		text-align:center;
	}
</style>
  <body>
  
	<center>
		<%-- <%
		Goods good = (Goods) session.getAttribute("goods1");
	%> --%>
	<form action="<%=path%>/jsp/Goods_updateone.action" method="POST">
			<table bgColor="#c0c0c0">
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>商品详细页面</font></td>
				</tr>
				<tr>
					<td>商品id：</td>
					<td><input type="text" size=20 name="gid"
						value=""></td>
				</tr>
				<tr>
					<td>商品名：</td>
					<td><input type="text" style="margin: 10px" size=20
						name="gname" value=""></td>
				</tr>
				<tr>
					<td>商品数量：</td>
					<td><input type="text" style="margin: 10px" size=20
						name="num" value=""></td>
				</tr>
				<tr>
					<td>商品价格：</td>
					<td><input type="text" name="price" size=30
						value="%>"></td>
				</tr>
				<!--  <tr>
					<td>联系人：</td>
					<td><input type="text" readonly="true" style="margin: 10px" size=20
						name="uname" value=""></td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td><input type="text"  readonly="true" style="margin: 10px" size=20
						name="utel" value=""></td>
				</tr>
				-->
				<tr>
					<td colspan="2"><input type="submit" value="确认修改"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
