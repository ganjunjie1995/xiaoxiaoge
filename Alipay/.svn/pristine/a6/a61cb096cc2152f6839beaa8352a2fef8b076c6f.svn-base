<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>充值部分</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/static.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$("#beannum").siblings("span").css({"padding-left":"80px"});
		});
		function keyup(){
			var money = $("#money").val();
			$("#beannum").html(money);
		}
	</script>
	<style>
		#div_d{
			padding-top: 50px;
			float: left;
		}
	</style>
</head>
<body>
	<div  id="cash_div">
		<div id="div_ul">
			<jsp:include page="rechargehead.jsp"></jsp:include>
		</div>
		<div  id="div_f">
			<form action="" method="post">
				<div  id="div_d">
					<div>
						<label>充值金额:</label>
						<input id="money" type="text" name="totalmoney" onkeyup="keyup()"/><span>金豆个数:</span><span id="beannum"></span>
					</div>
					<dl>
						<dt>
							<span><img alt="" src="${pageContext.request.contextPath}/photo/alipay_logo.gif" /></span>
							<span>更改</span>
						</dt>
					</dl>
					<!-- <img alt="" src="/test/photo/alipay_logo.gif" /><br/> -->
					<input type="submit" name="tijaio" value="提交" style="width: 80px;height: 40px;"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>