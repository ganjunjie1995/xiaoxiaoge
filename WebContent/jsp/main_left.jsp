<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <table>
  
  	<tr>
  	  <td bgcolor="gray" valign="middle" align="center" style="width:255px;height:15px">
  	 		<a style="text-decoration:none;font-size:30px;font-family:楷体;" href ="goods_add.jsp" target="main_right">添加 图书</a><br/><br/>
  		</td>
  	</tr> 
  	<tr>
  		<td bgcolor="gray" valign="middle" align="center" style="width:255px;height:15px">
  	  		<a style="text-decoration:none;font-size:30px;font-family:楷体;" href ="jsp/Goods_find.action" target="main_right">查找  图书</a><br/><br/>
  		</td>
  	</tr>
  	<tr>
  		<td bgcolor="gray" valign="middle" align="center" style="width:255px;height:15px">
  	   	 <a style="text-decoration:none;font-size:30px;font-family:楷体;" href ="Books_findAllBooks.action" target="main_right">查看所有图书</a><br/><br/>
  		</td>
  	</tr>
  	<tr>
  		<td bgcolor="gray" valign="middle" align="center" style="width:255px;height:15px">
  	    	<a style="text-decoration:none;font-size:30px;font-family:楷体;" href ="jsp/Goods_update.action" target="main_right">修改图书信息</a><br/><br/>
  		</td>
  	</tr>
  	<tr>
  		<td bgcolor="gray" valign="middle" align="center" style="width:255px;height:15px">
  	   	 <a style="text-decoration:none;font-size:30px;font-family:楷体;" href ="jsp/Goods_deleteGoods.action" target="main_right">删除  图书</a><br/><br/>
  		</td>
  	</tr>
  	<tr>
  		<td bgcolor="gray" align="center"  style="width:255px;height:15px;margin-top: 20px">
  	    	<a style="text-decoration:none;font-size:30px;font-family:楷体;"  href ="login.jsp" target="main">退出</a><br/><br/>
  		</td>
  	</tr>
  </table>
    </body>
</html>
