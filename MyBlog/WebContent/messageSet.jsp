<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>留言列表</title>
		<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
		<style>
			.keleyitable {
				width: 800px;
			}
			
			.keleyitable table,
			td,
			th {
				border: 1px solid green;
				margin-top: 10px;
			}
			
			.klytd {
				width: 100px;
				height: 30px;
				text-align: right
			}
			
			.hvttd {
				width: 500px;
				height: 30px;
			}
		</style>
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
						<a href="${pageContext.request.contextPath}/messageSet.action">留言编辑</a>
					</li>
				</ul>
			</div>
			<!--nav end-->
		</header>
		<div style="background-color: bisque;font-size: 18px;font-family: '微软雅黑';">
			<div style="margin: 0px auto;height: 55px;" class="keleyitable">
				留言列表:
				<p align="center">
					<a href="${pageContext.request.contextPath}/message.action?page=0">首页</a>&nbsp;
					<a href="${pageContext.request.contextPath}/message.action?page=${p-1 }">上一页</a>&nbsp;
					<font>第${p+1 }页，共${maxPage }页</font>&nbsp;
					<a href="${pageContext.request.contextPath}/message.action?page=${p+1 }">下一页</a>&nbsp;
					<a href="${pageContext.request.contextPath}/message.action?page=${maxPage-1 }">尾页</a>
				</p>
			</div>
			<div align="center">
				<c:forEach items="${listInfo }" var="in">
					<table cellspacing="5">
						<tr>
							<td class='klytd'>留言时间：</td>
							<td class='hvttd'>${in.time }</td>
							<td rowspan="3">
								<a href="${pageContext.request.contextPath}/messageDele.action?delId=${in.messageID }">删除</a>
							</td>
						</tr>
						<tr>
							<td class='klytd'>留言人：</td>
							<td class='hvttd'>${in.messageName }</td>
						</tr>
						<tr>
							<td class='klytd'>内容：</td>
							<td class='hvttd'>${in.content }</td>
						</tr>
					</table>
					<hr />
				</c:forEach>
			</div>
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
		};
	</script>

</html>