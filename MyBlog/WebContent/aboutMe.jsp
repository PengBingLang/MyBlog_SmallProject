<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>关于我</title>
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
						<a href="${pageContext.request.contextPath}/aboutMeUpdate.action">编辑本页</a>
					</li>
				</ul>
			</div>
			<!--nav end-->
		</header>
		<div align="center" style="background-color: #559664;font-size: 20px;font-family: '微软雅黑';color: black;">
			<br />
			<h4 align="center">我的资料</h4>
			<br />
			<table border="0" cellpadding="0" cellspacing="15" align="center">
				<tr>
					<td align="right" width="150">姓名：&nbsp;</td>
					<td width="200">${my.realName }</td>
				</tr>
				<tr>
					<td align="right">性别：&nbsp;</td>
					<td>${my.sex }</td>
				</tr>
				<tr>
					<td align="right">生日：&nbsp;</td>
					<td>${my.birth }</td>
				</tr>
				<tr>
					<td align="right">电子邮箱：&nbsp;</td>
					<td>${my.email }</td>
				</tr>
				<tr>
					<td align="right">电话：&nbsp;</td>
					<td>${my.tell }</td>
				</tr>
				<tr>
					<td align="right">QQ号码：&nbsp;</td>
					<td>${my.qQNum }</td>
				</tr>
				<tr>
					<td align="right" valign="top">自我介绍：&nbsp;</td>
					<td>
						<div style="width: 200px;height: 100px;">
							${my.selfIntroduction }
						</div>
					</td>
				</tr>
			</table>
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
		};
	</script>

</html>