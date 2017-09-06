<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提现部分</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/static.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$("#beannum").siblings("span").css({"padding-left":"80px"});
		});
	</script>
	
	<style>
		#div_d{
			padding-top: 50px;
			float: left;
		}
		#div-dd{
			padding-top: 25px;
		}
		#div-bb{
			margin-top: 25px;
			margin-bottom: 15px;
		}
	</style>
</head>
<body>
	<div id="cash_div">
		<div id="div_ul">
			<jsp:include page="billhead.jsp"></jsp:include>
		</div>
		<div id="div_f">
			<form action="" method="post">
				<div id="div_d">
					<div>
						<label>收款人&nbsp;&nbsp;&nbsp;:</label>
						<input type="text" name="vvid" placeholder="收款人"/>						
					</div>
					<div id="div-dd">
						<label>付款金额:</label>
						<input type="text" name="totalmoney"  placeholder="付款金额"/>
					</div>
					<div id="div-bb">
						<label>付款说明:</label>
						<input type="text" name="remark"  placeholder="付款说明"/> <br />
						<input type="submit" name="tijaio" value="下一步" style="width: 80px;height: 40px;"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>