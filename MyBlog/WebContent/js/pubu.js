$(function(){
    $("img.lazy").lazyload({
        load:function(){
            $('#container').BlocksIt({
                numOfCol:4,
                offsetX: 5,
                offsetY: 5
            });
        }
    });

    var currentWidth = 985;
    $(window).resize(function() {
        var winWidth = $(window).width();
        var conWidth;
        if(winWidth < 545) {
            conWidth = 325;
            col = 2
        } else if(winWidth < 765) {
            conWidth = 545;
            col = 3
        } else if(winWidth < 985) {
            conWidth = 765;
            col = 4;
        } else {
            conWidth = 985;
            col = 5;
        }
        if(conWidth != currentWidth) {
            currentWidth = conWidth;
            $('#container').width(conWidth);
            $('#container').BlocksIt({
                numOfCol: col,
                offsetX: 5,
                offsetY: 5
            });
        }
    });
});

//异步获取照片信息
function ajaxGetPhoto(redirect,p,m_id,url,src){
    $.ajax({
        url: redirect,type: 'post',data: {m_id:m_id,p:p},dataType: 'JSON',
        success: function (data) {
            if(data.error == null){
                var html = "";
                $.each(data.success.list,function (key, photo) {
                    html = html + "<div class='grid'>"+
                        "<div class='imgholder'>"+
                        "<img class='lazy thumb_photo' src='"+url+"' data-original='"+src+photo['photo']+"' width='225' title='"+(count+1+key)+"' onclick='seeBig(this)'/>"+
                        "</div>"+
                        "</div>";
                });
                count = count+data.success.count;
                $('#container').append(html);
                $('#container').BlocksIt({
                    numOfCol:4,
                    offsetX: 5,
                    offsetY: 5
                });
                $("img.lazy").lazyload();
            }else{
                notification('warn',data.error,2000);
            }
            $('.load_more_text').show();
            $('.load_more_gif').hide();
        }
    });
}