
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>考研倒计时</title>
    <style type="text/css">
        .carousel-inner img {
            width:100%;
            height:70%;
        }
        #timer{
            font-size:58px;
            color:#880033;
            width:1040px;
            height:150px;
            margin:0 400px;
            background-color:orange;
            padding:150px 0 0 0;
        }
        .box{
            width:1440px;
            height:500px;
            background-color:orange;
        }
    </style>
    <script type="text/javascript">
        var time_now_server,time_end;

        time_end=new Date("2020/12/21 09:00:0");//结束的时间
        time_end=time_end.getTime();//获取的是毫秒

        time_now_server=new Date();//开始的时间
        time_now_server=time_now_server.getTime();
        setTimeout("show_time()",1000);

        function show_time()
        {
            var timer = document.getElementById("timer");
            var hourid = document.getElementById("hour");
            if(!timer){
                return ;
            }
            timer.innerHTML =time_now_server;
            var time_now,time_distance,str_time;
            var int_day,int_hour,int_minute,int_second;
            var time_now=new Date();
            time_now=time_now.getTime();
            time_distance=time_end-time_now;
            if(time_distance>0)
            {
                int_day=Math.floor(time_distance/86400000)
                time_distance-=int_day*86400000;
                int_hour=Math.floor(time_distance/3600000)
                time_distance-=int_hour*3600000;
                int_minute=Math.floor(time_distance/60000)
                time_distance-=int_minute*60000;
                int_second=Math.floor(time_distance/1000)

                if(int_hour < 10)
                    int_hour="0"+int_hour;
                if(int_minute<10)
                    int_minute="0"+int_minute;
                if(int_second<10)
                    int_second="0"+int_second;
                str_time="考研时间还有"+int_day+"天"+int_hour+"小时"+int_minute+"分钟"+int_second+"秒"+"时间不多了，你还不把自己往死里整？";
                timer.innerHTML=str_time;
                setTimeout("show_time()",1000);
            }
            else
            {
                timer.innerHTML =0;
            }
        }
    </script>
</head>

<body>
<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>
    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="1.jpg">
        </div>
        <div class="carousel-item">
            <img src="2.jpg">
        </div>
        <div class="carousel-item">
            <img src="3.jpg">
        </div>
    </div>


    <!-- 左右切换按钮 -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
</div>
<div class="box">
    <div id="timer"></div>
    <video width="400" height="340" controls autoplay>
        <source src="seek-dream.ogg" type="video/ogg">
        <source src="seek-dream.mp4" type="video/mp4">
        <source src="seek-dream.webm" type="video/webm">
        <object data="seek-dream.mp4" width="400" height="340">
            <embed width="400" height="340" src="seek-dream.swf">
        </object>
    </video>
</div>
</body>
</html>


