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

    <title>发货计划列表</title>

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

    .table tbody tr td:nth-of-type(4) {

    }

    .bbbb {
        width: 100%;
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
        background: url(img/grid.png) no-repeat;
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
        height: 115px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        padding-top: 15px;
    }

    .subbar {
        width: 100%;
        font-weight: normal;
        /*  height:200px; */
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

    .sub-bar table tr td:nth-of-type(odd) {
        width: 12%;
        padding-right: 5px;
        text-align: right;
    }

    .sub-bar table tr td:nth-of-type(even) {
        width: 21%;
        color: #999;
    }

    .first, .last {
        width: 50px;
    }

    .sub-h {

        height: 30px;
        background: url(/img/narrow.png) no-repeat left 7px;
        font-size: 18px;
        line-height: 30px;
        color: #333;
        padding-left: 15px;
        font-family: "微软雅黑";
    }

    .sub-bottom {
        width: 608px;
        height: 40px;
        top: 34px;
        position: relative;
        left: 45%;
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
        background-color: #5ab558;
    }

    .sub-bottom button:nth-of-type(2) {
        background-color: #ff7645;
    }

    .sub-bottom button:nth-of-type(3) {
        background-color: #ff7645;
    }
    .sub-bottom button:nth-of-type(4) {
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
        <h>管理员：<%
            String str = request.getParameter("username");
            str = java.net.URLDecoder.decode(str, "UTF-8");
            out.print(str);
        %></h>
        <input type="hidden" id="cBillCode" value="">
        <input type="hidden" id="userId" value="<%=request.getParameter("rolesid")%>">
        <input type="hidden" id="cCode" value="">
    </div>
</div>
<table class="formTable">
    <tr>
        <td style="height:40px">发货单号</td>
        <td style="height:40px"><input id="order_num" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">送货时间</td>
        <td style="height:40px"><input id="begin_time" type="text" placeholder="请选择"
                                       style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;"
                                       onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"
                                       readonly></td>
        <td style="height:40px">结束时间</td>
        <td style="height:40px"><input id="end_time" type="text" placeholder="请选择"
                                       style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;"
                                       onClick="jeDate({dateCell:'#end_time',isTime:true,format:'YYYY-MM-DD'})"
                                       readonly></td>
        <td style="height:40px">产品名称</td>
        <td style="height:40px"><input id="order_name" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px"><input type="button" value="查询" class="search" style="width:60px;"
                                       onclick="firstList(1)"></td>

    </tr>
</table>

<h2 class="title2">发货计划列表</h2>


<div class="top3">
    <table class="table">

    </table>

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
                <span>暂无数据</span>
            </div>

        </div>
    </div>
</div>

<div class="cd-popup2">
    <div class="cd-popup-container2" style="overflow:auto;background:#eff1f3">
        <div class="bigKuang">
            <div class="sub-title">
                <h2 class="sub-h">单据信息</h2>

                <div class="sub-bar">
                    <table class="aaaa">

                    </table>
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h">来源信息</h2>

                <div class="subbar">
                    <table class="bbbb">


                    </table>
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h">送检信息</h2>

                <div class="sub-bar">
                    <table class="cccc">

                    </table>

                </div>
            </div>
            <div class="sub-bottom">
                <button onclick="daPDF(2)" ;>查看PDF</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onclick="ckBillid()" ;>查看作业单图片</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button onclick="tiJiao(0)" ;>提交</button>&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>
            </div>
        </div>
    </div>
</div>
</div>
<input type="hidden" id="nAmount" value="">
<input type="hidden" id="type1" value="">
<input id="banci" type="hidden" value=<%=cbanci%>>
<input id="workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
<input id="journalMainId" type="hidden" value="">
<input id="detailid" type="hidden" value="">
<input id="addressid" type="hidden" value="">
<input id="checkman" type="hidden" value=<%=str%>>
</body>
<script type="text/javascript">

    //销售订单编号
    var billid;

    //查看作业单图片
    function ckBillid() {
        $.ajax({
            url: "getNumber/test.do?id=" + billid + "&type=2",
            dataType: "json",
            async: false,
            success: function (data) {
                console.log(data);
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

    function bigimg(obj) {
        var zoom = parseInt(obj.style.zoom, 10) || 100;
        zoom += event.wheelDelta / 12;
        if (zoom > 0)
            obj.style.zoom = zoom + '%';
        return false;
    }

    function guanbi() {
        $('.cd-popup2').removeClass('is-visible2');
    }

    firstList(1);

    function firstList(i) {
        var banci = $("#banci").val();
        var workTime = $("#workTime").val();
        var userid = $("#userId").val();
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();
        $("table.table").empty();
        $("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>' +
            '<td style="height:30px;">发货单号</td>' +
            '<td style="height:30px;">产品编号</td>' +
            '<td style="height:30px;">销售订单编号</td>' +
            '<td style="height:30px;">产品名称</td>' +
            '<td style="height:30px;">规格</td>' +
            '<td style="height:30px;">单位</td>' +
            '<td style="height:30px;">通知发货数量(正品)</td>' +
            '<td style="height:30px;">委印单号</td>' +
            '<td style="height:30px;">状态</td>' +
            '<td style="height:30px;">发货日期</td>' +
            '<td style="height:30px; width:300px;">客户名称</td></tr>'
        );
        $.ajax({
            url: encodeURI(encodeURI("selectFnOutPlanList.list?order_num=" + order_num + "&begin_time=" + begin_time + "&end_time=" + end_time + "&man=" + order_name + "&banci=" + banci + "&workTime=" + workTime + "&userid=" + userid)),
            dataType: "json",
            async: false,
            success: function (data) {
                var detectionJson = data;//eval(data);
                if (data.length > 0) {
                    $("#pages").val(data[0].page);
                    $("#journalMainId").val(data[0].journalMainId);
                    //$("#detailid").val(data[0].detailid);
                    var numpages = parseFloat($("#pages").val());
                    $("#page").Page({
                        totalPages: numpages,//分页总数
                        liNums: 5,//分页的数字按钮数(建议取奇数)
                        activeClass: 'activP', //active 类样式定义
                        callBack: function (page) {
                            getPages(page);
                        }
                    });
                    $("#type1").val(1);
                    console.log(data);
                    var i;
                    for (i = 0; i < data.length; i++) {
                        var ddate;
                        var sendDate;
                        if (data[i].dDate == null) {
                            sendDate = '无送货时间';
                        } else {
                            //sendDate = getLocalTime(data[i].dDate.time);
                            sendDate = getLocalTime(data[i].dDate);
                        }
                        if (data[i].cClientName == null) {
                            ddate = '未指定客户';
                        } else {
                            ddate = data[i].cClientName;
                        }

                        var judge;
                        if (data[i].iQcResult == -1) {
                            judge = '未检';
                        } else {
                            judge = '<span style="color:red">已检<span>';
                        }
                        $("table.table").append('<tr><td style="height:30px;display:none">' + data[i].iMaterialID + '</td>' +
                            '<td style="height:30px;">' + data[i].id_Main + '</td>' +
                            '<td style="height:30px;">' + data[i].cBillCode + '</td>' +
                            '<td style="height:30px;">' + data[i].cCode + '</td>' +
                            '<td style="height:30px;">' + data[i].scSaleOrderCode + '</td>' +
                            '<td style="height:30px;">' + data[i].cName + '</td>' +
                            '<td style="height:30px;">' + data[i].cSize + '</td>' +
                            '<td style="height:30px;">' + data[i].cUnit + '</td>' +
                            '<td style="height:30px;">' + data[i].nAmount + '</td>' +
                            '<td style="height:30px;">' + data[i].cCode_CBill + '</td>' +
                            '<td style="height:30px;">' + judge + '</td>' +
                            '<td style="height:30px;">' + sendDate + '</td>' +
                            '<td style="height:30px; width:300px;">' + ddate + '</td>' +
                            '<td style="height:30px;display:none">' + data[i].detailid + '</td>' +
                            '<td style="height:30px;display:none">' + data[i].ID_Client + '</td></tr>'
                        );

                    }
                    $("table.table tr").not("table.table tr:first-child").click(function () {
                        ///////////////////////////////////
                        var $this = $(this);
                        var path = $('#aaa').val();
                        $("#cCode").val($this.find('td:eq(1)').text());
                        $("#nAmount").val($this.find('td:eq(8)').text());
                        //alert($this.find('td:eq(8)').text());
                        var detailid = $this.find('td:eq(13)').text();
                        //主表id
                        var id = $this.find('td:eq(1)').text();
                        //物料id
                        var ids = $this.find('td:eq(0)').text();
                        //销售订单编号
                        billid = $this.find('td:eq(4)').text();
                        var amount_in = $this.find('td:eq(9)').text();
                        var type = parseFloat($("#type1").val());
                        var nAmount_Notice = $this.find('td:eq(8)').text();
                        var ID_Client = $this.find('td:eq(14)').text();

                        var cCode_CBill = $this.find('td:eq(9)').text();

                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url: "fnProductQualityById.list?id=" + detailid + "&iMaterialID=" + ids,
                            dataType: "json",
                            async: false,
                            success: function (data) {
                                $("#detailid").val(data[0].id_Detail);
                                $("#addressid").val(data[0].id);
                                if (1 == 2) {
                                    alert("请设置单据编号");
                                } else {
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }
                                //$("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                $("table.aaaa").append('<tr><td style="height:56px;width:102px; text-align: right;">发货单号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;">' + data[0].cBillCode + '</td>' +
                                    '<td style="width:160px; text-align: right;">通知发货数量(正品):&nbsp;&nbsp;</td>' +
                                    '<td style="width:88px;text-align: left;">' + data[0].nAmount + '</td>' +
                                    '<td style="width:70px; text-align: right;">单位:&nbsp;&nbsp;</td>' +
                                    '<td style="width:66px;text-align: left;">' + data[0].cUnit + '</td></tr>' +

                                    '<tr><td style="height:38px;width:102px; text-align: right;">产品编号:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;">' + data[0].cCode + '</td>' +
                                    '<td style="width:160px; text-align: right;">通知发货数量(备品):&nbsp;&nbsp;</td>' +
                                    '<td style="width:88px;text-align: left;">' + data[0].nAmount_Sample + '</td>' +
                                    '<td style="width:70px; text-align: right;">规格:&nbsp;&nbsp;</td>' +
                                    '<td style="width:66px;text-align: left;">' + data[0].cSize + '</td></tr>');
                                $("table.cccc").empty();
                                $("table.cccc").append(
                                    '<tr><td style="height:38px;width:110px; text-align: right;">抽检数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input type="text" id="cjsl" value="' + data[0].resulta + '"style="width:100px;height:30px;"></td>' +
                                    '<td style="width:158px; text-align: right;">合格数量:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input type="text" id="hgsl" style="width:100px;height:30px;" value="' + data[0].nQualifiedAmount + '" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>' +
                                    '<td style="width:158px; text-align: right;">合格率(%):&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input style="width:100px;height:30px;" value="' + data[0].nQualifiedRateThreshold + '" type="text" id="hgl" readonly></td></tr>' +
                                    '<tr><td style="height:38px;width:110px; text-align: right;">质检结果:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><select id="zjjg" style="width:100px;height:30px;"><option value="0">合格</option><option value="1">不合格</option></select></td>' +
                                    /* '<td style="height:38 px;width:158px; text-align: right;">特发数量:&nbsp;&nbsp;</td>'+
                                    '<td style="width:100px;text-align: left;"><input type="text" id="tcsl" style="width:100px;height:30px;" value="" readonly></td>'+ */
                                    '<td style="height:38 px;width:158px; text-align: right;">质检说明:&nbsp;&nbsp;</td>' +
                                    '<td style="width:100px;text-align: left;"><input type="text" id="jgsm" style="width:100px;height:30px;" value="' + data[0].cQcRemark + '"></td>' +

                                    '</tr>'
                                );

                                $.ajax({
                                    url: "fnProductQuality.list?iMaterialID=" + ids + "&MainId=" + detailid + "&ID_Client=" + ID_Client+ "&billid=" + billid,
                                    async: false,
                                    success: function (data) {
                                        var mm = eval('(' + data + ')');
                                        var dd = mm.citemstr;

                                        if(dd==""){

                                            alert('此发货订单没有对应的质检模板！');
                                            $('.cd-popup2').removeClass('is-visible2');
                                        }else{

                                        $("table.bbbb").empty();
                                        $("table.bbbb").append('<tr style="background-color: #3E6390;color:#fff;height:34px;">' +
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
                                        for (i = 0; i < dd.length; i++) {
                                            var jieguoa = dd[i].jieguo;
                                            if (jieguoa == '0') {
                                                var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0"selected ="selected">合格</option><option value="1">不合格</option></select>';
                                            } else if (jieguoa == '1') {
                                                var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
                                            } else if (jieguoa == '-1' || jieguoa == '') {
                                                var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected">未判定</option><option value="0">合格</option><option value="1" >不合格</option></select>';
                                            }


                                            if (dd[i].editorType == 'ComboBox') {
                                                $("table.bbbb").append('<tr style="background-color: #ffffff;">' +
                                                    '<td style="height:34px;display:none;">' + dd[i].tip + '</td>' +
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
                                                    '<td style="height:30px;">' + dd[i].unit + '</td>' +
                                                    '<td style="height:30px;"><select style="text-align: center;width:100%;height:99%;width:100%;border:0px;">' + dd[i].enumString + '</select></td>' +
                                                    '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                                                    '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                                                    '<td style="height:30px;">' + dd[i].DefectLevel + '</td>');
                                            } else {
                                                var shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;text-align: center;">';

                                                if ((dd[i].editorType == "SpinEdit") || (dd[i].editorType == "CurrencyEdit"))
                                                    shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;text-align: center;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';

                                                $("table.bbbb").append(
                                                    '<tr style="background-color: #ffffff;">' +
                                                    '<td style="height:34px;display:none;">' + dd[i].tip + '</td>' +
                                                    '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                                                    '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                                                    '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                                                    '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                                                    '<td style="height:30px; display:none;">' + dd[i].precision + '</td>' +
                                                    '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                                                    '<td style="height:30px;">' + dd[i].caption + '</td>' +
                                                    '<td style="height:30px;max-width:400px;"><div id="mobaa">' + dd[i].enumString + '</div></td>' +
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
                                        $("#zjjg").change(function () {
                                            var a = parseFloat($(this).val());
                                            if (a == 2) {
                                                $("#tcsl").removeAttr("readonly");
                                            } else {
                                                $("#tcsl").attr("readonly", "readonly");
                                            }

                                        })
                                        $("#hgsl").keyup(function () {
                                            var cjsl = parseFloat($("#cjsl").val());
                                            var blp = parseFloat($("#hgsl").val());
                                            var bfb = ((blp / cjsl) * 100).toFixed(2);
                                            if (isNaN(bfb)) {
                                                bfb = '请输入正确的参数';
                                            }
                                            if (blp > cjsl) {
                                                alert('合格数量不能大于抽检数量');
                                                $("#hgsl").val(0);
                                                $("#hgl").val(0);
                                            } else {
                                                $("#hgl").val(bfb);
                                            }

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
                                    //加
                                }
                                })

                            }
                        })
                    })
                } else {
                    $("table.table").append('<tr><td colspan="12">查无数据...</td></tr>')
                    $("#page").Page({
                        totalPages: 1,//分页总数
                        liNums: 5,//分页的数字按钮数(建议取奇数)
                        activeClass: 'activP', //active 类样式定义
                        callBack: function (page) {
                            getPages(page);
                        }
                    });
                }
            }

        })
    }


    function getLocalTime(nS) {
        var mm = new Date(nS);
        var tt = mm.format('yyyy-MM-dd');
        return tt;
    }

    function tiJiao() {
        //alert("保存成功 ");
        var qualifiedAmount = $("#hgsl").val();
        //alert(qualifiedAmount);
        if (qualifiedAmount == "") {
            alert("合格数量不能为空");
        } else {
            var result = $("#zjjg").val();
            var journalid = $("#journalMainId").val();
            var nAmount = $("#cjsl").val();
            var nAmountOld = $("#nAmount").val();
            var mainId = $("#cCode").val();
            var detailid = $("#detailid").val();
            var addressid = $("#addressid").val();
            var dd = $("table.bbbb tr").length;
            for (var i = 1; i < dd; i++) {
                var tip = $("table.bbbb tr").eq(i).find("td:eq(0)").text();
                //var v = $("table.bbbb tr").eq(i).find("td:eq(5)").text();
                //var w = $("table.bbbb tr").eq(i).find("td:eq(7)").text();
                var x = $("table.bbbb tr").eq(i).find("td:eq(13)").children().val();
                var y = $("table.bbbb tr").eq(i).find("td:eq(14)").children().val();
                var z = $("table.bbbb tr").eq(i).find("td:eq(15)").children().val();
                //alert("updateFnoutPlanDetail.list?id="+mainId+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&tip="+tip);
                $.ajax({
                    url: encodeURI(encodeURI("updateFnoutPlanDetail.list?id=" + detailid + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z + "&tip=" + tip)),
                    async: false,
                    success: function (data) {

                    }
                })
            }


            var params = {
                "mainid": mainId,
                "result": result,
                "nAmount": nAmount,
                "qualifiedAmount": qualifiedAmount,
                "rateQualified": $("#hgl").val(),
                "speciAmount": $("#tcsl").val(),
                "remark": $("#jgsm").val(),
                "nAmountOld": nAmountOld,
                "journalid": journalid,
                "detailid": detailid,
                /* "addressid":addressid, */
                "workMan": $("#checkman").val()
            }
            $.ajax({
                url: encodeURI(encodeURI("fnSetResult.list")),
                //dataType: "json",
                async: false,
                type: "post",
                data: params,
                success: function (data) {
                    $('.cd-popup2').removeClass('is-visible2');
                    alert(data);
                    window.location.reload();
                }
            })
        }


        /* var id = $("#cCode").val();
        var cBillCode=$("#cBillCode").val();
        var cBatchCode=$("#rkpca").val();
        var nAmount =$("#rksla").val();
        var roseid =$("#userId").val();
        var mainBz=$("#bbz").val();
        var detailBz=$("#rkbz").val();
        if(nAmount>0){
             $.ajax({
                       url:encodeURI(encodeURI("insertSendList.list?id="+id+"&roseid="+roseid+"&cBillCode="+cBillCode+"&cBatchCode="+cBatchCode+"&nAmount="+nAmount+"&mainBz="+mainBz+"&detailBz="+detailBz+"&status="+i)),
                       //dataType: "json",
                       async: false,
                       success:function(data){
                        $('.cd-popup2').removeClass('is-visible2');
                        //$("table.sjdTable").empty();
                        //$("table.aaaa").empty();
                           alert(data);
                       }
                   })
        }else{
            alert("入库数量必须大于0");
        }
               */
    }

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);
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
</script>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

</body>
</html>
