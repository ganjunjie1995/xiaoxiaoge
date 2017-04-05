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
			<th>商品ID</th><th>商品名称</th><th>商品价格</th><th>库存量</th>
		</tr>
		<s:iterator value="list" var="list">
		<tr>
			<td><s:property value="#list.gid"/></td>
			<td><s:property value="#list.gname"/></td>
			<td><s:property value="#list.price"/></td>
			<td><s:property value="#list.num"/></td>
		</tr>	
		 </s:iterator> 
</table>
<table border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td  align="right">
					<span>第<s:property value="currPage"/>/<s:property value="totalPage"/></span>&nbsp;
					<span>总记录数:<s:property value="totalCount"/>&nbsp;&nbsp;每页显示:<s:property value="pageSize"/></span>&nbsp;
					<span>
					<s:if test="currPage!=1">
						<a href="<%=path%>/jsp/Goods_queryAllGoods.action?currPage=1">【首页】</a>
						<a href="<%=path%>/jsp/Goods_queryAllGoods.action?currPage=<s:property value="currPage-1"/>">【上一页】</a>
					</s:if>
					<s:if test="currPage!=totalPage">
						<a href="<%=path%>/jsp/Goods_queryAllGoods.action?currPage=<s:property value="currPage+1"/>">【下一页】</a>
						<a href="<%=path%>/jsp/Goods_queryAllGoods.action?currPage=<s:property value="totalPage"/>">【尾页】</a>
					</s:if>	
					</span>
				</td>
			</tr>
		</table>
</body>
</html>