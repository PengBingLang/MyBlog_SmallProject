<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>照片墙</title>
		<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				list-style-type: none;
			}
			
			a,
			img {
				border: 0;
			}
			
			body {
				font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/notification.js"></script>
		<script type="text/javascript" src="js/bigimg.js"></script>
		<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
		<script type="text/javascript" src="js/blocksit.min.js"></script>
		<script type="text/javascript" src="js/pubu.js"></script>
		<link rel="stylesheet" href="css/bigimg.css" type="text/css" />
		<link rel="stylesheet" href="css/pubu.css" type="text/css" media='screen' />
	</head>

	<body>

		<div style="color:green;text-align:center;font-size:25px;margin-top:30px;"><a name="this_top">点击图片可浏览大图</a></div>
		<br />
		<div align="center">
			<a href="${pageContext.request.contextPath}/homePage.action?uid=1">返回主页</a>
			&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/addPicturePage.action">添加新图片</a>
		</div>

		<!--瀑布流  start-->
		<div id="wrapper">
			<div id="container" style="width:995px;">
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="1" src="images1/pixel.gif" data-original="images1/1.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="2" src="images1/pixel.gif" data-original="images1/2.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="3" src="images1/pixel.gif" data-original="images1/3.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="4" src="images1/pixel.gif" data-original="images1/4.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="5" src="images1/pixel.gif" data-original="images1/5.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="6" src="images1/pixel.gif" data-original="images1/6.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="7" src="images1/pixel.gif" data-original="images1/7.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="8" src="images1/pixel.gif" data-original="images1/8.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="9" src="images1/pixel.gif" data-original="images1/9.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="10" src="images1/pixel.gif" data-original="images1/10.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="11" src="images1/pixel.gif" data-original="images1/11.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="12" src="images1/pixel.gif" data-original="images1/12.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="13" src="images1/pixel.gif" data-original="images1/13.jpg" width="225" />
					</div>
				</div>
			</div>
		</div>
		<!--瀑布流 end-->
		
		<div class="clear"></div>
		<div class="load_more">
			<span class="load_more_text">加载更多...</span>
		</div>

		<!--大图弹出层 start-->
		<div class="container">
			<div class="close_div">
				<img src="images1/closelabel.gif" class="close_pop" title="关闭" alt="关闭" style="cursor:pointer">
			</div>
			<!-- 代码 开始 -->
			<div class="content">
				<span style="display:none"><img src="images1/load.gif" /></span>
				<div class="left"></div>
				<div class="right"></div>
				<img class="img" src="images1/1.jpg">
				<img class="img" src="images1/2.jpg">
				<img class="img" src="images1/3.jpg">
				<img class="img" src="images1/4.jpg">
				<img class="img" src="images1/5.jpg">
				<img class="img" src="images1/6.jpg">
				<img class="img" src="images1/7.jpg">
				<img class="img" src="images1/8.jpg">
				<img class="img" src="images1/9.jpg">
				<img class="img" src="images1/10.jpg">
				<img class="img" src="images1/11.jpg">
				<img class="img" src="images1/12.jpg">
				<img class="img" src="images1/13.jpg">
			</div>
			<div class="bottom">共 <span id="img_count">x</span> 张 / 第 <span id="xz">x</span> 张</div>
			<!-- 代码 结束 -->
		</div>
		<!--end-->

		<script type="text/javascript">
			$(document).ready(function() {

				var count = 14;
				// 点击加载更多
				$('.load_more').click(function() {
					var html = "";
					var img = '';
					for(var i = count; i < count + 13; i++) {
						var n = Math.round(Math.random(1) * 13);
						var src = 'images1/' + n + '.jpg';
						html = html + "<div class='grid'>" +
							"<div class='imgholder'>" +
							"<img class='lazy thumb_photo' title='" + i + "' src='images1/pixel.gif' data-original='" + src + "' width='225' onclick='seeBig(this)'/>" +
							"</div>" +
							"</div>";
						img = img + "<img class='img' src='" + src + "'>";
					}
					count = count + 13;
					$('#container').append(html);
					$('.content').append(img);
					$('#container').BlocksIt({
						numOfCol: 4, //每行显示数
						offsetX: 5, //图片的间隔
						offsetY: 5 //图片的间隔
					});
					$("img.lazy").lazyload();
				});

			});
		</script>
		<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
			<h4>关于我们</h4>
			<h4><a href="#this_top">返回顶部</a></h4>
		</div>
	</body>

</html>