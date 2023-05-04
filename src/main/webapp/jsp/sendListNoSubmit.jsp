<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String cbanci = request.getParameter("banci");
    cbanci = java.net.URLDecoder.decode(cbanci, "UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>送检单列表</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- <link rel="stylesheet" href="Css/zhijianstyle.css"> -->
    <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css"/>
    <link rel="stylesheet" type="text/css" href="Css/style1.css"/>
    <link rel="stylesheet" href="Css/signature-pad.css">

    <script type="text/javascript" src="js/jquery.js"></script>
    <!-- <script type="text/javascript" src="Js/jquery2.sorted.js"></script>-->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
    <script src="js/myJs.js"></script>
</head>
<style type="text/css">
    body {
        font-size: 20px;
        font-family: "微软雅黑";
        padding-bottom: 40px;
        background-color: #F3F6F9;
        overflow: auto;
    }

    .top2 {
        position: relative;
        top: 0px;
        width: 100%;
        height: 77px;
        text-align: center;
        background-color: #2B3443;
    }

    .logo {
        float: left;
        margin: 22px 40px;
    }

    .title {
        float: left;
        margin: 32px -4px;
        color: #FFFFFF;
        font-size: 50px;
        font-family: 隶书;
    }

    .top-link {
        float: right;
        margin: 29px 44px;
        color: #FFFFFF;
        font-height: 55px;
        font-size: 25px;
        font-family: 楷体;
    }

    #fenye {
        position: relative;
        background-color: red;
        height: 10%;
        width: 100%;
    }

    .top3 {
        border: 1px solid #ccc;
        width: 98%;
        margin: 0 auto;
        height: 528px;
        overflow: auto;

    }

    .table {
        position: relative;
        color: #666;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;


    }

    .table tr {
        height: 35px;
    }

    .aaaa {
        position: relative;
        font-family: verdana, arial, sans-serif;
        color: #333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }

    .aaaa td {
        border-width: 1px;
        padding: 0px;
        text-align: center;
        float: left;
        position: relative;
        line-height: 30px;
        font-size: 14px;
        vertical-align: middle;
    }

    .table td {
        border-width: 1px;
        padding: 0px;
        border-style: solid;
        border-color: #ddd;
        font-family: 微软雅黑;
        text-align: center;
        /*  float: left; */
        position: relative;
        line-height: 20px;
        font-size: 14px;
        vertical-align: middle;
        padding: 3px;
        font-weight: normal;
    }

    .table2 {
        width: 100%;
        position: relative;
        color: #666;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;


    }

    .table2 td {
        border-width: 1px;
        padding: 0px;
        border-style: solid;
        border-color: #ddd;
        font-family: 微软雅黑;
        text-align: center;
        /*  float: left; */
        position: relative;
        line-height: 20px;
        font-size: 14px;
        vertical-align: middle;
        padding: 3px;
        font-weight: normal;
    }

    .table tbody tr td:nth-of-type(4) {

    }

    .bbbb td {
        font-size: 14px;
    }

    .cccc td {
        font-size: 14px;
    }

    #sjdxx {
        position: relative;
        width: 100%;
        height: 28px;
        font-size: 22px;
        text-align: left;
        color: #3C3D3F;

    }

    .sjzy {
        position: relative;
        width: 100%;
        height: 30px;
        top: 2%;
        text-align: center;
        font-size: 24px;
    }

    .title2 {


        height: 34px;
        width: 98%;
        margin: 0 auto;
        padding-left: 30px;
        color: #3C3D3F;
        font-size: 22px;
        text-align: left;
        line-height: 24px;
        /*background: url(img/grid.png) no-repeat;*/
    }


    input {
        font-family: 宋体;
        font-size: 18px;
        border-radius: 0;
        padding: 0 3px;

    }

    #signature-pad {
        visibility: hidden;
    }

    #showimg {
        position: relative;
        left: -28%;
        top: 35%;
    }


    .top4 {
        position: relative;
        top: 1%;
        width: 100%;
        height: 50%;
    }

    .sjxxxx {
        position: relative;
        width: 100%;
        height: 45px;
        color: #3C3D3F;
        font-size: 22px;
        text-align: left;
        top: 3%;

    }

    .formTable td {

        cursor: pointer;
        border-width: 1px;
        padding: 5px;
        border-color: #ddd;
        font-family: 微软雅黑;
        text-align: left;
        color: #333;
        position: relative;
        line-height: 20px;
        font-size: 16px;
        vertical-align: middle;
    }

    .formTable {
        /* position: relative;*/
        width: 98%;
        height: 50px;
        margin: 0 auto;
        font-family: verdana, arial, sans-serif;
        color: #333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }

    .sjxxxxmx {
        position: relative;
    }

    .cd-popup-container2 {
        padding: 10px 30px;
    }

    .sub-title {
        position: relative;
        margin: 15px 38px 0;
        font-size: 14px;
        font-weight: 700;

    }

    .sub-bar {
        width: 100%;
        font-weight: normal;
        /* height:145px; */
        background-color: #fff;
        border: 1px solid #e5e5e5;
        padding-top: 15px;
        overflow: auto;
    }

    .sub-bar table {
        width: 100%;
    }

    .sub-bar table tr {
        width: 100%;
    }

    .sub-bar table tr td {
        line-height: 30px;
        text-align: left;
    }

    .aaaa tr td:nth-of-type(odd) {
        width: 12%;
        padding-right: 5px;
        text-align: right;
    }

    /*.aaaa tr td:nth-of-type(even) {*/
    /*    width: 21%;*/
    /*    color: #999;*/
    /*}*/

    .aaaa tr td:nth-of-type(even) {
        width: 10%;
        color: #999;
    }

    .first, .last {
        width: 50px;
    }

    .sub-h {

        height: 30px;
        background: url(img/narrow.png) no-repeat left 7px;
        font-size: 18px;
        line-height: 30px;
        color: #333;
        padding-left: 15px;
        font-family: "微软雅黑";
    }

    .sub-bottom {
        width: 853px;
        height: 40px;
        top: 34px;
        position: relative;
        left: 34%;
        margin-left: -210px;
        bottom: 20px;

    }

    .sub-bottom button {
        width: 120px;
        text-align: center;
        padding: 0 10px;
        font: 14px/40px "微软雅黑";
        color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;


    }

    .sub-bottom button:nth-of-type(1) {
        background-color: #ff7645;
    }

    .sub-bottom button:nth-of-type(2) {
        background-color: #5ab558;
    }

    .sub-bottom button:nth-of-type(3) {
        background-color: #5ab558;
    }

    .sub-bottom button:nth-of-type(4) {
        background-color: #ff7645;
    }

    .sub-bottom button:nth-of-type(5) {
        background-color: #5ab558;
    }

    #page {
        margin-top: 10px;
        position: relative;
        left: 50%;
        margin-left: -150px;
        bottom: 5px;
    }

    .table tr:nth-child(even) {
        background: #ffffff;
    }

    .table tr:nth-child(odd) {
        background: #E8EFF7;
    }

    .search {
        width: 60px;
        height: 30px;

        border: 1px solid #bbb;
    }

    .search:hover {
        background-color: #ccc;
    }

    #begin_time, #end_time {
        background: url(img/Month-Calendar.png) no-repeat 125px 7px;
    }
</style>
<body>
<div class="top2">
    <div class="logo">
        <img src="img/logo1.png" style="width: 214px;height: 36px;position: relative;left: -12%;" title="悟略科技"/>
    </div>
    <div class="top-link">
        <img src="img/user.png" style="width: 26px;height: 25px;position: relative;left: 3%;" title="管理员"/>
        <h id="roseNam">管理员：<%
            String str = request.getParameter("username");
            str = java.net.URLDecoder.decode(str, "UTF-8");
            out.print(str);
        %></h>
        <input type="hidden" id="cBillCode" value="">
        <input type="hidden" id="userId" value="<%=request.getParameter("rolesid")%>">
        <input type="hidden" id="cCode" value="">
    </div>
</div>
<div class="top1">
    <table class="formTable" style="width:100%;height: 50px;font-size: 14px;">
        <tr>
            <td style="height:40px">生产订单:</td>
            <td style="height:40px"><input id="order_num" type="text" value="" style="width:150px;height:30px;"></td>
            <td style="height:40px">开始时间</td>
            <td style="height:40px"><input id="begin_time" type="text" placeholder="请选择"
                                           style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;"
                                           onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"
                                           readonly></td>
            <td style="height:40px">结束时间</td>
            <td style="height:40px"><input id="end_time" type="text" placeholder="请选择"
                                           style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;"
                                           onClick="jeDate({dateCell:'#end_time',isTime:true,format:'YYYY-MM-DD'})"
                                           readonly></td>
            <td style="height:40px">送检单状态:</td>
            <td style="height:40px">
                <select style="width:150px;height:30px;" id="checkType">
                    <option value="0">送检单未提交</option>
                    <option value="10" selected='selected'>送检单已提交</option>
                </select>
            </td>
            <td style="height:40px">产品名称</td>
            <td style="height:40px"><input id="order_name" type="text" value="" style="width:150px;height:30px;"></td>
            <td style="height:40px"><input type="button" value="查询" class="search" style="width:60px;"
                                           onclick="firstList(1)"></td>

        </tr>
    </table>
    <button class="buttons" title="返回主界面" onclick="goBack();"
<%--            style="position:relative;left:95%;width:32px;top:30px;height:32px;background:url(img/home_back.png)">--%>
        style="position:relative;left:95%;width:32px;top:30px;height:32px;background:url(img/home_back.png)">
</div>
</div>
<h2 class="title2">送检单列表</h2>
<div class="top3">
    <table class="table">

    </table>
    <div id="page"></div>
</div>
<div class="cd-popup2">
    <div class="cd-popup-container2" style="overflow:auto;background:#ffffff">
        <div class="bigKuang">
            <div class="sub-title">
                <h2 class="sub-h">单据信息</h2>
                <div class="sub-barIMG"></div>
                <div class="sub-bar">
                    <table class="aaaa">

                    </table>
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h">来源信息</h2>

                <div class="sub-bar">
                    <table class="bbbb">
                        <tr>
                            <td style="height:38px;width:87px; text-align: right;">:&nbsp;&nbsp;</td>
                            <td style="width:258px;text-align: left;">123546465234234234</td>
                            <td style="width:74px; text-align: right;">客户料号:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">2017.3.21</td>
                            <td style="width:125px; text-align: right;">订单数量:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">xz</td>
                        </tr>
                        <tr>
                            <td style="width:87px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>
                            <td style="width:258px;text-align: left;">123546465234234234</td>
                            <td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>
                            <td style="width:258px;text-align: left;">成品</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h">入库信息</h2>

                <div class="sub-bar">
                    <table class="cccc">
                        <tr>
                            <td style="height:38px;width:78px; text-align: right;">产品编号:&nbsp;&nbsp;</td>
                            <td style="width:258px;text-align: left;">123546465234234234</td>
                            <td style="width:74px; text-align: right;">产品名称:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">2017.3.21</td>
                            <td style="width:125px; text-align: right;">单位:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">xz</td>
                        </tr>
                        <tr>
                            <td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>
                            <td style="width:258px;text-align: left;">123546465234234234</td>
                            <td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">2017.3.21</td>
                            <td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>
                            <td style="width:120px;text-align: left;">xz</td>
                        </tr>
                    </table>

                </div>
            </div>
            <div class="sub-bottom">
                <button style="background-color:rgba(0, 136, 204, 0.34);border:0px;" onclick="tiJiao()" ;>保存</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button style="background-color:#E6E6E6;border:0px;">关闭</button>
            </div>
        </div>
    </div>
</div>
</div>

<div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">单据图片</h4>
            </div>
            <div class="modal-body" id="imgModal">

            </div>

        </div>
    </div>
</div>

<div id="myModal4" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     style="text-align: left;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">选择档案</h4>
            </div>
            <div class="modal-body" id="daModal">
                <a onclick="aclick()">查看pdf</a>
            </div>

        </div>
    </div>
</div>


<div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     style="width: 800px;left: 40%;top:21%;height:400px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">可用号段</h4>
            </div>
            <div class="modal-body">
                <table class="table2">
                    <tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">
                        <td>开始号段</td>
                        <td>结束号段</td>
                        <td>开始号段串</td>
                        <td>结束号段串</td>
                        <td>完整号段串</td>
                        <td>数量</td>
                    </tr>
                </table>
            </div>

            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">已选号段</h4>
            </div>
            <div class="modal-body">
                <textarea id="getNumber"
                          style="width:400px;height:80px;border-color:#FFFFFF;font-size: 16px;"></textarea>
                <textarea id="tearea" style="width:300px;height:80px;border-color:#FFFFFF;font-size: 16px;color:red;"
                          readonly></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="jiaoyan();">校验</button>
                <button type="button" class="btn btn-primary" onclick="getNumber();">确认</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
            </div>
        </div>
    </div>
</div>
</div>
<input type="hidden" id="aaa" value=<%=path %>>
<input type="hidden" id="pages" value="1">
<input type="hidden" id="id_material">
<input id="banci" type="hidden" value=<%=cbanci %>>
<input id="workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
<input id="journalMainId" type="hidden" value="">
<input id="detailid" type="hidden" value="">
</body>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

<script type="text/javascript">
    var flag = 0;
    var path = $('#aaa').val();
    var banci = $("#banci").val();
    var workTime = $("#workTime").val();
    var roseid = $("#userId").val();
    //生产订单id
    var billid;
    var zuofeiid;
    var judgedate;
    $('#myModal2').css('z-index', -1);

    //报检数量
    var bjNumber;

    //把选中号段添加到input
    function getNumber() {
        var number = $("#getNumber").val();
        $("#tjhd").val(number);

        $('#myModal2').modal('hide');
    }

    function bigimg(obj) {
        var zoom = parseInt(obj.style.zoom, 10) || 100;
        zoom += event.wheelDelta / 12;
        if (zoom > 0)
            obj.style.zoom = zoom + '%';
        return false;
    }

    //查看作业单图片
    function ckBillid() {
        $.ajax({
            url: "getNumber/test.do?id=" + billid + "&type=1",
            dataType: "json",
            async: false,
            success: function (data) {

                $("#imgModal").empty();
                if (data.length == 0) {
                    $("#imgModal").append('暂未生成作业单图片');
                } else {
                    for (var i = 0; i < data.length; i++) {
                        $("#imgModal").append('<img id="test' + i + '" onmousewheel="return bigimg(this)" class="test1" width="100" height="100" src="' + data[i].img + '" />');
                    }

                }
                $('#myModal3').modal();
                $(".test1").click(function () {
                    //alert($(this).width());
                    if ($(this).width() > 100) {
                        $(this).css("height", 100);
                        $(this).css("width", 100);
                        $(this).css("zoom", '0');
                    } else {
                        $(this).css("height", 1300);
                        $(this).css("width", 1000);
                        $(this).css("zoom", '200%');
                    }
                })
            }
        })
    }

    //获取可用号段
    function addNumber() {
        $('#myModal2').css('z-index', 1050);
        $("#tearea").val('');
        $('#myModal2').modal();
        $("table.table2").empty();
        $("table.table2").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td >开始号段</td>' +
            '<td >结束号段</td>' +
            '<td >开始号段串</td>' +
            '<td >结束号段串</td>' +
            '<td >完整号段串</td>' +
            '<td >数量</td>' +
            '</tr>');
        var rksl = $("#rksla").val();
        $.ajax({
            url: encodeURI(encodeURI("getNumber/getUsalbe.do?id=" + billid + "&rksl=" + rksl)),
            dataType: "json",
            async: false,
            success: function (data) {

                for (var i = 0; i < data.length; i++) {
                    $("table.table2").append('<tr>' +
                        '<td >' + data[i].cstart + '</td>' +
                        '<td >' + data[i].cstop + '</td>' +
                        '<td >' + data[i].cstartstr + '</td>' +
                        '<td >' + data[i].cstopstr + '</td>' +
                        '<td >' + data[i].cnumber + '</td>' +
                        '<td >' + data[i].num + '</td>' +
                        '</tr>');
                }
                var m = (data.length - 1);
                judgedate = data;
                $("#getNumber").val(data[m].rknumber);
            }
        })
    }

    //校验号段
    function jiaoyan() {
        var selectNumber = $("#getNumber").val();

        var numberbyte = selectNumber.split(",");

        var sub = 0;
        for (var m = 0; m < numberbyte.length; m++) {
            var ddnumber = numberbyte[m];
            var ddnumberbyte = ddnumber.split("-");
            var start = parseInt(ddnumberbyte[0]);
            var stop = parseInt(ddnumberbyte[1]);
            sub = sub + (stop - start + 1);

        }

        $("#tearea").val('共选择了' + numberbyte.length + '段号段，总数量为:' + sub);
    }

    function zuofei() {
        $.ajax({
            url: encodeURI(encodeURI("zuoFei.list?id=" + zuofeiid + "&userid=" + roseid)),
            //dataType: "json",
            async: false,
            success: function (data) {
                alert('作废成功');
                $('.cd-popup2').removeClass('is-visible2');
                firstList(1);
            }
        })
    }


    function goBack() {
        /*  window.open(path+'/jsp/SelectType.jsp',"_self"); */
    }

    firstList(1);

    function firstList(i) {
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var status = parseFloat($("#checkType").val());
        var order_name = $("#order_name").val();

        $("table.table").empty();
        $("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px;">序号</td>' +
            '<td style="height:30px;">送检单号</td>' +
            '<td style="height:30px;">制单人</td>' +
            '<td style="height:30px;">制单时间</td>' +
            '<td style="height:30px;">备注</td>' +
            '<td style="height:30px;">生产订单号</td>' +
            '<td style="height:30px;">产品编号</td>' +
            '<td style="height:30px;">产品名称</td>' +
            '<td style="height:30px;">产品单位</td>' +
            '<td style="height:30px;">规格</td>' +
            '<td style="height:30px;">入库数量</td>' +
            '<td style="height:30px;">状态</td>' +
            '<td style="height:30px;">质检备注</td>' +
            '<td style="height:30px;">批次</td>'
        );
        $.ajax({
           // url: encodeURI(encodeURI("selectSendListNoSubmit.list?order_num=" + order_num + "&begin_time=" + begin_time + "&end_time=" + end_time + "&status=" + status + "&indexPage=" + i + "&banci=" + banci + "&workTime=" + workTime + "&rolesid=" + roseid)),
            url: encodeURI(encodeURI("selectSendListNoSubmit.list?order_num=" + order_num + "&order_name=" + order_name + "&begin_time=" + begin_time + "&end_time=" + end_time + "&status=" + status + "&indexPage=" + i + "&banci=" + banci + "&workTime=" + workTime + "&rolesid=" + roseid)),

            dataType: "json",
            async: false,
            success: function (data) {
                var detectionJson = data;//eval(data);
                if (data.length > 0) {
                    $("#pages").val(data[0].page);
                    $("#journalMainId").val(data[0].journalMainId);

                    var numpages = parseFloat($("#pages").val());
                    $("#page").Page({
                        totalPages: numpages,//分页总数
                        liNums: 5,//分页的数字按钮数(建议取奇数)
                        activeClass: 'activP', //active 类样式定义
                        callBack: function (page) {
                            getPages(page);
                        }
                    });
                }
                console.log(data);
                var i;
                for (i = 0; i < data.length; i++) {
                    var ddate = data[i].dDate;
                    var sendDate;
                    if (data[i].dDate == null) {
                        sendDate = '暂无送货时间';
                    } else {
                        sendDate = getLocalTime(data[i].dDate.time);
                    }
                    var judge;
                    if (data[i].judge == 1) {
                        judge = '<span style="color:red">已检<span>';
                    } else {
                        judge = '未检';
                    }
                    //var aaa=detectionJson[a].sORx;
                    $("table.table").append('<tr><td style="height:30px;display:none">' + data[i].ID + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].ID_Material + '</td>' +
                        '<td style="height:30px;">' + data[i].RowNum + '</td>' +
                        '<td style="height:30px;">' + data[i].cBillCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cMan + '</td>' +
                        '<td style="height:30px;">' + sendDate + '</td>' +
                        '<td style="height:30px;">' + data[i].cRemark + '</td>' +
                        '<td style="height:30px;">' + data[i].scProductCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cName + '</td>' +
                        '<td style="height:30px;">' + data[i].cUnit + '</td>' +
                        '<td style="height:30px;">' + data[i].cSize + '</td>' +
                        '<td style="height:30px;">' + data[i].nAmount + '</td>' +
                        '<td style="height:30px;">' + judge + '</td>' +
                        '<td style="height:30px;">' + data[i].Bremark + '</td>' +
                        '<td style="height:30px;">' + data[i].cBatchCode + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].detailid + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].ID_scProduct + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].flag + '</td>'
                    );

                }
                //未提交
                if (status == 0) {
                    $("table.table tr").not("table.table tr:first-child").click(function () {
                        var $this = $(this);
                        var path = $('#aaa').val();
                        billid = $this.find('td:eq(17)').text();
                        //alert($this.find('td:eq(0)').text());
                        //alert($this.find('td:eq(2)').text());
                        $("#detailid").val($this.find('td:eq(16)').text());
                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();

                        bjNumber = $this.find('td:eq(12)').text();
                        zuofeiid = id;
                        ///var roseid=$("#userId").val();
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url: "updateQualityNoSubmit.list?id=" + id,
                            dataType: "json",
                            async: false,
                            success: function (data) {

                                if (data[0].cBillCode == null) {
                                    alert("请配置送检单单据编号");
                                } else {
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }

                                //(".sub-bottom").
                                $(".sub-bottom").empty();
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zuofei()">作废</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="daPDF(1)">查看PDF</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="ckBillid()">查看作业单图片</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="baocunSong()">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="tiJiao()";>提交</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="guanbi()">关闭</button>');
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                    '<td>' + data[0].cBillCode + '</td>' +
                                    '<td>制单时间:&nbsp;&nbsp;</td>' +
                                    '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                    '<td>制单人:&nbsp;&nbsp;</td>' +
                                    '<td>' + data[0].cMan + '</td>' +

                                    '<td>复核人:&nbsp;&nbsp;</td>' +
                                    '<td ><select name="reviewer_id" id="reviewer_id"  >' +
                                    '<option value="0" selected >请选择</option>' +
                                    '</select></td></tr>' +

                                    '<tr><td>备注:&nbsp;&nbsp;</td>' +
                                    '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:80px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');
                                for (var i = 1; i < data.length; i++) {
                                    var id = data[i].id;
                                    var textStr = data[i].czgxm;
                                    $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                    $("#reviewer_id").append($optionStr);

                                }
                                $("table.bbbb").empty();
                                $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:180px;text-align: left;">' + data[0].scProductCode + '</td>' +
                                    '<td style="width:88px; text-align: right;">客户料号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;">' + data[0].cCustomerCode + '</td>' +
                                    '<td style="width:125px; text-align: right;">订单数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;">' + data[0].nFKAmount + '</td></tr>' +
                                    '<tr><td style="width:100px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:180px;text-align: left;">' + data[0].nCheckAmount + '</td>' +
                                    '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>' +
                                    '<td style="width:50px;text-align: left;">成品</td></tr>');
                                $("table.cccc").empty();
                                $("table.cccc").append('<tr><td style="height:38px;width:120px; text-align: right;">产品编号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;">' + data[0].cCode + '</td>' +
                                    '<td style="width:120px; text-align: right;">产品名称:&nbsp;&nbsp;</td>' +
                                    '<td style="width:200px;text-align: left;">' + data[0].cName + '</td>' +
                                    '<td style="width:125px; text-align: right;">单位:&nbsp;&nbsp;</td>' +
                                    '<td style="width:50px;text-align: left;">' + data[0].cUnit + '</td></tr>' +
                                    '<tr><td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;">' + data[0].cSize + '</td>' +
                                    '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:200px;height:30px;" value="' + data[0].cBatchCode + '"></td>' +
                                    '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" value="' + data[0].nAmount + '"></td></tr>' +
                                    '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input type="text" id="rkbz" style="width:150px;height:30px;" value="' + data[0].sremark + '"></td>' +
                                    '</tr>');
                            }
                        })
                    })
                } else {
                    $("table.table tr").not("table.table tr:first-child").click(function (event) {
                        event.preventDefault();
                        $('.cd-popup2').addClass('is-visible2');
                        ///////////////////////////////////
                        var $this = $(this);
                        $("#detailid").val($this.find('td:eq(16)').text());
                        var detailliid = $this.find('td:eq(16)').text();
                        billid = $this.find('td:eq(17)').text();
                        //alert($this.find('td:eq(0)').text());
                        //alert($this.find('td:eq(2)').text());
                        bjNumber = $this.find('td:eq(12)').text();

                        //判断是否是辅料纸张。9是辅料纸张。
                        flag = $this.find('td:eq(18)').text();

                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();
                        zuofeiid = id;
                        var ids = $this.find('td:eq(1)').text();
                        var roseid = $("#userId").val();
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url: "updateQualityNoSubmit.list?id=" + id,
                            dataType: "json",
                            async: false,
                            success: function (data) {

                                if (data[0].cBillCode == null) {
                                    alert("请配置送检单单据编号");
                                } else {
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }


                                $(".sub-bottom").empty();
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zuofei()">作废</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="daPDF(1)">查看PDF</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="ckBillid()">查看作业单图片</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zancun()";>暂存</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button id="submitid" style="border:0px;" onclick="zhijian()";>提交</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="background-color: #ff7645;border:0px;" onclick="guanbi()">关闭</button>');
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                if (data[0].qof == 1 && 1 == 0) {
                                    $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cBillCode + '</td>' +
                                        '<td>制单时间:&nbsp;&nbsp;</td>' +
                                        '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                        '<td>制单人:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cMan + '</td>' +

                                        '<td>复核人:&nbsp;&nbsp;</td>' +
                                        '<td ><select name="reviewer_id" id="reviewer_id"  >' +
                                         '<option value="0" selected >请选择</option>' +
                                        '</select></td></tr>' +

                                        '<tr><td>添加号段:&nbsp;&nbsp;</td><td><textarea id="tjhd" style="width:200px;height:55px;border-color="#FFFFFF"></textarea><button onclick="addNumber()">添加可用号段</button></td><td >备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:60px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');

                                    for (var i = 1; i < data.length; i++) {
                                        var id = data[i].id;
                                        var textStr = data[i].czgxm;
                                        $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                        $("#reviewer_id").append($optionStr);

                                    }
                                } else {
                                    $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cBillCode + '</td>' +
                                        '<td>制单时间:&nbsp;&nbsp;</td>' +
                                        '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                        '<td>制单人:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cMan + '</td>' +



                                        '<td>复核人:&nbsp;&nbsp;</td>' +
                                        '<td ><select name="reviewer_id" id="reviewer_id" >' +
                                         '<option value="0" selected >请选择</option>' +
                                        '</select></td></tr>' +

                                        '<tr><td>备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:80px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');

                                    for (var i = 1; i < data.length; i++) {
                                        var id = data[i].id;
                                        var textStr = data[i].czgxm;
                                        $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                        $("#reviewer_id").append($optionStr);

                                    }
                                }

                                $("table.cccc").empty();
                                $("table.cccc").append(

                                    '<tr><td style="width:100px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                    '<td colspan="5" style="width:240px;text-align: left;">'+data[0].cName+'</td>' +
                                    '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla"  value="'+data[0].nAmount+'"></td></tr>'+

                                    '<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                    '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                    '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                    '<td style="height:38px;width:78px; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                    '<td  style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                    '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].cBatchCode+'" ></td></tr>'+

                                    '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="packNumber"  disabled="disabled" value="'+data[0].nPackAmount+'"></td>'+
                                    '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].StandardWeight+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].cPackUnit+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">每件包数:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="EachNumber" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].EachNumber+'" ></td></tr>' +


                                    '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input  style="width:100px;height:30px;" type="text" id="unitWeight" disabled="disabled" value="'+data[0].nGrossWeight_D+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxNumber" onclick="next()" disabled="disabled" value="'+data[0].NoPackedAmount+'"></td>'+

                                    '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].NetWeigh+'" ></td>'+

                                    '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                    '<td  style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight"  disabled="disabled" value="'+data[0].NoGrossWeight+'"></td></tr>'+


                                    '<tr><td style="width:74px; text-align: right;">备品数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="spareNumber" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].nAmount_Specimen+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">备品入库&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="spareflag" name="spareflag" type="checkbox" value="1"></td>'+
                                    '<td style="width:74px; text-align: right;">留样数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="sampleNumber"  disabled="disabled" value="'+data[0].nAmount_Sample+'"></td>'+
                                    '<td style="width:74px; text-align: right;">留样入库&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="sampleflag" name="sampleflag" type="checkbox" value="1"></td>'+


                                    '<tr><td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select disabled="disabled" id="zjbz" style="width:150px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                    // '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                    // '<td style="width:120px;text-align: left;"><select disabled="disabled" id="zjdj" style="width:150px;height:30px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select>'+
                                    '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input   id="zjdj" type="text"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].cCheckLevel+'" ></td>'+


                                    '<td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select disabled="disabled" name="Machine_id" id="Machine_id" onchange="func()" style="width:150px;height:30px;"></select>'+
                                    '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select disabled="disabled" name="Team_id" id="Team_id" style="width:150px;height:30px;"></select>'+
                                    '</tr>'+

                                    '<tr><td style="width:74px; text-align: right;">生产数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text"  disabled="disabled" value="'+data[0].nFKAmount+'"></td>'+
                                    '<td style="width:74px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].nCheckAmount+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">已通知入库数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" i  disabled="disabled" value="'+data[0].nAmountNotice+'"></td></tr>'+
                                    '</tr>'+
                                    '<tr> <td style="width:125px; text-align: right;">装箱单日期:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="container_time" type="text" disabled="disabled" value="'+data[0].dDate_Packed+'" ></td></tr>'+

                                    '</tr>'+

                                    '<tr><td style="width:74px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '</tr>'+
                                    '</tr>'+
                                    '<tr><div style="background:#fff;text-align: center;margin:0 auto;margin-bottom:-18px;width: 90px;position:relative;"></div><hr/>'+
                                    '</tr>'+
                                    '<tr><td style="height:38px;width:120px; text-align:right;">抽检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="cjsl" style="width:150px;height:30px;" value="' + data[0].justNumber + '" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>' +
                                    '<td style="width:100px; text-align: right;">不良品:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="blp" style="width:150px;height:30px;" value="0" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>' +
                                    '<td style="width:125px; text-align: right;">不良率(%):&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="bll" style="width:150px;height:30px;" value="0" readonly></td></tr>' +
                                    '<tr><td style="height:38px;width:78px; text-align: right;">质检结果:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><select id="zjjg" style="width:150px;height:30px;"><option value="0">合格</option><option value="1">不合格</option><option value="2">偏差</option></select></td>' +

                                    // '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>' +
                                    // '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:150px;height:30px;" value="' + data[0].cBatchCode + '"></td>' +
                                    // '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>' +
                                    // '<td style="width:120px;text-align: left;"><input style="width:150px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" value="' + data[0].nAmount + '"></td></tr>' +

                                //     var value = Math.sqrt( 81 ); 开平方
                                    '<td style="width:74px; text-align: right;">每箱抽检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="nospbox" style="width:150px;height:30px;" ></td>' +
                                    '<td style="width:125px; text-align: right;">抽检箱数:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input style="width:150px;height:30px;" type="text" id="nosabox" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>' +


                                    '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="rkbz" style="width:150px;height:30px;" value="' + data[0].sremark + '"></td>' +
                                    '<td style="height:38 px;width:130px; text-align: right;">质检结果说明:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="jgsm" style="width:150px;height:30px;" value=""></td>' +
                                    /* '<td style="height:38 px;width:100px; text-align: right;">特采数量:&nbsp;&nbsp;</td>'+
		               					'<td style="width:150px;text-align: left;"><input type="text" id="tcsl" style="width:150px;height:30px;" value="" readonly></td>'+ */
                                    '</tr>');

                                if(data[0].sPecimen_Flag==1){
                                    document.getElementById("spareflag").checked = true;
                                }
                                if(data[0].sAmple_Flag==1){
                                    document.getElementById("sampleflag").checked = true;
                                }
                                $("#Machine_id").val(data[0].cName_Res);
                                $("#Team_id").val(data[0].cName_Team);
                                //抽检箱数
                                var value =Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                                var ab= $("#cjsl").val();
                                //document.getElementById("nospbox").value=Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                                //document.getElementById("nosabox").value=(Math.ceil(ab/value));//每箱抽检数量
                                document.getElementById("nosabox").value=Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                                document.getElementById("nospbox").value=(Math.ceil(ab/value));//每箱抽检数量
                                //document.getElementById("rksla").value=(data[0].nAmount-data[0].nAmount_Specimen-data[0].nAmount_Sample);

                            }
                        })


                        $.ajax({
                            url: "productQuality.list?iMaterialID=" + ids + "&detailliid=" + detailliid + "&billid=" + billid,
                            async: false,
                            success: function (data) {
                                var mm = eval('(' + data + ')');
                                var dd = mm.citemstr;
                                $("table.bbbb").empty();
                                $("table.bbbb").append(
                                    '<tr style="background-color: #3E6390;color:#fff;">' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align:center;">检验项目</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验说明</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验标准</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检测属性</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">标准值</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">标准单位</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验值</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">结果</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">备注</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">缺陷等级</td>');
                                var i;
                                console.log(dd);
                                for (i = 0; i < dd.length; i++) {
                                    var jieguoa = dd[i].jieguo;

                                    if (jieguoa == '0') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0"selected ="selected">合格</option><option value="1">不合格</option></select>';
                                    } else if (jieguoa == '1') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
                                    } else if (jieguoa == '-1' || jieguoa == '') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected" >未判定</option><option value="0">合格</option><option value="1" >不合格</option></select>';
                                    }


                                    if (dd[i].editorType == 'ComboBox') {
                                        $("table.bbbb").append(
                                            '<tr style="background-color: #ffffff;">' +
                                            '<td style="height:30px;display:none;">' + dd[i].tip + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].precision + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                                            '<td style="height:30px;">' + dd[i].caption + '</td>' +
                                            '<td style="height:30px;max-width:400px;">' + dd[i].enuma + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkrule + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                                            '<td style="height:30px;">' + dd[i].biaozhunzhi + '</td>' +
                                            '<td style="height:30px;">' + dd[i].unit + '</td>' + //id="JYid"
                                            '<td style="height:30px;"><select id="JYid' + i + '"  style="text-align: center;width:100%;height:99%;width:100%;border:0px;">' + dd[i].enumString + '</select></td>' +
                                            '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>');

                                             document.getElementById("JYid"+i).options[1].selected = true;

                                    } else {
                                        var shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;">';

                                        if ((dd[i].editorType == "SpinEdit") || (dd[i].editorType == "CurrencyEdit")) {
                                            shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';
                                        }
                                        $("table.bbbb").append(
                                            '<tr style="background-color: #ffffff;">' +
                                            '<td style="height:30px;display:none;">' + dd[i].tip + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].precision + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                                            '<td style="height:30px;">' + dd[i].caption + '</td>' +
                                            '<td style="height:30px;max-width:400px;"><div id="mobaa" style="max-width:666px;">' + dd[i].enumString + '</div></td>' +
                                            '<td style="height:30px;">' + dd[i].checkrule + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                                            '<td style="height:30px;max-width:100px;">' + dd[i].biaozhunzhi + '</td>' +
                                            '<td style="height:30px;">' + dd[i].unit + '</td>' +
                                            '<td style="height:30px;">' + shijizhi + '</td>' +
                                            '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>');

                                    }

                                }

                                $("#cjsl").keyup(function () {
                                    var cjsl = parseFloat($("#cjsl").val());
                                    var blp = parseFloat($("#blp").val());
                                    var bfb = (blp / cjsl).toFixed(4) * 100;
                                    if (isNaN(bfb)) {
                                        bfb = '请输入正确的参数';
                                    }
                                    $("#bll").val(bfb);
                                })
                                $("#blp").keyup(function () {
                                    var cjsl = parseFloat($("#cjsl").val());
                                    var blp = parseFloat($("#blp").val());
                                    var bfb = (blp / cjsl).toFixed(4) * 100;
                                    if (isNaN(bfb)) {
                                        bfb = '请输入正确的参数';
                                    }
                                    $("#bll").val(bfb);
                                })
                                $("table.bbbb td").css('border-style', 'solid');
                                $("table.bbbb td").css('border-color', '#8888A1');
                                $("table.bbbb td").css('text-align', 'center');
                                $("table.bbbb td").css('border-width', '1px');
                                $("table.bbbb").css('top', '-16px');
                                $("table.bbbb").css('position', 'relative');
                                $(".campare").keyup(function () {
                                    var operator = this.parentNode.parentNode.cells[1].innerHTML;
                                    var defaultValue = parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
                                    var minValue = this.parentNode.parentNode.cells[3].innerHTML;
                                    var maxValue = this.parentNode.parentNode.cells[4].innerHTML;
                                    var tureValue = parseFloat($(this).parent().find(".campare").eq(0).val());
                                    //alert(defaultValue);
                                    //alert(operator);
                                    if ("大于" == operator) {
                                        if (tureValue > defaultValue) {
                                            //alert(tureValue+'>'+defaultValue);
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //$("#resause").val(1);
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("小于" == operator) {
                                        if (tureValue < defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
                                        }
                                    } else if ("介于" == operator) {
                                        if (minValue <= tureValue && tureValue <= maxValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("等于" == operator) {
                                        if (defaultValue == tureValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("大于等于" == operator) {
                                        if (defaultValue < tureValue || tureValue == defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("小于等于" == operator) {
                                        if (defaultValue > tureValue || tureValue == defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }

                                    } else if ("不等于" == operator) {
                                        if (tureValue != defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    }
                                })

                            }
                        })
                    })

                }
            }
        })
    }

    //修改送检单不提交
    function baocunSong() {
        var id = $("#cCode").val();
        var status = parseFloat($("#checkType").val());
        //上面的备注
        var mainBz = $("#bbz").val();
        //入库批次
        var cBatchCode = $("#rkpca").val();
        //入库数量
        var nAmount = $("#rksla").val();
        //质检人员id
        var roseid = $("#userId").val();
        //下面的备注
        var detailBz = $("#rkbz").val();

        var params = {
            detailBz: detailBz,
            mainBz: mainBz
        }
        if (nAmount > 0) {
            if (status == 0) {
                $.ajax({
                    url: encodeURI(encodeURI("saveSendListNoSubmit.list?id=" + id + "&roseid=" + roseid + "&cBatchCode=" + cBatchCode + "&nAmount=" + nAmount)),
                    //dataType: "json",
                    async: false,
                    data: params,
                    success: function (data) {
                        $('.cd-popup2').removeClass('is-visible2');
                        alert(data);
                        window.location.reload();
                    }
                })
            } else {
            }

        } else {
            alert("入库数量必须大于0");
        }

    }

    //分页
    function getPages(i) {
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();
        var status = parseFloat($("#checkType").val());
        $("table.table").empty();
        $("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px;">序号</td>' +
            '<td style="height:30px;">送检单号</td>' +
            '<td style="height:30px;">制单人</td>' +
            '<td style="height:30px;">制单时间</td>' +
            '<td style="height:30px;">备注</td>' +
            '<td style="height:30px;">生产订单号</td>' +
            '<td style="height:30px;">产品编号</td>' +
            '<td style="height:30px;">产品名称</td>' +
            '<td style="height:30px;">产品单位</td>' +
            '<td style="height:30px;">规格</td>' +
            '<td style="height:30px;">入库数量</td>' +
            '<td style="height:30px;">状态</td>' +
            '<td style="height:30px;">质检备注</td>' +
            '<td style="height:30px;">批次</td>'
        );
        $.ajax({
           // url: encodeURI(encodeURI("selectSendListNoSubmit.list?order_num=" + order_num + "&begin_time=" + begin_time + "&end_time=" + end_time + "&status=" + status + "&indexPage=" + i + "&banci=" + banci + "&workTime=" + workTime + "&rolesid=" + roseid)),
            url: encodeURI(encodeURI("selectSendListNoSubmit.list?order_num=" + order_num + "&order_name=" + order_name + "&begin_time=" + begin_time + "&end_time=" + end_time + "&status=" + status + "&indexPage=" + i + "&banci=" + banci + "&workTime=" + workTime + "&rolesid=" + roseid)),

            dataType: "json",
            async: false,
            success: function (data) {
                $("#journalMainId").val(data[0].journalMainId);

                var detectionJson = data;//eval(data);
                var i;
                for (i = 0; i < data.length; i++) {
                    var ddate = data[i].dDate;
                    var sendDate;
                    if (data[i].dDate == null) {
                        sendDate = '暂无送货时间';
                    } else {
                        sendDate = getLocalTime(data[i].dDate.time);
                    }
                    //var aaa=detectionJson[a].sORx;
                    var judge;
                    if (data[i].judge == 1) {
                        judge = '<span style="color:red">已检<span>';
                    } else {
                        judge = '未检';
                    }
                    $("table.table").append('<tr><td style="height:30px;display:none">' + data[i].ID + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].ID_Material + '</td>' +
                        '<td style="height:30px;">' + data[i].RowNum + '</td>' +
                        '<td style="height:30px;">' + data[i].cBillCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cMan + '</td>' +
                        '<td style="height:30px;">' + sendDate + '</td>' +
                        '<td style="height:30px;">' + data[i].cRemark + '</td>' +
                        '<td style="height:30px;">' + data[i].scProductCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cCode + '</td>' +
                        '<td style="height:30px;">' + data[i].cName + '</td>' +
                        '<td style="height:30px;">' + data[i].cUnit + '</td>' +
                        '<td style="height:30px;">' + data[i].cSize + '</td>' +
                        '<td style="height:30px;">' + data[i].nAmount + '</td>' +
                        '<td style="height:30px;">' + judge + '</td>' +
                        '<td style="height:30px;">' + data[i].Bremark + '</td>' +
                        '<td style="height:30px;">' + data[i].cBatchCode + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].detailid + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].ID_scProduct + '</td>' +
                        '<td style="height:30px;display:none">' + data[i].flag + '</td>'
                    );

                }
                //未提交
                if (status == 0) {
                    $("table.table tr").not("table.table tr:first-child").click(function () {
                        var $this = $(this);
                        var path = $('#aaa').val();
                        billid = $this.find('td:eq(17)').text();
                        //alert($this.find('td:eq(0)').text());
                        //alert($this.find('td:eq(2)').text());
                        $("#detailid").val($this.find('td:eq(16)').text());
                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();
                        bjNumber = $this.find('td:eq(12)').text();
                        zuofeiid = id;
                        ///var roseid=$("#userId").val();
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url: "updateQualityNoSubmit.list?id=" + id,
                            dataType: "json",
                            async: false,
                            success: function (data) {

                                if (data[0].cBillCode == null) {
                                    alert("请配置送检单单据编号");
                                } else {
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }

                                //(".sub-bottom").
                                $(".sub-bottom").empty();
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zuofei()">作废</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="daPDF(1)">查看PDF</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="ckBillid()">查看作业单图片</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="baocunSong()">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="tiJiao()";>提交</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="guanbi()">关闭</button>');
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                    '<td>' + data[0].cBillCode + '</td>' +
                                    '<td>制单时间:&nbsp;&nbsp;</td>' +
                                    '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                    '<td>制单人:&nbsp;&nbsp;</td>' +
                                    '<td>' + data[0].cMan + '</td>' +

                                    '<td>复核人:&nbsp;&nbsp;</td>' +
                                    '<td ><select name="reviewer_id" id="reviewer_id"  >' +
                                    '<option value="0" selected >请选择</option>' +
                                    '</select></td></tr>' +

                                    '<tr><td>备注:&nbsp;&nbsp;</td>' +
                                    '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:80px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');

                                for (var i = 1; i < data.length; i++) {
                                    var id = data[i].id;
                                    var textStr = data[i].czgxm;
                                    $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                    $("#reviewer_id").append($optionStr);

                                }
                                $("table.bbbb").empty();
                                $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:180px;text-align: left;">' + data[0].scProductCode + '</td>' +
                                    '<td style="width:88px; text-align: right;">客户料号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;">' + data[0].cCustomerCode + '</td>' +
                                    '<td style="width:125px; text-align: right;">订单数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;">' + data[0].nFKAmount + '</td></tr>' +
                                    '<tr><td style="width:100px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:180px;text-align: left;">' + data[0].nCheckAmount + '</td>' +
                                    '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>' +
                                    '<td style="width:50px;text-align: left;">成品</td></tr>');
                                $("table.cccc").empty();
                                $("table.cccc").append('<tr><td style="height:38px;width:120px; text-align: right;">产品编号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;">' + data[0].cCode + '</td>' +
                                    '<td style="width:120px; text-align: right;">产品名称:&nbsp;&nbsp;</td>' +
                                    '<td style="width:200px;text-align: left;">' + data[0].cName + '</td>' +
                                    '<td style="width:125px; text-align: right;">单位:&nbsp;&nbsp;</td>' +
                                    '<td style="width:50px;text-align: left;">' + data[0].cUnit + '</td></tr>' +
                                    '<tr><td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;">' + data[0].cSize + '</td>' +
                                    '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:200px;height:30px;" value="' + data[0].cBatchCode + '"></td>' +
                                    '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" value="' + data[0].nAmount + '"></td></tr>' +
                                    '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input type="text" id="rkbz" style="width:150px;height:30px;" value="' + data[0].sremark + '"></td>' +
                                    '</tr>');
                            }
                        })
                    })
                } else {
                    $("table.table tr").not("table.table tr:first-child").click(function (event) {
                        event.preventDefault();
                        $('.cd-popup2').addClass('is-visible2');
                        ///////////////////////////////////
                        var $this = $(this);
                        $("#detailid").val($this.find('td:eq(16)').text());
                        var detailliid = $this.find('td:eq(16)').text();
                        billid = $this.find('td:eq(17)').text();
                        //alert($this.find('td:eq(0)').text());
                        //alert($this.find('td:eq(2)').text());
                        bjNumber = $this.find('td:eq(12)').text();

                        //判断是否是辅料纸张。9是辅料纸张。
                        flag = $this.find('td:eq(18)').text();

                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();
                        zuofeiid = id;
                        var ids = $this.find('td:eq(1)').text();
                        var roseid = $("#userId").val();
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url: "updateQualityNoSubmit.list?id=" + id,
                            dataType: "json",
                            async: false,
                            success: function (data) {

                                if (data[0].cBillCode == null) {
                                    alert("请配置送检单单据编号");
                                } else {
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }

                                $(".sub-bottom").empty();
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zuofei()">作废</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="daPDF(1)">查看PDF</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="ckBillid()">查看作业单图片</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="border:0px;" onclick="zancun()";>暂存</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button id="submitid" style="border:0px;" onclick="zhijian()";>提交</button>&nbsp;&nbsp;&nbsp;&nbsp;');
                                $(".sub-bottom").append('<button style="background-color: #ff7645;border:0px;" onclick="guanbi()">关闭</button>');
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                if (data[0].qof == 1 && 1 == 0) {
                                    $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cBillCode + '</td>' +
                                        '<td>制单时间:&nbsp;&nbsp;</td>' +
                                        '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                        '<td>制单人:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cMan + '</td>' +

                                        '<td>复核人:&nbsp;&nbsp;</td>' +
                                        '<td ><select name="reviewer_id" id="reviewer_id"  >' +
                                        '<option value="0" selected >请选择</option>' +
                                        '</select></td></tr>' +

                                        '<tr><td>添加号段:&nbsp;&nbsp;</td><td><textarea id="tjhd" style="width:200px;height:55px;border-color="#FFFFFF"></textarea><button onclick="addNumber()">添加可用号段</button></td><td >备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:60px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');
                                    for (var i = 1; i < data.length; i++) {
                                        var id = data[i].id;
                                        var textStr = data[i].czgxm;
                                        $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                        $("#reviewer_id").append($optionStr);

                                    }
                                } else {
                                    $("table.aaaa").append('<tr style="height:45px"><td>单据编号:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cBillCode + '</td>' +
                                        '<td>制单时间:&nbsp;&nbsp;</td>' +
                                        '<td>' + getLocalTime(data[0].dDate.time) + '</td>' +
                                        '<td>制单人:&nbsp;&nbsp;</td>' +
                                        '<td>' + data[0].cMan + '</td>' +

                                        '<td>复核人:&nbsp;&nbsp;</td>' +
                                        '<td ><select name="reviewer_id" id="reviewer_id"  >' +
                                        '<option value="0" selected >请选择</option>' +
                                        '</select></td></tr>' +

                                        '<tr><td>备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="3" style="width:400px;text-align: left;"><textarea id="bbz" style="width:400px;height:80px;border-color="#FFFFFF">' + data[0].remark + '</textarea></td></tr>');
                                        for (var i = 1; i < data.length; i++) {
                                            var id = data[i].id;
                                            var textStr = data[i].czgxm;
                                            $optionStr = $("<option>").attr({"value" : id}).text(textStr);
                                            $("#reviewer_id").append($optionStr);

                                        }
                                }

                                $("table.cccc").empty();
                                $("table.cccc").append(

                                    '<tr><td style="width:100px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                    '<td colspan="5" style="width:240px;text-align: left;">'+data[0].cName+'</td>' +
                                    '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla"  value="'+data[0].nAmount+'"></td></tr>'+

                                    '<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                    '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                    '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                    '<td style="height:38px;width:78px; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                    '<td  style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                    '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].cBatchCode+'" ></td></tr>'+

                                    '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="packNumber"  disabled="disabled" value="'+data[0].nPackAmount+'"></td>'+
                                    '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].StandardWeight+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].cPackUnit+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">每件包数:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="EachNumber" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].EachNumber+'" ></td></tr>' +


                                    '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input  style="width:100px;height:30px;" type="text" id="unitWeight" disabled="disabled" value="'+data[0].nGrossWeight_D+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxNumber" onclick="next()" disabled="disabled" value="'+data[0].NoPackedAmount+'"></td>'+
                                    '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].NetWeigh+'" ></td>'+

                                    '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                    '<td  style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight"  disabled="disabled" value="'+data[0].NoGrossWeight+'"></td></tr>'+


                                    '<tr><td style="width:74px; text-align: right;">备品数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text" id="spareNumber" style="width:100px;height:30px;" disabled="disabled" value="'+data[0].nAmount_Specimen+'" ></td>'+
                                    '<td style="width:74px; text-align: right;">备品入库&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="spareflag" name="spareflag" type="checkbox" value="1"></td>'+
                                    '<td style="width:74px; text-align: right;">留样数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="sampleNumber"  disabled="disabled" value="'+data[0].nAmount_Sample+'"></td>'+
                                    '<td style="width:74px; text-align: right;">留样入库&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="sampleflag" name="sampleflag" type="checkbox" value="1"></td>'+


                                    '<tr><td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select id="zjbz" style="width:150px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                    '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="zjdj" type="text"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].cCheckLevel+'" ></td>'+

                                    // '<td style="width:120px;text-align: left;"><select id="zjdj" style="width:150px;height:30px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select>'+
                                    '<td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select disabled="disabled" name="Machine_id" id="Machine_id" onchange="func()" style="width:150px;height:30px;"></select>'+
                                    '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><select disabled="disabled" name="Team_id" id="Team_id" style="width:150px;height:30px;"></select>'+
                                    '</tr>'+

                                   '<tr><td style="width:74px; text-align: right;">生产数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text"  disabled="disabled" value="'+data[0].nFKAmount+'"></td>'+
                                    '<td style="width:74px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input type="text"  style="width:100px;height:30px;" disabled="disabled" value="'+data[0].nCheckAmount+'" ></td>'+
                                     '<td style="width:74px; text-align: right;">已通知入库数量:&nbsp;&nbsp;</td>'+
                                     '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" i  disabled="disabled" value="'+data[0].nAmountNotice+'"></td></tr>'+
                                    '</tr>'+
                                    '<tr> <td style="width:125px; text-align: right;">装箱单日期:&nbsp;&nbsp;</td>'+
                                    '<td style="width:120px;text-align: left;"><input id="container_time" type="text" disabled="disabled" value="'+data[0].dDate_Packed+'" ></td></tr>'+

                                    '</tr>'+

                                    '<tr><td style="width:74px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '<td style="width:125px; text-align: right;">————</td>'+
                                    '<td style="width:120px;text-align: left;"></td>'+
                                    '</tr>'+
                                    '<tr><div style="background:#fff;text-align: center;margin:0 auto;margin-bottom:-18px;width: 90px;position:relative;"></div><hr/>'+
                                    '</tr>'+
                                    '<tr><td style="height:38px;width:120px; text-align:right;">抽检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="cjsl" style="width:150px;height:30px;" value="' + data[0].justNumber + '" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>' +
                                    '<td style="width:100px; text-align: right;">不良品:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="blp" style="width:150px;height:30px;" value="0" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>' +
                                    '<td style="width:125px; text-align: right;">不良率(%):&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="bll" style="width:150px;height:30px;" value="0" readonly></td></tr>' +
                                    '<tr><td style="height:38px;width:78px; text-align: right;">质检结果:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><select id="zjjg" style="width:150px;height:30px;"><option value="0">合格</option><option value="1">不合格</option><option value="2">偏差</option></select></td>' +

                                    // '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>' +
                                    // '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:150px;height:30px;" value="' + data[0].cBatchCode + '"></td>' +
                                    // '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>' +
                                    // '<td style="width:120px;text-align: left;"><input style="width:150px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" value="' + data[0].nAmount + '"></td></tr>' +

                                    '<td style="width:74px; text-align: right;">每箱抽检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input type="text" id="nospbox" style="width:150px;height:30px;"></td>' +
                                    '<td style="width:125px; text-align: right;">抽检箱数:&nbsp;&nbsp;</td>' +
                                    '<td style="width:120px;text-align: left;"><input style="width:150px;height:30px;" type="text" id="nosabox" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>' +



                                    '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="rkbz" style="width:150px;height:30px;" value="' + data[0].sremark + '"></td>' +
                                    '<td style="height:38 px;width:130px; text-align: right;">质检结果说明:&nbsp;&nbsp;</td>' +
                                    '<td style="width:150px;text-align: left;"><input type="text" id="jgsm" style="width:150px;height:30px;" value=""></td>' +
                                    /* '<td style="height:38 px;width:100px; text-align: right;">特采数量:&nbsp;&nbsp;</td>'+
		               					'<td style="width:150px;text-align: left;"><input type="text" id="tcsl" style="width:150px;height:30px;" value="" readonly></td>'+ */
                                    '</tr>');

                                if(data[0].sPecimen_Flag==1){
                                    document.getElementById("spareflag").checked = true;
                                }
                                if(data[0].sAmple_Flag==1){
                                    document.getElementById("sampleflag").checked = true;
                                }
                                $("#Machine_id").val(data[0].cName_Res);
                                $("#Team_id").val(data[0].cName_Team);
                                //抽检箱数
                                var value =Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                                var ab= $("#cjsl").val();
                               // document.getElementById("nospbox").value=Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                               // document.getElementById("nosabox").value=(Math.ceil(ab/value));//每箱抽检数量
                                document.getElementById("nosabox").value=Math.ceil(Math.sqrt( data[0].nPackAmount ))+1;
                                document.getElementById("nospbox").value=(Math.ceil(ab/value));//每箱抽检数量
                               // document.getElementById("rksla").value=(data[0].nAmount-data[0].nAmount_Specimen-data[0].nAmount_Sample);

                            }
                        })

                        $.ajax({
                            url: "productQuality.list?iMaterialID=" + ids + "&detailliid=" + detailliid + "&billid=" + billid,
                            async: false,
                            success: function (data) {
                                var mm = eval('(' + data + ')');
                                var dd = mm.citemstr;
                                $("table.bbbb").empty();
                                $("table.bbbb").append('<tr style="background-color: #3E6390;color:#fff;">' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align:center;">检验项目</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验说明</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验标准</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检测属性</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">标准值</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">标准单位</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">检验值</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">结果</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">备注</td>' +
                                    '<td style="border-width: 1px;border-color: #8888A1;text-align: center;">缺陷等级</td>');
                                var i;
                                console.log(dd);
                                for (i = 0; i < dd.length; i++) {
                                    var jieguoa = dd[i].jieguo;

                                    if (jieguoa == '0') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0"selected ="selected">合格</option><option value="1">不合格</option></select>';
                                    } else if (jieguoa == '1') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
                                    } else if (jieguoa == '-1' || jieguoa == '') {
                                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected">未判定</option><option value="0" selected ="selected">合格</option><option value="1" >不合格</option></select>';
                                    }


                                    if (dd[i].editorType == 'ComboBox') {
                                        $("table.bbbb").append('<tr style="background-color: #ffffff;">' +
                                            '<td style="height:30px;display:none;">' + dd[i].tip + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].operator + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].defaultValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].minValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].maxValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].precision + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                                            '<td style="height:30px;">' + dd[i].caption + '</td>' +
                                            '<td style="height:30px;max-width:400px;">' + dd[i].enuma + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkrule + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                                            '<td style="height:30px;">'+dd[i].biaozhunzhi+'</td>' +
                                            '<td style="height:30px;">' + dd[i].unit + '</td>' +
                                            '<td style="height:30px;"><select id="JYid' + i + '" style="text-align: center;width:100%;height:99%;width:100%;border:0px;">' + dd[i].enumString + '</select></td>' +
                                            '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>');

                                        document.getElementById("JYid"+i).options[1].selected = true;

                                    } else {
                                        var shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;">';

                                        if ((dd[i].editorType == "SpinEdit") || (dd[i].editorType == "CurrencyEdit")) {
                                            shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';
                                        }
                                        $("table.bbbb").append(
                                            '<tr style="background-color: #ffffff;">' +
                                            '<td style="height:30px;display:none;">' + dd[i].tip + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                                            '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].precision + '</td>' +
                                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                                            '<td style="height:30px;">' + dd[i].caption + '</td>' +
                                            '<td style="height:30px;max-width:400px;"><div id="mobaa" style="max-width:666px;">' + dd[i].enumString + '</div></td>' +
                                            '<td style="height:30px;">' + dd[i].checkrule + '</td>' +
                                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                                            '<td style="height:30px;max-width:100px;">' + dd[i].biaozhunzhi + '</td>' +
                                            '<td style="height:30px;">' + dd[i].unit + '</td>' +
                                            '<td style="height:30px;">' + shijizhi + '</td>' +
                                            '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>');


                                    }


                                }
                                /* $("#zjjg").change(function(){
	          				      				var a = parseFloat($(this).val());
	          				      				if(a==2){
	          				      				$("#tcsl").removeAttr("readonly");
	          				      				}else{
		          				      				$("#tcsl").attr("readonly","readonly");
	          				      				}

	          				      		}) */
                                $("#cjsl").keyup(function () {
                                    var cjsl = parseFloat($("#cjsl").val());
                                    var blp = parseFloat($("#blp").val());
                                    var bfb = (blp / cjsl).toFixed(4) * 100;
                                    if (isNaN(bfb)) {
                                        bfb = '请输入正确的参数';
                                    }
                                    $("#bll").val(bfb);
                                })
                                $("#blp").keyup(function () {
                                    var cjsl = parseFloat($("#cjsl").val());
                                    var blp = parseFloat($("#blp").val());
                                    var bfb = (blp / cjsl).toFixed(4) * 100;
                                    if (isNaN(bfb)) {
                                        bfb = '请输入正确的参数';
                                    }
                                    $("#bll").val(bfb);
                                })
                                $("table.bbbb td").css('border-style', 'solid');
                                $("table.bbbb td").css('border-color', '#8888A1');
                                $("table.bbbb td").css('text-align', 'center');
                                $("table.bbbb td").css('border-width', '1px');
                                $("table.bbbb").css('top', '-16px');
                                $("table.bbbb").css('position', 'relative');
                                $(".campare").keyup(function () {
                                    var operator = this.parentNode.parentNode.cells[1].innerHTML;
                                    var defaultValue = parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
                                    var minValue = this.parentNode.parentNode.cells[3].innerHTML;
                                    var maxValue = this.parentNode.parentNode.cells[4].innerHTML;
                                    var tureValue = parseFloat($(this).parent().find(".campare").eq(0).val());
                                    //alert(defaultValue);
                                    //alert(operator);
                                    if ("大于" == operator) {
                                        if (tureValue > defaultValue) {
                                            //alert(tureValue+'>'+defaultValue);
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //$("#resause").val(1);
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("小于" == operator) {
                                        if (tureValue < defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
                                        }
                                    } else if ("介于" == operator) {
                                        if (minValue <= tureValue && tureValue <= maxValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("等于" == operator) {
                                        if (defaultValue == tureValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("大于等于" == operator) {
                                        if (defaultValue < tureValue || tureValue == defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    } else if ("小于等于" == operator) {
                                        if (defaultValue > tureValue || tureValue == defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }

                                    } else if ("不等于" == operator) {
                                        if (tureValue != defaultValue) {
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                                        } else {
                                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                                        }
                                    }
                                })

                            }
                        })
                    })
                }
            }
        })
    }

    //时间戳格式化
    function getLocalTime(nS) {
        var mm = new Date(nS);
        var tt = mm.format('yyyy-MM-dd');
        return tt;
    }

    //暂存
    function zancun() {
        var dd = $("table.bbbb tr").length;
        //alert(dd);
        var result = '未配置检测项目';
        for (var i = 1; i < dd; i++) {
            var tip = $("table.bbbb tr").eq(i).find("td:eq(0)").text();
            //var v = $("table.bbbb tr").eq(i).find("td:eq(5)").text();
            //var w = $("table.bbbb tr").eq(i).find("td:eq(7)").text();
            var x = $("table.bbbb tr").eq(i).find("td:eq(13)").children().val();
            var y = $("table.bbbb tr").eq(i).find("td:eq(14)").children().val();
            var z = $("table.bbbb tr").eq(i).find("td:eq(15)").children().val();
            var mainId = $("#detailid").val();
            //alert("updateDetail.list?id="+mainId+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&tip="+tip);
            $.ajax({
                url: encodeURI(encodeURI("updateFnInPlanDetail.list?id=" + mainId + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z + "&tip=" + tip)),
                async: false,
                success: function (data) {
                    result = data;
                }
            })

        }
        alert(result);
        $('.cd-popup2').removeClass('is-visible2');
        firstList(1);
    }


    //提交质检
    function zhijian() {


        var rksla = parseFloat($("#rksla").val());
        var nAmount = parseFloat($("#rksla").val());
        if (rksla > parseFloat(bjNumber)) {
            alert('入库数量不能大于报检数量');
        } else {
            var dd = $("table.bbbb tr").length;
            var result;
            for (var i = 1; i < dd; i++) {
                var tip = $("table.bbbb tr").eq(i).find("td:eq(0)").text();
                //var v = $("table.bbbb tr").eq(i).find("td:eq(5)").text();
                //var w = $("table.bbbb tr").eq(i).find("td:eq(7)").text();
                var x = $("table.bbbb tr").eq(i).find("td:eq(13)").children().val();
                var y = $("table.bbbb tr").eq(i).find("td:eq(14)").children().val();
                var z = $("table.bbbb tr").eq(i).find("td:eq(15)").children().val();
                var mainId = $("#detailid").val();
                //alert("updateDetail.list?id="+mainId+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&tip="+tip);
                $.ajax({
                    url: encodeURI(encodeURI("updateFnInPlanDetail.list?id=" + mainId + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z + "&tip=" + tip)),
                    async: false,
                    success: function (data) {
                        result = data;
                    }
                })

            }

            var spareflag = document.getElementById("spareflag").checked;
            var sampleflag = document.getElementById("sampleflag").checked;

            if(spareflag==true && sampleflag==true) {
                var a1=$("#rksla").val();
                var a2=$("#spareNumber").val();
                var a3=$("#sampleNumber").val();
                 nAmount = parseInt(a1)+parseInt(a2)+parseInt(a3);
            } else if(sampleflag==true){
                var a1=$("#rksla").val();
                var a3=$("#sampleNumber").val();
                 nAmount = parseInt(a1)+parseInt(a3);
            }else if(spareflag==true){
                var a1=$("#rksla").val();
                var a2=$("#spareNumber").val();
                 nAmount = parseInt(a1)+parseInt(a2);
            }else{
                var a1=$("#rksla").val();
                var a2=$("#spareNumber").val();
            }




            var status = parseFloat($("#zjjg").val());
            var journalMainId = $("#journalMainId").val();
            var detailid = $("#detailid").val();
            var reviewerid = $("#reviewer_id").val();
            var reviewername = $("#reviewer_id").find("option:selected").text();

            //上面的备注
            //入库批ci
            //入库数量
            //质检人员id
            //下面的备注
            var params = {
                "id": $("#cCode").val(),
                "mainBz": $("#bbz").val(),
                "cBatchCode": $("#rkpca").val(),
                //"nAmount": $("#rksla").val(),
                "nAmount": nAmount,

                "roseid": $("#userId").val(),
                "detailBz": $("#rkbz").val(),
                "checkingAmount": $("#cjsl").val(),
                "nDefAmount": $("#blp").val(),

                "nOspbox": $("#nospbox").val(),
                "nOsabox": $("#nosabox").val(),

                "nDefRate": $("#bll").val(),
                "iCheckResult": status,
                "nSpecialAmount": $("#tcsl").val(),
                "cResultNote": $("#jgsm").val(),
                "journalMainId": journalMainId,
                "detailid": detailid,
                "hdqj": $("#tjhd").val(),
                "flag": flag,
                "reviewerid": reviewerid,
                "reviewername": reviewername
            }
            $.ajax({
                url: "SendListNoSubmit.list",
                //dataType: "json",
                async: false,
                type: "post",
                data: params,
                success: function (data) {
                    $('.cd-popup2').removeClass('is-visible2');
                    alert(data);
                    if(status!=0){
                        //质检人员id
                         var roseid = $("#userId").val();
                         window.open(path+'/getQcAbnormality/getAbnormality.do?jobOrProduct=1&billId='+billid+'&userId='+roseid+'&eFBid=0&source=2&vore=1',"_self");
                        //  *  jobOrProduct=(0作业单，1生产订单)*  &billId=(生产订单id)*  &roseId=人员id*  &jobId=作业单id
                        //  *  &workCenterID=工作中心id*  &workStationID=机台id*  &ShiftID=班次id*  &processesID=工序id
                        //  *  &eFBid=反馈单id(0新建)，查询编辑带入id*  &source=来源（0-平板，1-erp，2-web)*  &vore=(0查看，1编辑)
                    }else{
                        firstList(1);
                    }

                }
            })
            var btnSubmit = document.getElementById("submitid");
            btnSubmit.disabled = "disabled";
        }


    }

    //送检单提交
    function tiJiao() {
        var id = $("#cCode").val();
        var status = parseFloat($("#checkType").val());
        //上面的备注
        var mainBz = $("#bbz").val();
        //入库批次
        var cBatchCode = $("#rkpca").val();
        //入库数量
        var nAmount = $("#rksla").val();
        //质检人员id
        var roseid = $("#userId").val();
        //下面的备注
        var detailBz = $("#rkbz").val();
        if (nAmount > 0) {
            if (status == 0) {
                $.ajax({
                    url: encodeURI(encodeURI("updateSendList.list?id=" + id + "&roseid=" + roseid + "&cBatchCode=" + cBatchCode + "&nAmount=" + nAmount + "&mainBz=" + mainBz + "&detailBz=" + detailBz)),
                    //dataType: "json",
                    async: false,
                    success: function (data) {
                        $('.cd-popup2').removeClass('is-visible2');
                        alert(data);
                        window.location.reload();
                    }
                })
            } else {
            }

        } else {
            alert("入库数量必须大于0");
        }

    }

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);

    //弹出窗口
    jQuery(document).ready(function ($) {
        //关闭窗口
        $('.cd-popup2').on('click', function (event) {
            if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2')) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
            }
        });
        //ESC关闭
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup2').removeClass('is-visible2');
            }
        });
    })

    function guanbi() {
        $('.cd-popup2').removeClass('is-visible2');
        $("table.table").removeAttr('position');
    }


</script>

</body>
</html>
