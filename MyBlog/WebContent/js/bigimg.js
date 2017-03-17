//$(function (){
	var x = 0; //cont = $(".content"), bottom = $(".bottom");
    var img = new Image();
    var width_per,height_per;
	function img_block(){
        var img_width, img_height;
        $(".content span").show();//加载图片出现
        var width = $(window).width(); //获取浏览器显示区域的宽度
        var height = $(window).height();//获取浏览器显示区域的高度
        $('.close_div').css({"width":(width-50)});//关闭区的宽度
        $(".bottom").stop();
        $(".content").stop();
		$(".content .img").css("display","none");//当前图片消失
        $(".bottom").css({"height":"0px"});//底部区域消失
		$("#xz").text(x+1); //第几张图片
        //图片显示区
        $(".content").animate({"width":(width-50)+"px","height":height-100+"px"},300,function (){
            img.src = $(".content .img:eq("+x+")").attr("src") ;//img.width可获取图片的宽度img.height高度
            img_width = img.width;  //img.width可获取图片宽度
            img_height = img.height;//img.height可获取图片高度
            width_per = (img_width/img_height).toFixed(2); //宽高的比例
            height_per = (img_height/img_width).toFixed(2);//宽高的比例

            //高度超出网页可视区宽没有超 或者全部超出但是可视区宽度大于高度
            if(img_height >= height-100 && img_width < width-50 || img_height > height-100 && img_width > width-50 && (width-50)>(height-100)){//高度超出区域
                img_height = height-100;
                img_width = parseInt((height-100)*width_per);
            }
            //与上面相反
            if(img_width >= width-50 && img_height < height-100 || img_height > height-100 && img_width > width-50 && (width-50) < (height-100)){//宽度超出区域时
                img_width = width-50;
                img_height = parseInt((width-50)*height_per);
            }
            //都没有超出
            if(img_height <= height-100 && img_width <= width-50){
                img_height = img_height;
                img_height = img_height;
            }

            $(".content .img:eq("+x+")").attr('height',img_height);//设置图片的高
            $(".content .img:eq("+x+")").attr('width',img_width);//设置图片的宽

            $(".content .img:eq("+x+")").css("left",(width-50-parseInt(img_width))/2);//图片水平居中位置
            $(".content .img:eq("+x+")").css("top",(height-100-parseInt(img_height))/2);//图片垂直居中位置

			$(".content .img:eq("+x+")").css("display","block");//下一张图片显示
            $(".bottom").css("width",(width-50)+"px");//底部区的宽度
            $(".bottom").animate({"height":"30px"});//底部区的高度
			$(".left,.right").css({"width":(width-50)/2+"px","height":(height-100)+"px"});//左右分区的宽度
            $(".content span").hide();
        });
    }

	$(document).ready(function() {
        //查看大图
        $('.see_big_pic').click(function(){
            $('.container').fadeIn(300);
            //图片总数
            $("#img_count").text($(".content .img").length);
            img_block();
        });
        //点击图片
        $('.thumb_photo').click(function(){
            $('.container').fadeIn(300);
            //定时自动下一张
            x = parseInt(this.title)-1;
            //图片总数
            $("#img_count").text($(".content .img").length);
            img_block();
        });
        //关闭查看大图
        $('.close_pop').click(function(){
            $('.container').fadeOut(300);
        });
        //向右
        $(".right").click(function (){
            rights();
        });
        //向左
        $(".left").click(function (){
            lefts();
        });
    });

    //下一张
    function rights(){
        if(x == $(".content .img").length-1){
            notification('warn','已是最后一张',500);
            //x = 0;
        }else{
            x++;
            img_block();
        };
    }
    //上一张
    function lefts(){
        if(x == 0){
            notification('warn','已是第一张',500);
            //x = $(".content .img").length-1;
        }else{
            x--;
            img_block();
        }
    }
//});
    function seeBig(obj){
        $('.container').fadeIn(300);
        //定时自动下一张
        x = parseInt(obj.title)-1;
        //图片总数
        $("#img_count").text($(".content .img").length);
        img_block();
    }