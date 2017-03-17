<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人主页</title>
		<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
	</head>

	<body>
		<%-- <%@ include file="index.html" %> --%>
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
		<div class="photowall">
			<ul class="wall_a">
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p01.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p02.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p03.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
				<li>
					<p class="text_a">
						<a href="${pageContext.request.contextPath}/picture.jsp">一个人最好的模样大概是平静一点，坦然接受自己所有的弱点，不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏......</a>
					</p>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p04.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
				<li>
					<p class="text_b">
						<a href="${pageContext.request.contextPath}/picture.jsp">逃避自己的人，最终只能导致自己世界的崩塌，而变得越来越没有安全感。</a>
					</p>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p05.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/picture.jsp"><img src="${pageContext.request.contextPath}/images/p06.jpg">
						<figcaption>
							<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏 </h2>
						</figcaption>
					</a>
				</li>
			</ul>
		</div>
		<div class="about">
			<ul>
				<div id="fountainG">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</div>
				<div class="about_girl">
					<span>
					<a href="${pageContext.request.contextPath}/message.action?page=0">
						<img src="${pageContext.request.contextPath}/images/girl.jpg">
					</a>
				</span>
					<p>${info2 }</p>
				</div>
				<div class="about_boy">
					<span>
				<a href="${pageContext.request.contextPath}/message.action?page=0">
				<img src="${pageContext.request.contextPath}/images/boy.jpg">
				</a>
				</span>
					<p>${info3 }</p>
				</div>
			</ul>
		</div>
		<div class="blank"></div>
		<div class="blog">
			<figure>
				<a href="${pageContext.request.contextPath}/article.action"><img src="${pageContext.request.contextPath}/${a1 }"></a>
				<p>
					<a href="${pageContext.request.contextPath}/article.action">${a2 }</a>
				</p>
				<figcaption>${a3 }</figcaption>
			</figure>
			<figure>
				<a href="${pageContext.request.contextPath}/article.action"><img src="${pageContext.request.contextPath}/${a4 }"></a>
				<p>
					<a href="${pageContext.request.contextPath}/article.action">${a5 }</a>
				</p>
				<figcaption>${a6 }</figcaption>
			</figure>
			<figure>
				<a href="${pageContext.request.contextPath}/article.action"><img src="${pageContext.request.contextPath}/${a7 }"></a>
				<p>
					<a href="${pageContext.request.contextPath}/article.action">${a8 }</a>
				</p>
				<figcaption>${a9 }</figcaption>
			</figure>
		</div>
		<div class="blank"></div>
		<footer>
			<p>
				<a href="http://user.qzone.qq.com/1303517750" target="_blank">关于我们</a>
			</p>
		</footer>
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