<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>文章详情</title>
		<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
	</head>

	<body>
		<header>
			<div class="quotes">
				<div style="height:80px;">
					<p>${info1 }</p>
				</div>
				<div class="text5">${name1 }</div>
				<div class="flower"><img src="${pageContext.request.contextPath}/${img1 }"></div>
			</div>
			<!--nav begin-->
			<div id="nav">
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/homePage.action?uid=1">首页</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/aboutMe.action">关于我</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/picture.jsp">相册</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/article.action">博文</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/message.action?page=0">留言板</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/login.jsp" id="a">博主登陆</a>
					</li>
					<li>
						<a>&nbsp;</a>
					</li>
				</ul>
			</div>
			<!--nav end-->
		</header>
		<div style="background-color: bisque;">
			<br />
			<div style="font-size: 20px;font-family: '微软雅黑';margin: 0px auto;width: 1000px">文章详情：</div>
			<div align="center">
				<h3 style="font-size: 20px;font-family: '楷体';"><s:property value="article.title" /></h3>
				<br />
				<p align="center">
					作者：<s:property value="article.author" /> | <s:property value="article.type" /> | 发布时间：<s:property value="article.time" />
				</p>
				<br />
				<table width="600" style="font-family: '楷体';line-height: 140%;color: #5B5B5B;font-size: 20px;">
					<tr>
						<td id="text1"></td>
					</tr>
				</table>
				<input type="hidden" id="text2" value="<s:property value='article.content' />" />
			</div>
			<br />
			<br />
			<br />
			<br />
		</div>
		<input type="hidden" id="myHidden" value="${loginInfo }" />
	</body>
	<script type="text/javascript">
		window.onload = function() {
			var b = document.getElementById("myHidden").value;
			if(b == "true") {
				document.getElementById("a").innerHTML = "退出登陆";
				document.getElementById("a").href = "${pageContext.request.contextPath}/doLogout.action";
			}
			document.getElementById("text1").innerHTML = document.getElementById("text2").value;
		};
	</script>

</html>