<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'register.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	font: 14px/28px "微软雅黑";
}

.contact *:focus {
	outline: none;
}

.contact {
	width: 700px;
	height: auto;
	background: #f6f6f6;
	margin: 40px auto;
	padding: 10px;
}

.contact ul {
	width: 650px;
	margin: 0 auto;
}

.contact ul li {
	border-bottom: 1px solid #dfdfdf;
	list-style: none;
	padding: 12px;
}

.contact ul li label {
	width: 120px;
	display: inline-block;
	float: left;
}

.contact ul li input[type=text],.contact ul li input[type=password] {
	width: 220px;
	height: 25px;
	border: 1px solid #aaa;
	padding: 3px 8px;
	border-radius: 5px;
}

.contact ul li input:focus {
	border-color: #c00;
}

.contact ul li input[type=text] {
	transition: padding .25s;
	-o-transition: padding .25s;
	-moz-transition: padding .25s;
	-webkit-transition: padding .25s;
}

.contact ul li input[type=password] {
	transition: padding .25s;
	-o-transition: padding .25s;
	-moz-transition: padding .25s;
	-webkit-transition: padding .25s;
}

.contact ul li input:focus {
	padding-right: 70px;
}

.btn {
	position: relative;
	left: 300px;
}

.tips {
	color: rgba(0, 0, 0, 0.5);
	padding-left: 10px;
}

.tips_true,.tips_false {
	padding-left: 10px;
}

.tips_true {
	color: green;
}

.tips_false {
	color: red;
}
</style>
<script type="text/javascript">
	
	function checkForm() {
		//校验用户名:
		// 获得用户名文本框的值:
		var username = document.getElementById("username").value;
		if (username == null || username == '') {
			alert("用户名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var password = document.getElementById("password").value;
		if (password == null || password == '') {
			alert("密码不能为空!");
			return false;
		}
		// 校验确认密码:
		var repassword = document.getElementById("repassword").value;
		if (repassword != password) {
			alert("两次密码输入不一致!");
			return false;
		}
		//校验密码：
		var patt = /^[a-zA-Z0-9]{6,11}$/;
		if(!patt.test(document.getElementById('password')[0].value)){
			alert('密码太过简单');
			return false;
		}
	}
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
</script>
</head>

<body>
	<div class="contact">
		<s:form name="form1" action="/User_addBookUser.action"
			method="post" onsubmit="return checkForm()">
			<ul>
				<li>
					<label>姓名：</label> 
					<input type="text" id="username" name="Uname" class="text" placeholder="请输入用户名" maxlength="20" onblur="checkUsername()"/>
					<span id="span1"></span>
				</li>
				<li>
					<label>密码：</label> 
					<input type="password" name="Upassword" id="password" placeholder="请输入你的密码" />
				</li>
				<li>
					<label>确认密码：</label> 
					<input type="password" name="repassword" id="repassword" placeholder="请再次输入你的密码" />
				</li>
			
			</ul>
			<b class="btn"><input type="submit" value="提交" /> <input
				type="reset" value="取消" /></b>
		</s:form>
	</div>
	<div style="text-align: center;"></div>
</body>
</html>
