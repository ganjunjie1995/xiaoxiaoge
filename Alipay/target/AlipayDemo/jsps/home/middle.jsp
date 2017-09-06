<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>首页头</title>
		<script  src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/middle.css">
		<!-- <script  src="/test/js/pay.js"></script>  -->
		<script type="text/javascript">
			$(document).ready(function(){
				$("a").attr("class","tabSelected tabcho");
			});
		</script>
	</head>
	<body>
		<div >
			<div id="exit">
	 	 		<a href="" >退出</a><img src="${pageContext.request.contextPath}/photo/xinxi.png">
	 	 	</div>
	 	 	<div id="title">
	 			你好,${user.userName}<span>账号:${user.userPhone}</span><span >VVID:${user.vvid}</span>
	 		</div>
	 		
	 		<div id="title1">
	 			<span>信用分:0 </span><span>|</span><span>上次登录时间:${time}</span>
	 		</div>
	 	</div>
		<div id="title3">
			<div id="title4">
			<a id="purse" class="tabSelected tabcho" href="${pageContext.request.contextPath}/pureController/purse.do" target="iframe">我的钱袋</a>
			<a id="bean"  class="tabSelected tabcho" href="${pageContext.request.contextPath}/gb/gold.do" target="iframe">我的金豆</a>
			<a id="bill"  class="tabSelected tabcho" href="${pageContext.request.contextPath}/bill/bill.do" target="iframe">我的账单</a>
			<span style="padding: 140px">
				<a id="recharge" class="tabSelected tabcho" href="${pageContext.request.contextPath}/jsps/recharge/repurse.jsp" target="iframe"/>充值</a>
				<a id="cash" class="tabSelected tabcho" href="${pageContext.request.contextPath}/jsps/recharge/tixian.jsp" target="iframe"/>提现</a>
				<a id="transfer" class="tabSelected tabcho" href="${pageContext.request.contextPath}/jsps/recharge/billbean.jsp" target="iframe" />收付款</a>
			</span>
			</div> 		
		</div>
	 	<div style="padding-top: 20px;height:600px;" id="div1">
	    	<iframe id="ifamebuttom" name="iframe" width="100%" height="100%" scrolling="auto" style="height: 900px;border-top: 1;border-left: 0;border-right: 0"></iframe> 
		</div>

	</body>
</html>