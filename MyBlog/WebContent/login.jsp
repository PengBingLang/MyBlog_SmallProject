<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>博主登陆</title>
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
						<a href="${pageContext.request.contextPath}/login.jsp">博主登陆</a>
					</li>
					<li>
						<a>&nbsp;</a>
					</li>
				</ul>
			</div>
			<!--nav end-->
		</header>
		<div align="center" style="background-color: #559664;font-size: 20px;font-family: '微软雅黑';color: black;">
			<br />
			<br />
			<form action="${pageContext.request.contextPath}/doLogin.action" method="post">
				<table cellpadding="10" cellspacing="10">
					<tr>
						<td align="right">用户名：</td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td><input type="password" name="pwd" /></td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<font color="red">${loginMsg }</font>
							<input type="submit" value=" 登陆 " style="font-size: 20px;font-family: '微软雅黑';" />
						</td>
					</tr>
				</table>
			</form>
			<br />
			<br />
		</div>
	</body>

</html>