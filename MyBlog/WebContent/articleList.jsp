<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>博文列表</title>
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
		<div align="center" style="background-color: #559664;font-size: 20px;">
			<br />
			<div style="background-color: #559664;font-size: 20px;font-family: '微软雅黑';color: black;width: 1000px;">
				<dl class="list_dl">
					<dt>
						<b>博文列表</b>
						<a href="${pageContext.request.contextPath}/articleUpdatePage.action?typeId=0" class="more">发表文章</a>
					</dt>
					<dd>
						<ul>
							<s:iterator value="list">
								<li>
									<span><s:property value="time"/> | <a href="${pageContext.request.contextPath}/articleUpdatePage.action?typeId=<s:property value='ArticleID'/>">编辑</a></span>
									<a class="link1">[<s:property value="type" />]</a>
									<a href="${pageContext.request.contextPath}/oneArticle.action?id=<s:property value='ArticleID'/>"><s:property value="title" /></a>
								</li>
							</s:iterator>
						</ul>
					</dd>
				</dl>
				<a href="#">第一页，共一页</a>
			</div>
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
	<style>
		ul,
		li,
		ol,
		dl,
		dt,
		dd {
			padding: 0px;
			margin: 0px;
			list-style-type: none;
		}
		
		a {
			text-decoration: none;
		}
		
		.list_dl {
			width: 100%;
			height: auto;
			display: block;
			overflow: hidden;
			margin-bottom: 8px;
			font-size: 10pt;
		}
		
		.list_dl dt {
			width: 100%;
			height: 24px;
			margin-bottom: 1px;
			background-color: #003366;
			border-bottom-width: 2px;
			border-bottom-style: solid;
			border-bottom-color: #FF9933;
			background-image: url(images/right_tit.gif);
			background-repeat: repeat-x;
			background-position: right top;
		}
		
		.list_dl dt b {
			float: left;
			width: 240px;
			height: 24px;
			line-height: 24px;
			display: block;
			color: #FFFFFF;
			margin-left: 12px;
		}
		
		.list_dl dt a {
			width: 5em;
			height: 23px;
			display: block;
			line-height: 23px;
			margin-top: 1px;
			color: #FFFFFF;
			float: right;
			text-align: right;
			padding-right: 10px;
		}
		
		.list_dl dt a.more {
			color: #C1CEDB;
		}
		
		.list_dl dt a.more:hover {
			color: #fff;
		}
		
		.list_dl dd {
			display: block;
			margin-top: 4px;
			clear: both;
		}
		
		.list_dl ul li {
			text-align: left;
			text-indent: 1.3em;
			line-height: 220%;
			border-bottom-width: 1px;
			border-bottom-style: dashed;
			border-bottom-color: #CCCCCC;
			background-image: url(images/list_ico.gif);
			background-repeat: no-repeat;
			background-position: 4px center;
		}
		
		a.link1 {
			color: #EEB422;
		}
		
		.list_dl ul li span {
			float: right;
			color: #FF0000;
			margin-right: 7px;
		}
	</style>

</html>