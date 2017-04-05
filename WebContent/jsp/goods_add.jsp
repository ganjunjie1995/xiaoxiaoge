<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My JSP 'goos_xiangxi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
  </head>
  <style>
	td{
		text-align:left;
	}
</style>
  <body>
  <h3>${save}</h3>
	<center>
	<form action="Books_addBooks" namespace="/" method="post" >
			<table bgColor="#c0c0c0" width="400" height="300">
				<tr>
					<td bgcolor=green colspan=2><font color=white style="margin-left: 160px">添加图书</font></td>
				</tr>
				<tr>
					<td>图书名：</td>
					<td><input type="text" style="margin: 10px" size=20
						name="Bname"></td>
				</tr>
				<tr>
					<td>图书作者：</td>
					<td><input type="text" style="margin: 10px" size=20
						name="Bauthoy"></td>
				</tr>
				<tr>
					<td>图书价格：</td>
					<td><input type="text" style="margin: 10px" name="Bpice" size=10></td>
				</tr>
				<tr>
					<td>图书类别：</td>
					<td><input type="text" style="margin: 10px" name="Bcategory" size=10></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" style="margin-left: 150px" value="确认添加"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
