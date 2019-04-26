<%--
  Created by IntelliJ IDEA.
  User: Mr.Su
  Date: 2019/3/3
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>马钢物流-货物追踪</title>
    <link rel="shortcut icon" href="/img/favicon.png">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E4805d16520de693a3fe707cdc962045"></script>
</head>
<body>
<div id="status" style="text-align: center"></div>
<div style="width:900px;height:600px;border:1px solid gray;margin:30px auto" id="container"></div>
<script type="text/javascript">
    window.onload = function() {
        if(navigator.geolocation) {
            document.getElementById("status").innerHTML = "请稍等，位置正在查询.....";
            // 百度地图API功能
            var map = new BMap.Map("container");
            var point = new BMap.Point(116.331398,39.897445);
            map.centerAndZoom(point,12);

            var geolocation = new BMap.Geolocation();
            geolocation.getCurrentPosition(function(r){
                if(this.getStatus() == BMAP_STATUS_SUCCESS){
                    var mk = new BMap.Marker(r.point);
                    map.addOverlay(mk);
                    map.panTo(r.point);
                    alert('货物位置：'+r.point.lng+','+r.point.lat);
                }
                else {
                    alert('failed:您的浏览器不支持！请更换谷歌浏览器。');
                }
            },{enableHighAccuracy: true})
        }
    };
</script>
</body>
</html>
