<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账单部分</title>
</head>
<body>
	<div>
		<span style="padding-left: 440px">全部</span> <span style="padding-left: 30px">|</span>
		<span style="padding-left: 30px">近一个月</span> <span style="padding-left: 30px">|</span>
		<span style="padding-left: 30px">近三个月</span>
	</div>
	
	<div style="padding-left: 440px;padding-top: 10px;padding-bottom: 20px">
		<span>类型:<a href="#" style="text-decoration: none;padding-left: 15px">全部</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?json{code=a}" style="text-decoration: none;padding-left: 25px">充值</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=" style="text-decoration: none;padding-left: 25px">提现</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=" style="text-decoration: none;padding-left: 25px">转账</a>
		</span>
	</div>
	
	<div style="padding-left: 440px;padding-bottom: 10px">
		<span>状态:<a href="#" style="text-decoration: none;padding-left: 15px">全部</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=" style="text-decoration: none;padding-left: 25px">成功</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=" style="text-decoration: none;padding-left: 25px">进行中</a>
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=" style="text-decoration: none;padding-left: 25px">失败</a>
		</span>
	</div>

	<div style="background-color: #EEEEE0;padding-left: 440px">
		<table border="0">
			<tr>
				<th style="padding-left: 20px">创建时间</th>
				<th style="padding-left: 80px">交易信息</th>
				<th style="padding-left: 80px">类型</th>
				<th style="padding-left: 80px">金额</th>
				<th style="padding-left: 80px">交易状态</th>
				<th style="padding-left: 80px">操作</th>
			</tr>

			<tr>
				<c:forEach items="${pagination.list}" var="user" varStatus="vs">
			<tr>

			<tr>
				<s:property value="#vs.index+1"/>
			</tr>
			<td >${user.beginTime}</td>

			<td  style="padding-left: 50px">流水号:${user.code}</td>

			<c:if test="${user.type!= 0 }">
				<td style="padding-left: 80px">${user.type}</td>
			</c:if>
			<c:if test="${user.type== 0 }">
				<td  style="padding-left: 80px">1</td>
			</c:if>


			<td  style="padding-left:90px">${user.money}</td>
			<c:if test="${user.status!= '0' }">
				<td  style="padding-left: 90px">
						${user.status}</td>
			</c:if>
			<c:if test="${user.status== '0' }">
				<td  style="padding-left: 90px">成功</td>
			</c:if>

			<td style="padding-left: 70px">
				<a href="#" style="text-decoration: none">查看</a>
				<a href="#" style="text-decoration: none">删除</a>
			</td>

				<%--	<td align = "center" style="padding-left: 50px"><html:department pdeptid="${user.PDeptid}"></html:department></td> <!-- 自定义标签 -->--%>
			</tr>
			</c:forEach>

			</tr>
		</table>
	</div>
	<div style="width: 30%;
      height: 50px;
      position: absolute;
      right: 0px;
      ">

		共 <i class="blue">${pagination.totalCount }</i>
		条记录，当前显示第 <i class="blue">${pagination.pageNo }
	</i> 页 / 共 <i class="blue">${pagination.totalPage }</i> 页

		<form action="/bill/bill.do" method="get">
			<input type="submit" value="跳转">
			<input type="text" class="scinput"
				   name="pageNo"
				   style="width: 40px;height: 20px" id="currPage2" onblur="page2()"
				   onkeyup="this.value=this.value.replace(/\D/g,'')"
				   onafterpaste="this.value=this.value.replace(/\D/g,'')" />  页
		</form>
		<!-- 首页按钮，跳转到首页 -->
		<p>  <%--<c:if test="${page.currPage <= 1 }"></c:if>--%>
			<a href="${pageContext.request.contextPath}/bill/bill.do" >首页</a>


			<!-- 上页按钮，跳转到上一页 -->
			<c:if test="${pagination.pageNo  <= 1 }">
				<a href="${pageContext.request.contextPath}/bill/bill.do" >上页</a>
			</c:if>

			<c:if test="${pagination.pageNo > 1 }">
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=${pagination.pageNo-1 }" >上页</a>
			</c:if>

			<!-- 下页按钮，跳转到下一页 -->
			<c:if test="${pagination.pageNo >= pagination.totalPage }">
				<a href="${pageContext.request.contextPath}/bill/bill.do" >下页</a>
			</c:if>
			<c:if test="${pagination.pageNo < pagination.totalPage }">
				<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=${pagination.pageNo+1 }" >下页</a>
			</c:if>

			<!-- 末页按钮，跳转到最后一页 -->
			<a href="${pageContext.request.contextPath}/bill/bill.do?pageNo=${pagination.totalPage }" >末页</a>
		</p>
	</div>
</body>
</html>