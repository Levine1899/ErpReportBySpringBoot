<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath =
            request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title></title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="js/jquery2.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #333;
            background-color: #fff;
            margin: 0px;
            overflow: Scroll;
            overflow: hidden;
        }

        .top1 {
            position: relative;
            width: 100%;
            height: 100%;
            background-size: 100% 100%
        }

        .top2 {
            position: absolute;
            top: 20%;
            width: 70%;
            height: 55%;
            left: 20%;
        }

        .mid1 {
            width: 30%;
            height: 50%;
            display: inline;
            float: left;
            z-index: 1;
        }

        span {
            position: relative;
            /* left: -12%; */
            display: block;
            left: 7%;
        }
    </style>
</head>

<body>
<div class="top1">
    <img src="img/bg_mainbackground.png" style="width:100%; height:100%;">
    <div class="top2">
        <div class="mid1"><img onclick="openurl1()" src="img/materialrequisition.png"
                               style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>进料检验</span>
        </div>
        <div class="mid1"><img onclick="openurl2()" src="img/outstocktoback.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>过程检验</span>
        </div>
        <div class="mid1"><img onclick="openurl7()" src="img/paperrequisition.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>今日日报</span>
        </div>
        <!-- <div class="mid3"><img onclick="openurl3()"src="img/pad_feedback.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;过程检验记录</div> -->
        <div class="mid1"><img onclick="openurl4()" src="img/paperrequisition.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>生产订单</span>
        </div>
        <div class="mid1"><img onclick="openurl5()" src="img/repairrequisition.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>成品入库</span>
        </div>
        <div class="mid1"><img onclick="openurl6()" src="img/materialrequisition.png"
                               style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>成品出库</span>
        </div>
        <%--    	<div class="mid1"><img onclick="openurl8()"src="img/outstocktoback.png" style="width:100px; height:100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>异常反馈单</span></div>--%>
    </div>
</div>

<input id="aaa" type="hidden" value=<%=basePath%>>
<input id="rolesid" type="hidden" value=<%=session.getAttribute("rolesid")%>>
<input id="name" type="hidden" value=<%=session.getAttribute("name")%>>
<input id="banci" type="hidden" value=<%=session.getAttribute("banci")%>>
<input id="workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
<script type="text/javascript">
    var path = $('#aaa').val();
    var rolesid = $("#rolesid").val();
    var name = $("#name").val();
    var banci = $("#banci").val();
    var workTime = $("#workTime").val();
    test();

    function test() {
        $("div.mid1").hide();
        //$("div.mid1:eq(6)").show();
        $.ajax({
            url: "login/getPower?id=" + rolesid + "&name=" + name,
            dataType: "json",
            async: false,
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var mm = data[i].cname;
                    //$("div.mid1:eq(6)").show();
                    if (mm == 'stuffIn') {
                        $("div.mid1:eq(0)").show();
                    } else if (mm == 'daily') {
                        $("div.mid1:eq(2)").show();
                    } else if (mm == 'stuffOut') {
                        $("div.mid1:eq(1)").show();
                    } else if (mm == 'productIn') {
                        $("div.mid1:eq(4)").show();
                    } else if (mm == 'productOut') {
                        $("div.mid1:eq(5)").show();
                    } else if (mm == 'orderMake') {
                        $("div.mid1:eq(3)").show();
                    } else if (mm == 'ycfkd') {
                        $("div.mid1:eq(6)").show();
                    }

                }
            }
        })
    }

    //alert(workTime);
    function openurl1() {
        window.open(encodeURI(encodeURI(path + 'report.list?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl2() {
        window.open(encodeURI(encodeURI(path + 'jsp/xunjianShow.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl3() {
        window.open(encodeURI(encodeURI(path + 'jsp/detectionDetail.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl4() {
        window.open(encodeURI(encodeURI(path + 'jsp/orderList.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl5() {
        window.open(encodeURI(encodeURI(path + 'jsp/sendListNoSubmit.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl6() {
        window.open(encodeURI(encodeURI(path + 'jsp/fnOutList.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    function openurl7() {
        window.open(encodeURI(encodeURI(path + 'jsp/journalMain.jsp?rolesid=' + rolesid + '&username=' + name + '&banci=' + banci + '&workTime=' + workTime)), "_self");
    }

    // function openurl8(){
    // 	//window.open(encodeURI(encodeURI(path+'jsp/xinhuashow.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
    //
    // 	window.open(encodeURI(encodeURI(path+'jsp/feedBackMain.jsp?rolesid=66&username=admin')),"_self");
    // }
</script>
</body>
</html>
