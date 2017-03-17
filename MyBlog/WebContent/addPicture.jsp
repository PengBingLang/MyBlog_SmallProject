<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>上传图片</title>
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
		<div align="center" style="background-color: #559664;font-size: 20px;font-family: '微软雅黑';color: black;">
			<br />
			<h3>上传图片到我的相册</h3>
			<br />
			<!-- 必须以post方式提交，enctype="multipart/form-data"必须以二进制方式传输 -->
			<form action="${pageContext.request.contextPath}/addPicture.action" method="post" enctype="multipart/form-data">
				<h4>
					选择图片：<input type="file" name="imgFile" /><input type="submit" value="上传" />
				</h4>
			</form>
			<br />
			<br />
			<p>
				<font id="f" size="3" color="red">${msg }</font>
			</p>
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
			if(document.getElementById("f").innerText.indexOf("成功") > 0) {
				document.getElementById("f").color = "green";
			}
		};
	</script>

</html>