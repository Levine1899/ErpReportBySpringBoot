<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path ;
%>
<html >

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1"/>
    <!-- 这些meta有就更好，没有也可以 -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no, email=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="HandheldFriendly" content="true">
    <meta name="MobileOptimized" content="320">
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <meta name="full-screen" content="yes">
    <meta name="x5-fullscreen" content="true">
    <meta name="browsermode" content="application">
    <meta name="x5-page-mode" content="app">
    <meta name="msapplication-tap-highlight" content="no">
    <!-- 适应移动端end -->
    <script type="text/javascript" src="../js/demand/echarts.min.js"></script>
    <script type="text/javascript" src="../js/demand/jquery.min.js"></script>
    <script type="text/javascript" src="../js/demand/kanban.cfg.js"></script>
    <script type="text/javascript" src="../js/demand/kanban.func.js"></script>
    <script type="text/javascript" src="../js/demand/moment.min.js"></script>
    <script type="text/javascript" src="../js/demand/demandQueue.js"></script>
    <link rel="stylesheet" type="text/css" href="../Css/demand/base.css"/>

<%--    <script>--%>
<%--        /**--%>
<%--         *  屏幕自适应的办法--%>
<%--         *  1. myDeviceWidth为设计时的屏幕尺寸--%>
<%--         *  2. rem比率(remRate)为myScreenWidth/10--%>
<%--         *  3. 将所有px的尺寸换成rem，公式为rem=px/remRate--%>
<%--         */--%>
<%--        var myDeviceWidth = 1920;--%>
<%--        !function (N, M) {--%>
<%--            function L() {--%>
<%--                var a = I.getBoundingClientRect().width;--%>
<%--                a / F > 1920 && (a = 1920 * F);--%>
<%--                var d = a / 10;--%>
<%--                I.style.fontSize = d + "px", D.rem = N.rem = d--%>
<%--            }--%>

<%--            var K, J = N.document, I = J.documentElement, H = J.querySelector('meta[name="viewport"]'), G = J.querySelector('meta[name="flexible"]'), F = 0, E = 0, D = M.flexible || (M.flexible = {});--%>
<%--            if (H) {--%>
<%--                console.warn("将根据已有的meta标签来设置缩放比例");--%>
<%--                var C = H.getAttribute("content").match(/initial\-scale=([\d\.]+)/);--%>
<%--                C && (E = parseFloat(C[1]), F = parseInt(1 / E))--%>
<%--            } else {--%>
<%--                if (G) {--%>
<%--                    var B = G.getAttribute("content");--%>
<%--                    if (B) {--%>
<%--                        var A = B.match(/initial\-dpr=([\d\.]+)/), z = B.match(/maximum\-dpr=([\d\.]+)/);--%>
<%--                        A && (F = parseFloat(A[1]), E = parseFloat((1 / F).toFixed(2))), z && (F = parseFloat(z[1]), E = parseFloat((1 / F).toFixed(2)))--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--            if (!F && !E) {--%>
<%--                var y = N.navigator.userAgent, x = (!!y.match(/android/gi), !!y.match(/iphone/gi)), w = x && !!y.match(/OS 9_3/), v = N.devicePixelRatio;--%>
<%--                F = x && !w ? v >= 3 && (!F || F >= 3) ? 3 : v >= 2 && (!F || F >= 2) ? 2 : 1 : 1, E = 1 / F--%>
<%--            }--%>
<%--            if (I.setAttribute("data-dpr", F), !H) {--%>
<%--                if (H = J.createElement("meta"), H.setAttribute("name", "viewport"), H.setAttribute("content", "initial-scale=" + E + ", maximum-scale=" + E + ", minimum-scale=" + E + ", user-scalable=no"), I.firstElementChild) {--%>
<%--                    I.firstElementChild.appendChild(H)--%>
<%--                } else {--%>
<%--                    var u = J.createElement("div");--%>
<%--                    u.appendChild(H), J.write(u.innerHTML)--%>
<%--                }--%>
<%--            }--%>
<%--            N.addEventListener("resize", function () {--%>
<%--                clearTimeout(K), K = setTimeout(L, 300)--%>
<%--            }, !1), N.addEventListener("pageshow", function (b) {--%>
<%--                b.persisted && (clearTimeout(K), K = setTimeout(L, 300))--%>
<%--            }, !1), "complete" === J.readyState ? J.body.style.fontSize = 12 * F + "px" : J.addEventListener("DOMContentLoaded", function () {--%>
<%--                    J.body.style.fontSize = 12 * F + "px"--%>
<%--                }, !1), L(), D.dpr = N.dpr = F, D.refreshRem = L, D.rem2px = function (d) {--%>
<%--                var c = parseFloat(d) * this.rem;--%>
<%--                return "string" == typeof d && d.match(/rem$/) && (c += "px"), c--%>
<%--            }, D.px2rem = function (d) {--%>
<%--                var c = parseFloat(d) / this.rem;--%>
<%--                return "string" == typeof d && d.match(/px$/) && (c += "rem"), c--%>
<%--            }--%>
<%--        }(window, window.lib || (window.lib = {}));--%>
<%--    </script>--%>

    <script>
        /**
         *  屏幕自适应的办法
         *  1. myDeviceWidth为设计时的屏幕尺寸
         *  2. rem比率(remRate)为myScreenWidth/10
         *  3. 将所有px的尺寸换成rem，公式为rem=px/remRate
         */
        var myDeviceWidth = 3840;
        !function(N,M){function L(){var a=I.getBoundingClientRect().width;a/F>3840&&(a=3840*F);var d=a/10;I.style.fontSize=d+"px",D.rem=N.rem=d}var K,J=N.document,I=J.documentElement,H=J.querySelector('meta[name="viewport"]'),G=J.querySelector('meta[name="flexible"]'),F=0,E=0,D=M.flexible||(M.flexible={});if(H){console.warn("将根据已有的meta标签来设置缩放比例");var C=H.getAttribute("content").match(/initial\-scale=([\d\.]+)/);C&&(E=parseFloat(C[1]),F=parseInt(1/E))}else{if(G){var B=G.getAttribute("content");if(B){var A=B.match(/initial\-dpr=([\d\.]+)/),z=B.match(/maximum\-dpr=([\d\.]+)/);A&&(F=parseFloat(A[1]),E=parseFloat((1/F).toFixed(2))),z&&(F=parseFloat(z[1]),E=parseFloat((1/F).toFixed(2)))}}}if(!F&&!E){var y=N.navigator.userAgent,x=(!!y.match(/android/gi),!!y.match(/iphone/gi)),w=x&&!!y.match(/OS 9_3/),v=N.devicePixelRatio;F=x&&!w?v>=3&&(!F||F>=3)?3:v>=2&&(!F||F>=2)?2:1:1,E=1/F}if(I.setAttribute("data-dpr",F),!H){if(H=J.createElement("meta"),H.setAttribute("name","viewport"),H.setAttribute("content","initial-scale="+E+", maximum-scale="+E+", minimum-scale="+E+", user-scalable=no"),I.firstElementChild){I.firstElementChild.appendChild(H)}else{var u=J.createElement("div");u.appendChild(H),J.write(u.innerHTML)}}N.addEventListener("resize",function(){clearTimeout(K),K=setTimeout(L,300)},!1),N.addEventListener("pageshow",function(b){b.persisted&&(clearTimeout(K),K=setTimeout(L,300))},!1),"complete"===J.readyState?J.body.style.fontSize=12*F+"px":J.addEventListener("DOMContentLoaded",function(){J.body.style.fontSize=12*F+"px"},!1),L(),D.dpr=N.dpr=F,D.refreshRem=L,D.rem2px=function(d){var c=parseFloat(d)*this.rem;return"string"==typeof d&&d.match(/rem$/)&&(c+="px"),c},D.px2rem=function(d){var c=parseFloat(d)/this.rem;return"string"==typeof d&&d.match(/px$/)&&(c+="rem"),c}}(window,window.lib||(window.lib={}));
    </script>
    <title>卷筒纸需求队列</title>
    <style type="text/css">
        .table1 {
            /*margin-top: -20px;   */
            width: calc(1766rem / 192);
            margin: 0 auto;
            background-color: #242f41;
            height: calc(90rem / 192);
            /*background: pink;*/
            /*margin:15px auto;*/
            /* margin-top:calc(23rem / 192);*/
            /*margin-left: 30px;*/
            border-color: #000;
            font-size: calc(18rem / 192);
            text-align: center;
            color: #fff;
            font-weight: normal;
        }
        .table1 {
            width: 100%;
        }
        .table1 tr {
            height: calc(40rem / 192);
        }
        .table1 thead {
            background-color: #1f79a7;
            font-weight: normal;
        }
        .table1 tbody {
            font-size: calc(22rem / 192);
        }
        .table1 tbody tr:nth-of-type(2n) {
            background: #34435b;
        }
        .art .biaoti h2 {
            color: #00fffc;
            width: calc(500rem / 192);
            font-size: calc(50rem / 192);
            display: inline-block;
            /*background-color: pink;*/
            text-align: center;
            margin-left: calc(762rem / 192);
            line-height: calc(70rem / 192);
            margin-top: 30px;
            letter-spacing: calc(8rem / 192);
            font-weight: 500;
        }
        .art .biaoti span {
            font-size: calc(20rem / 192);
            margin-left: calc(600rem / 192);
            color: #fff;
        }
        .shang, .xia {
            width: calc(120rem / 192);
            height: calc(40rem / 192);
            color: #fff;
            background-color: #17873f;
            border-radius: calc(3rem / 192);
            cursor: pointer;
            margin-top: calc(20rem / 192);
        }
        .shang {
            margin-left: calc(750rem / 192);
        }
        .xia {
            margin-left: calc(30rem / 192);;
        }
    </style>
    <script type="text/javascript">

        var basePath = "<%=basePath%>";

        $(function(){
            initData();
            getGsysdatetime();
            setInterval(function () {
                initData();


                getGsysdatetime();
            },20000);
        })

        function getGsysdatetime() {
            var date = new Date();
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var strDate = date.getDate();
            if (month >= 1 && month <= 9) {
                month = "0" + month;
            }
            if (strDate >= 0 && strDate <= 9) {
                strDate = "0" + strDate;
            }
            document.getElementById('CurrData').innerHTML = date.getFullYear() + '-' + month + '-' +strDate;

            var dateindex = date.getDay();         //获取当前星期X(0-6,0代表星期天)
            var Weekdate = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
            document.getElementById('workdate').innerHTML = Weekdate[dateindex];

            var curHours = date.getHours();     //获取当前小时数(0-23)
            var curMin = date.getMinutes();     //获取当前分钟数(0-59)
            if (curHours<10){curHours = '0'+curHours;}
            if (curMin<10){curMin = '0'+curMin;}
            document.getElementById('divtime').innerHTML = curHours + ':' + curMin;
        }
    </script>

</head>
<body>
<header class="header">
    <div class="header-left">
        <img src="../img/wulue.png" class="logo">
    </div>
    <ul class="header-right">
        <li id="divtime"></li>
        <li>
            <ol>
                <li id="workdate"></li>
                <li id="CurrData"></li>
            </ol>
        </li>
    </ul>
</header>
<article class="art">
    <div class="biaoti">
        <h2>卷筒纸需求队列</h2>
    </div>
    <table border="1" id="tableId" class="table1" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <th class="th1">序号</th>
            <th class="th2">需求机台</th>
<%--            <th class="th3">需求作业</th>--%>
            <th class="th3">需求作业名称</th>
            <th class="th3">需求总数量</th>
            <th class="th3">需求数量</th>
            <th class="th3">需求托盘数</th>
            <th class="th3">需求纸张</th>
            <th class="th3">计划开始日期</th>
        </tr>
        </thead>
    </table>
    <img src="../img/wulue.png" alt="" width='180'  heigth='58.5' class="valueLogo"/>
</article>
</body>
</html>