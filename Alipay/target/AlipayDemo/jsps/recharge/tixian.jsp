<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提现部分</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/static.css">
	<style>
		#div_d{
			padding-top: 50px;
			float: left;
		}
	</style>
</head>
<body>
	<div id="cash_div">
		<div id="div_ul">
			<jsp:include page="rehead.jsp"></jsp:include>
		</div>
		<div id="div_f">
			<form action="" method="post">
				<div id="div_d">
					<div>
						<label>提现金额:</label>
						<input type="text" name="totalmoney"/>
					</div>
					<div>
						<dl>
							<dt>
								<span><img alt="" src="/test/photo/alipay_logo.gif" /></span>
								<span>更改</span>
							</dt>
						</dl>
						<input type="submit" name="tijaio" value="提交" style="width: 80px;height: 40px;"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>