function notification(type,msg,time){
    //$('.pop').remove();
    //样式
    var msg_style = "float:left;height:36px;line-height:36px;color:#fff;font-size:18px;padding:0 0 0 10px;" +
        "font-weight:bold;font-family:'宋体';border:1px solid #000";
    var src = 'images/';
    var pop_style = "position:fixed;top:20%;left:42%;-moz-border-radius:16px;"+
        "-webkit-border-radius:16px;border-radius:16px;padding:10px 25px 10px 20px;";
    //提示类型
    if(type == 'error'){
        pop_style = pop_style+"background:#F03F2C;";
    }else if(type=='success'){
        pop_style = pop_style+"background:#7CB91F;";
    }else{
        pop_style = pop_style+"background:#0D85C5;";
    }
    var div = "<div class='pop' style='"+pop_style+"'>"+
        "<div style='float:left'><img src='"+src+type+".png"+"'></div>"+
        "<div style='"+msg_style+"'>"+msg+"</div>"+
        "<div class='clear'></div>"+
        "</div>";
    $('body').append(div);
    //定时隐藏
    setTimeout(function(){
        $('.pop').fadeOut(300,function(){
            //$('.pop').remove();
        });
    },time);
}
//获得网站根目录
/*function getRootPath(){
    var strFullPath = window.document.location.href;
    var strPath = window.document.location.pathname;
    var pos = strFullPath.indexOf(strPath);
    var prePath = strFullPath.substring(0,pos);
    var postPath = strPath.substring(0,strPath.substr(1).indexOf('/')+1);
    return prePath+postPath;
}*/
