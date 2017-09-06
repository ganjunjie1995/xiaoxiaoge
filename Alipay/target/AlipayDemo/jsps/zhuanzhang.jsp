<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script src="/test/js/jquery-3.1.1.min.js"></script> 
	<!-- <style type="text/css">
	
	.content_div_middle{
	width: 0;
	height: 93%;
	float: left;
}
#loading {
  display: none;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 100%;
  z-index: 100; 
}
.mainContent{
	width:100%;
	height:640px;
	margin-bottom:20px;
	float:left;	
}
.mainContent1{
	width:70%;
	height:640px;
	margin-bottom:20px;
	float:right;	
}
.basicInfoDiv {
    width: 100%;
    height: 99%;
    display: block;
}
.content_div {
    width: 100%;
    height: 100%;
    float: left;
}
.content_div_tabs {
    width: 100%;
    height: 50px;
    background-color: #3288FF;
}
.tabSelected {
    color: #3288FF;
    background-color:white;
    border:1px solid #3288FF;
/*     border-bottom: 3px solid #3288FF; */
}
.tabChoose {
/*  	color: white; */
    width: 60px;
    height: 20px;;
    font-size: 17px;
    text-align: center;
    float: left;
    cursor: pointer;
    padding:3px;
    margin-top:14px;
    border:1px solid white;
    margin-right: 20px;
    border-radius: 2px 2px 2px 2px;
}
</style> -->
	<script type="text/javascript">
	$(document).ready(function(){
	//var user=${username};
	
	$('.content_div_tabs').find('div#tabChoose').click(function(){
		  $(this).addClass('tabSelected').siblings().removeClass('tabSelected'); //切换选项卡标签的class
			
		}); 

	
		/* $('#tabChoose1').click(function(){
			  clearClass();
			  var system=$('#zhuanzhangin').val();
			 $("#tabChoose1").attr("class","tabSelected tabChoose");
			$("#ifamebuttom").attr("src","${pageContext.request.contextPath}/user/itemlist.do?system="+system+"&username="+user);
		}); */
		$('#tabChoose2').click(function(){
			alert("gtgtg");
			clearClass();
			 //var system=$('#zhuanzhangout').val();
			  
			$("#tabChoose2").attr("class","tabSelected tabChoose");
			$("#ifamebuttom").attr("src","/test/index.jsp");
			
		});
		/* $('#tabChoose3').click(function(){
			clearClass();
			 var system=$('#xiangxixinxi').val();
			  
			$("#tabChoose3").attr("class","tabSelected tabChoose");
			$("#ifamebuttom").attr("src","${pageContext.request.contextPath}/user/itemlist.do?system="+system+"&username="+user);
			
		}); */
		
	
		function clearClass(){
			$("#tabChoose1").attr("class","tabChoose");
			$("#tabChoose2").attr("class","tabChoose");
		    $("#tabChoose3").attr("class","tabChoose");
		  }
});
	</script>
  </head>
  
  <body>
    	<div class="content_div">
		<div class="content_div_tabs">
			<!-- <div style="float:left;"><img alt="" src="../images/logo.png">
			</div> -->
			<div style="float:left;">
	
			</div>
			<div style="float: left;padding-left: 145px;">
				<div id="tabChoose1" class="tabChoose tabSelected" ><input id="zhuanzhangin" type="hidden"  value="zhuanzhangin">到钱袋</div>
				
				<div id="tabChoose2" class="tabChoose" ><input id="zhuanzhangout" type="hidden" value="zhuanzhangout">收款</div>
				<div id="tabChoose3" class="tabChoose" ><input id="xiangxixinxi" type="hidden" value="xiangxixinxi">详细信息</div>
			</div>
		</div>
		<div class="mainContent">
	    	<iframe id="ifamebuttom" width="100%" height="100%" scrolling="auto" frameborder="0" marginwidth="0" marginheight="0" ></iframe>
	   	</div>
	  
	</div>
  </body>
</html>
