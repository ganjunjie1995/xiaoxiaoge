<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*:focus {outline: none; }
body{margin-top: 20%;margin-left:40% ;}
#baidu{height: 33px;}
#baidu .input{border: 1px solid #999999;height: 100%;}
#baidu .input .clear{width: 30px;height: 35px;line-height: 30px;text-align: center;cursor: pointer;padding-right: 10px;visibility: hidden;opacity: 0.8;color: gray;}
#baidu input[type=text]{height:86%;border:0px;width: 250px;}
#baidu div{float: left;}
#baidu>.submit{width: 100px;height: 35px;background: #3385ff;color: #fff;border: none;}
</style>

</head>
<body>

<div id="baidu">
	<form name="findForm" action="jsp/Goods_tofind.action" method="post">
    <div class="input">
        <input type="text" id="search" name="gname" placeholder="请输入商品名：" style="color:blue,border-color:red"><span class="clear" id="cls">X</span>
    </div>
    <input type="submit" id="submit" style="background:green;width:70px;height:35px" value="搜索商品">
    </form>
</div>

<script type="text/javascript">
document.getElementById("search").addEventListener("keyup",function(){
	if(this.value.length>0)
	{
		document.getElementById("cls").style.visibility="visible";
		document.getElementById("cls").onclick=function()
		{
			document.getElementById("search").value="";
		}
	}else
	{
		document.getElementById("cls").style.visibility="hidden";
	}
});
</script>
</body>
</html>