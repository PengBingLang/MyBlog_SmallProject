<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="ckeditor" uri="http://ckeditor.com" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>文章编辑</title>
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
		<div style="background-color: bisque;">
			<br />
			<div style="font-size: 20px;font-family: '微软雅黑';margin: 0px auto;width: 1000px">文章编辑：
				<a id="Hidden1" href="${pageContext.request.contextPath}/articleDelete.action?delID=<s:property value='article.ArticleID' />">删除本文</a>
			</div>
			<div align="center">
				<form action="${pageContext.request.contextPath}/articleUpdate.action" method="post" id="myForm">
					<input type="hidden" name="ArticleID" id="hiddenId" value="<s:property value='article.ArticleID' />" />
					<input type="text" value="<s:property value='article.title'/>" name="title" style="width: 500px;font-size: 20px;font-family: '楷体';" />
					<br />
					<br />
					<p align="center">
						作者：<input type="text" name="author" value="<s:property value='article.author'/>" /> | <input type="text" name="type" value="<s:property value='article.type' />" />
						<font id="Hidden2"> | 发布时间：<s:property value="article.time" /></font>
					</p>
					<br />
					<textarea id="editor1" name="content" style="width: 1000px;height: 600px;font-family: '楷体';line-height: 140%;color: #5B5B5B;font-size: 20px;">
						<s:property value="article.content" />
					</textarea>
					<ckeditor:replace replace="editor1" basePath="ckeditor/"></ckeditor:replace>
				</form>
			</div>
			<br />
			<br />
			<br />
			<br />
		</div>
	</body>
	<script type="text/javascript">
		window.onload = function() {
			if(document.getElementById("hiddenId").value == "") {
				//添加新文章
				debugger;
				document.getElementById("Hidden1").style.visibility = "hidden";
				document.getElementById("Hidden2").style.visibility = "hidden";
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