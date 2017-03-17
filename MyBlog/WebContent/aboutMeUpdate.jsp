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
						<a href="#" onclick="myExit()">退出登陆</a>
					</li>
					<li>
						<a href="#" onclick="mySubmit()">保存编辑</a>
					</li>
				</ul>
			</div>
			<!--nav end-->
		</header>
		<div align="center" style="background-color: #559664;font-size: 20px;font-family: '微软雅黑';color: black;">
			<br />
			<h4 align="center">我的资料</h4>
			<br />
			<form action="${pageContext.request.contextPath}/aboutMeUpdate.action" method="post" id="myForm">
				<table border="0" cellpadding="0" cellspacing="15" align="center">
					<tr>
						<td align="right" width="150">姓名：&nbsp;</td>
						<td width="200"><input type="text" value="${my.realName }" name="realName" /></td>
					</tr>
					<tr>
						<td align="right">性别：&nbsp;</td>
						<td>
							<input type="radio" name="sex" value="男" />男&nbsp;&nbsp;
							<input type="radio" name="sex" value="女" />女
							<input type="hidden" id="hiddenSex" value="${my.sex }" />
						</td>
					</tr>
					<tr>
						<td align="right">生日：&nbsp;</td>
						<td><input type="date" value="${my.birth }" name="birth" /></td>
					</tr>
					<tr>
						<td align="right">电子邮箱：&nbsp;</td>
						<td><input type="text" value="${my.email }" name="email" /></td>
					</tr>
					<tr>
						<td align="right">电话：&nbsp;</td>
						<td><input type="text" value="${my.tell }" name="tell" /></td>
					</tr>
					<tr>
						<td align="right">QQ号码：&nbsp;</td>
						<td><input type="text" value="${my.qQNum }" name="qq123" /></td>
					</tr>
					<tr>
						<td align="right" valign="top">自我介绍：&nbsp;</td>
						<td>
							<textarea name="selfIntroduction" style="width: 200px;height: 100px;">${my.selfIntroduction }</textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>

	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-2.1.0.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			var radios = document.getElementsByName("sex");
			var hiddenSex = document.getElementById("hiddenSex");
			if(hiddenSex == "男") {
				radios[0].checked = true;
			} else {
				radios[1].checked = true;
			}
		};

		function myExit() {
			var b = confirm("未保存的数据将丢失，是否继续？");
			if(b) {
				window.location.href = "${pageContext.request.contextPath}/doLogout.action";
			}
		}

		function mySubmit() {
			document.getElementById("myForm").submit();
		}
	</script>

</html>