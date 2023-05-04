<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>生产订单列表</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
    <script type="text/javascript" src="js/touch.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<style type="text/css">
    body {font-size: 20px;
        font-family: "微软雅黑";
        padding-bottom: 40px;
        background-color:#F3F6F9;
        overflow:hidden;
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
    .title{
        float: left;
        margin: 32px -4px;
        color: #FFFFFF;
        font-size: 50px;
        font-family: 隶书;
    }
    .top-link{
        float: right;
        margin: 29px 44px;
        color: #FFFFFF;
        font-height: 55px;
        font-size:25px;
        font-family: 楷体;
    }
    #fenye{
        position:relative;
        background-color: red;
        height: 10%;
        width:100%;
    }
    .top3 {
        border:1px solid #ccc;
        width: 98%;
        margin:0 auto;
        overflow-x: auto;


    }
    .table{
        /*position: relative;*/
        color:#666;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;


    }
    .table tr{
        height:35px;
    }

    .aaaa{
        position: relative;
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }
    .aaaa td{
        border-width: 1px;
        padding:0px;
        text-align: center;
        float: left;
        position:relative;
        line-height: 30px;
        font-size:14px;
        vertical-align:middle;
    }

    .table td{
        border-width: 1px;
        padding:0px;
        border-style: solid;
        border-color:#ddd;
        font-family: 微软雅黑;
        text-align: center;
        /* position:relative; */
        line-height: 20px;
        font-size:14px;
        vertical-align:middle;
        padding:3px;
        font-weight:normal;
        word-break:break-all;
        word-wrap:break-word
    }
    .table tbody tr td:nth-of-type(4){

    }
    .bbbb td{
        font-size:14px;
    }
    .cccc td{
        font-size:14px;
    }
    #sjdxx{
        position: relative;
        width: 100%;
        height:28px;
        font-size: 22px;
        text-align: left;
        color: #3C3D3F;

    }
    .sjzy{
        position: relative;
        width: 100%;
        height:30px;
        top: 2%;
        text-align: center;
        font-size: 24px;
    }
    .title2{


        height: 34px;
        width: 98%;
        margin:0 auto;
        padding-left:30px;
        color: #3C3D3F;
        font-size: 22px;
        text-align: left;
        line-height:24px;
        background:url(img/grid.png) no-repeat;
    }


    input{
        font-family: 宋体;
        font-size:18px;
        border-radius: 0;
        padding:0 3px;

    }
    #signature-pad {
        visibility:hidden;
    }
    #showimg{
        position: relative;
        left: -28%;
        top: 35%;
    }


    .top4{
        position:relative;
        top: 1%;
        width: 100%;
        height: 50%;
    }
    .sjxxxx{
        position: relative;
        width: 100%;
        height: 45px;
        color: #3C3D3F;
        font-size: 22px;
        text-align: left;
        top:3%;

    }
    .formTable td{

        cursor:pointer;
        border-width: 1px;
        padding:5px;
        border-color:#ddd;
        font-family: 微软雅黑;
        text-align: left;
        color:#333;
        position:relative;
        line-height: 20px;
        font-size:16px;
        vertical-align:middle;
    }
    .formTable{
        /* position: relative;*/
        width:98%;
        height:50px;
        margin:0 auto;
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }
    .sjxxxxmx{
        position:relative;
    }
    .cd-popup-container2{
        padding:10px 30px;
    }

    .sub-title{
        position:relative;
        margin: 15px 38px 0;
        font-size: 14px;
        font-weight: 700;

    }
    .sub-bar1{
        width:100%;
        font-weight:normal;
        height:300px;
        background-color: #fff;
        border:1px solid #e5e5e5;
        padding-top:15px;
    }

    .sub-bar{
        width:100%;
        font-weight:normal;
        height:170px;
        background-color: #fff;
        border:1px solid #e5e5e5;
        padding-top:15px;
    }
    .sub-bar table{width:100%;}
    .sub-bar table tr{width: 100%;}
    .sub-bar table tr td{
        line-height:30px;
        text-align:left;
    }
    .sub-bar table tr td:nth-of-type(odd){
        width:12%;
        padding-right:5px;
        text-align:right;
    }
    .sub-bar table tr td:nth-of-type(even){
        width:21%;color:#999;
    }
    .first,.last {width:50px;}
    .sub-h{

        height:30px;
        background: url(img/narrow.png) no-repeat left 7px;
        font-size:18px;
        line-height:30px;
        color:#333;
        padding-left:15px;
        font-family: "微软雅黑";
    }

    .sub-bottom{
        width: 420px;
        height: 40px;
        top:34px;
        position:relative;
        left:57%;
        margin-left:-210px;
        bottom:20px;

    }
    .sub-bottom button{
        width:120px;
        text-align:center;
        padding:0 10px;
        font:14px/40px "微软雅黑";
        color:#fff;
        border:1px solid #ccc;
        border-radius:5px;



    }
    .sub-bottom button:nth-of-type(1){
        background-color: #5ab558;
    }

    .sub-bottom button:nth-of-type(2){
        background-color:#5ab558 ;
    }
    .sub-bottom button:nth-of-type(3){
        background-color:#ff7645 ;
    }
    #page{
        margin-top:10px;
        position:relative;
        left:50%;
        margin-left:-150px;
        bottom:5px;
    }
    .table tr:nth-child(even){
        background: #ffffff;
    }
    .table tr:nth-child(odd){
        background: #E8EFF7;
    }
    .search{
        width:60px;
        height:30px;

        border:1px solid #bbb;
    }
    .search:hover{background-color: #ccc;}
    #begin_time,#end_time{
        background: url(img/Month-Calendar.png) no-repeat 125px 7px;
    }



    table.table tbody {
        display: block;
        height: 400px;
        overflow-y: scroll;
    }

    table.table thead,
    table.table tbody tr {
        display: table;
        width: 100%;
        table-layout: fixed;
    }

    table.table table thead {
        width: calc( 100% - 1em)
    }

    table.table tbody::-webkit-scrollbar {
        width: 1px;
        height: 1px;
    }



</style>
<body>
<div class="top2">
    <div class="logo">
        <img src="img/logo1.png" style="width: 214px;height: 36px;position: relative;left: -12%;" title="悟略科技" />
    </div>
    <div class="top-link">
        <img src="img/user.png" style="width: 26px;height: 25px;position: relative;left: 3%;" title="管理员" />
        <h id="roseNam">管理员：<%String str=request.getParameter("username");
            str=java.net.URLDecoder.decode(str,"UTF-8");
            out.print(str);
        %></h>
        <input type="hidden" id="cBillCode" value="">
        <input type="hidden" id="userId" value="<%=request.getParameter("rolesid")%>">
        <input type="hidden" id="cCode" value="">
    </div>
</div>
<table class="formTable" >
    <tr>
        <td style="height:40px">生产订单</td>
        <td style="height:40px"><input id="order_num" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">开始时间</td>
        <td style="height:40px"><input id="begin_time" type="text" placeholder="请选择" style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"  readonly></td>
        <td style="height:40px">结束时间</td>
        <td style="height:40px"><input id="end_time" type="text" placeholder="请选择" style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:'#end_time',isTime:true,format:'YYYY-MM-DD'})"  readonly></td>
        <td style="height:40px">产品名称</td>
        <td style="height:40px"><input id="order_name" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px"><input type="button" value="查询" class="search" style="width:60px;" onclick="firstList(1)"></td>

    </tr>
</table>

<h2 class="title2">生产订单列表</h2>
<div class="top3">

    <table class="table" >

    </table>
    <div id="page"></div>
</div>


<div class="cd-popup2">
    <div class="cd-popup-container2" style="overflow:auto;background:#eff1f3">
        <div class="bigKuang">
            <div class ="sub-title">
                <h2 class="sub-h">单据信息</h2>
                <div class="sub-bar">
                    <table class="aaaa" >
                    </table>
                </div>
            </div>
            <div class ="sub-title">
                <h2 class="sub-h">来源信息</h2>
                <div class="sub-bar">
                    <table class="bbbb" >
                    </table>
                </div>
            </div>
            <div class ="sub-title">
                <h2 class="sub-h">入库信息</h2>
                <div class="sub-bar1">
                    <table class="cccc" >
                    </table>
                </div>
            </div>
            <div class="sub-bottom">
            </div>
        </div>
    </div>
</div>
</div>

<div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="text-align: center;width:320px;left:38%;overflow:scroll;overflow-y:hidden;overflow-x:hidden;" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="font-size: 20px;height: 48px;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">选择库房角色</h4>
            </div>
            <div class="modal-body" id="selectModal" style="font-size: 18px;">
                <select id="selectA"></select>
            </div>
            <div class="modal-footer">
                <button type="button" onclick="aamb()" data-dismiss="modal" aria-hidden="true" style="font-size: 16px">确定</button>
            </div>
        </div>
    </div>
</div>

<input type="hidden" id="path" value=<%=path%>>
<input type="hidden" id="pages" value="">
</body>

<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript">



    //去重复标志
    var flagi = 1;
    //本厂辅料纸张入库选择库管 i区分辅料纸张，m区分入库还是质检,status新建还是提交质检
    function inwardNotice(i,m,status){

        var nAmount =$("#rksla").val();
        var cBillCode=$("#cBillCode").val();
        if(nAmount>0){
            $("#selectA").empty();
            $.ajax({
                url:"getNumber/getRolse.do?machineType="+i,
                dataType: "json",
                async: false,
                success:function(data){
                    var str='';
                    for(i=0;i<data.length;i++){
                        str +='<option value="'+data[i].iRoleID+'">'+data[i].cRoleName+'</option>';
                    }
                    $("#selectA").append(str);
                }
            })
            $('#myModal3').modal();
            $(".modal-footer").empty();
            $(".modal-footer").append('<button type="button" onclick="aamb('+m+','+status+')" data-dismiss="modal" aria-hidden="true" style="font-size: 16px">确定</button>');
        }else{
            alert("入库数量必须大于0");
        }

    }

    //本厂辅料纸张生成入库通知单
    function aamb(m,status){
        $('.cd-popup2').removeClass('is-visible2');
        flagi=0;
        var roleid = $("#selectA option:selected").val();
        var rolename = $("#selectA option:selected").text();
        var id = $("#cCode").val();
        var nAmount =$("#rksla").val();
        var roseid =$("#userId").val();
        var mainBz=$("#bbz").val();
        var detailBz=$("#rkbz").val();
        var cBatchCode=$("#rkpca").val();
        var zjbz =$("#zjbz option:selected").text();
        var zjdj =$("#zjdj").val();
        var parms={};
        parms["roleid"] = roleid;
        parms["rolename"] =rolename;
        parms["id"] =id;
        parms["mainBz"] =mainBz;
        parms["detailBz"] =detailBz;
        parms["aNumber"] =nAmount;
        parms["roseid"] =roseid;
        parms["status"] =status;
        parms["cBatchCode"] =cBatchCode;
        parms["zjbz"] =zjbz;
        parms["zjdj"] =zjdj;
        var resultaa ='保存失败';
        if(m==0){
            $.ajax({
                url:"getNumber/inwardnotic.do",
                //dataType: "json",
                type:"post",
                data:parms,
                async: false,
                success:function(data){
                    resultaa =data;
                }
            })
            alert(resultaa);
        }else{
            $.ajax({
                url:"getNumber/qcNotic.do",
                //dataType: "json",
                type:"post",
                data:parms,
                async: false,
                success:function(data){
                    resultaa =data;
                }
            })
            alert(resultaa);
        }
    }
    function guanbi(){
        $('.cd-popup2').removeClass('is-visible2');
    }

    firstList(1);
    function firstList(i){
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();
        $("table.table").empty();

        $("table.table").append('<thead><tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px;">序号</td>'+
            '<td style="height:30px;">生产订单号</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;width:30%">产品名称</td>'+
            '<td style="height:30px;">版本号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已送检数量</td>'+
            '<td style="height:30px;">已通知入库数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">交货日期</td>'+
            '<td style="height:30px;">是否质检</td>'+
            '<td style="height:30px;width:130px;">客户</td>'+
            '<td style="height:30px;width:55px;">开制反馈单</td></tr></thead>'
        );
        var parms={};
        parms["order_name"] = order_name;
        $.ajax({
            url:"selectOrderList.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&indexPage="+i,
            dataType: "json",
            type:"post",
            data:parms,
            async: false,
            success:function(data){
                var detectionJson = data;//eval(data);
                if(data.length>0){
                    $("#pages").val(data[0].page);
                    var numpages =parseFloat($("#pages").val());
                    $("#page").Page({
                        totalPages:numpages,//分页总数
                        liNums:5,//分页的数字按钮数(建议取奇数)
                        activeClass: 'activP', //active 类样式定义
                        callBack : function(page) {
                            getPages(page);
                        }
                    });
                    $("#type1").val(data[0].type);
                    console.log(data);
                    var i;
                    for(i=0;i<data.length;i++){
                        var ddate ;
                        var sendDate;
                        if(data[i].dDate_Send==null){
                            sendDate ='无送货时间';
                        }else{
                            sendDate = getLocalTime(data[i].dDate_Send.time);
                        }
                        if(data[i].cClientCode==null){
                            ddate ='未指定客户';
                        }else{
                            ddate = data[i].cClientCode;
                        }
                        var judge;
                        if(data[i].iIncheck ==1){
                            judge='<span style="color:red">是<span>';
                        }else{
                            judge='否';
                        }


                        $("table.table").append('<tr style="overflow:scroll;"><td style="height:30px;display:none">'+data[i].ID+'</td>'+
                            '<td style="height:30px;">'+data[i].irow+'</td>'+
                            '<td style="height:30px;">'+data[i].cCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cPCode+'</td>'+
                            '<td style="height:30px;width:30%">'+data[i].cName+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+sendDate+'</td>'+
                            '<td style="height:30px;">'+judge+'</td>'+
                            '<td style="height:30px;width:130px">'+ddate+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].itype+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].ID_Request+'</td>'+
                            '<td style="height:30px;width:55px"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality('+data[i].ID+')"/></td></tr>'
                        );

                    }
                    $("table.table tr").click(function(){

                        var $this = $(this);
                        var path =$('#aaa').val();
                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();
                        var amount_in =$this.find('td:eq(9)').text();
                        var type= $this.find('td:eq(13)').text();//parseFloat($("#type1").val());是否是质检项目
                        var itype = $this.find('td:eq(14)').text();//9是纸张辅料加工订单
                        var machineType = $this.find('td:eq(15)').text();//6是加工纸张，7是加工辅料
                        var ID_Request = $this.find('td:eq(16)').text();//最大版本id
                        var nAmount_Notice=$this.find('td:eq(8)').text();
                        var roseid =$("#userId").val();
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url:"orderMakeSend.list?id="+id+"&type="+type+"&amount_in="+amount_in+"&nAmount_Notice="+nAmount_Notice+"&roseid="+roseid,
                            dataType: "json",
                            async: false,
                            success:function(data){
                                if(data[0].orderNum==null){
                                    alert("请设置单据编号");
                                }else{
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                $("table.aaaa").append('<tr><td>单据编号:&nbsp;&nbsp;</td>'+
                                    '<td>'+data[0].orderNum+'</td>'+
                                    '<td>制单时间:&nbsp;&nbsp;</td>'+
                                    '<td>'+getLocalTime(data[0].time)+'</td>'+
                                    '<td>制单人:&nbsp;&nbsp;</td>'+
                                    '<td>'+$("#roseNam").text().substr(4,10)+'</td></tr>'+
                                    '<tr><td>备注:&nbsp;&nbsp;</td>'+
                                    '<td colspan="5" style="width:600px;text-align: left;"><textarea id="bbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td></tr>');
                                if(type==0){ //不需要质检的产品走此节点
                                    $("table.bbbb").empty();
                                    $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:150px;text-align: left;">'+data[0].scProductCode+'</td>'+
                                        '<td style="width:88px; text-align: right;">已入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].amount_in+'</td>'+
                                        '<td style="width:125px; text-align: right;">生产数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].iAmount+'</td></tr>'+
                                        '<tr><td style="width:100px; text-align: right;">已通知数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].nAmount_Notice+'</td>'+
                                        '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100x;text-align: left;">成品</td></tr>');
                                    $(".sub-bottom").empty();
                                    if(itype==9){
                                        $(".sub-bottom").append('<button onclick="inwardNotice('+machineType+',0,1);";>开制入库通知单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }else{
                                        $(".sub-bottom").append('<button onclick="tiJiao(20);";>开制入库计划</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();

                                    $("table.cccc").append(
                                        '<tr><td style="width:100%; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td colspan="5" style="width:240%;text-align: left;">'+data[0].cName+'</td>' +

                                        '<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                        '<td style="height:38px;width:78px; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+
                                        '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="packNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber"  style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;"  ></td>'+
                                        '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>'+
                                        '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxNumber" onclick="next()" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                        '<td  style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].pici+'"></td></tr>'+

                                        '<tr><td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Machine_id" id="Machine_id" onchange="func()" style="width:150px;height:30px;"></select>'+
                                        '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Team_id" id="Team_id" style="width:150px;height:30px;"></select>'+
                                        '</tr>' +

                                        ' <tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="7" style="width:1060px;text-align: left;"><textarea id="rkbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td></tr>');

                                }else{//需要质检的走此节点
                                    $("table.bbbb").empty();
                                    $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:150px;text-align: left;">'+data[0].scProductCode+'</td>'+
                                        '<td style="width:88px; text-align: right;">客户料号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cCustomerCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">订单数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].iAmount+'</td></tr>'+
                                        '<tr><td style="width:100px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].nCheckAmount+'</td>'+
                                        '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">成品</td></tr>');
                                    $(".sub-bottom").empty();

                                    if(itype==9){
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="inwardNotice('+machineType+',1,10);">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }else{
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="tiJiao(10)">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();
                                    $("table.cccc").append(
                                        '<tr><td  style="width:10%; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td colspan="7" style="width:240px;text-align: left;">'+data[0].cName+'</td>' +



                                        '<tr><td style="width:10%;; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                        '<td style="width:10%; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:10%; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].pici+'"></td></tr>'+

                                        '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input disabled="disabled" style="width:100px;height:30px;" type="text" id="packNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber" oninput="aa(event)" onporpertychange="aa(event)"  style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;"  ></td>'+
                                        '<td style="width:74px; text-align: right;">每件包数:&nbsp;&nbsp;</td>' +
                                        '<td style="width:120px;text-align: left;"><input type="text" id="EachNumber" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>' +


                                        '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input disabled="disabled" style="width:100px;height:30px;" type="text" id="notBoxNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+

                                        '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight" onclick="nextM()" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+

                                        '<tr><td style="width:74px; text-align: right;">备品数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="spareNumber" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">备品入库&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="spareflag" name="spareflag" type="checkbox" value="1"></td>'+
                                        '<td style="width:74px; text-align: right;">留样数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="sampleNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">留样入库&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="sampleflag"  name="sampleflag" type="checkbox" value="1"></td>'+


                                        '<tr><td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjbz" style="width:100px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                        '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjdj" style="width:100px;height:30px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select>'+
                                        '<td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Machine_id" id="Machine_id" onchange="func()"  style="width:100px;height:30px;"></select>'+
                                        '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+ //onclick="func1()"
                                        '<td style="width:120px;text-align: left;"><select name="Team_id" id="Team_id" style="width:100px;height:30px;"></select>'+
                                        '</tr>' +

                                        '<tr><td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" oninput="aa(event)" onporpertychange="aa(event)" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:125px; text-align: right;">装箱单日期:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="container_time" type="text" placeholder="请选择" style="width:100px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:\'#container_time\',isTime:true,format:\'YYYY-MM-DD\'})"  readonly></td></tr>'+
                                        '</tr>' +
                                        ' <tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>\'+\n' +
                                        '<td colspan="5" style="width:1060px;text-align: left;"><textarea id="rkbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td>' +

                                        '</tr>');




                                    //给机台班组赋值
                                    for (var i = 1; i < data[0].num2 + 1; i++) {
                                        var cjzbh = data[i].cjzbh;
                                        var textStr = data[i].cjzmc;
                                        $optionStr = $("<option>").attr({"value" : cjzbh}).text(textStr);
                                        $("#Machine_id").append($optionStr);
                                    }
                                    for (var i = data[0].num2 + 1; i < data.length; i++) {
                                        var cbanzubh = data[i].cbanzubh;
                                        var textStrs = data[i].cbanzumc;
                                        $optionStrs = $("<option>").attr({"value" : cbanzubh}).text(textStrs);
                                        $("#Team_id").append($optionStrs);
                                    }
                                    $("#Machine_id").val(data[0].cjzbh);
                                    $("#Team_id").val(data[0].cbanzubh);

                                    $.ajax({
                                        url:"getNumber/getAQL.do?ID_Request="+ID_Request,
                                        dataType: "json",
                                        async: false,
                                        success:function(data){
                                            if(data[0].select1==0){

                                            }else{
                                                $("#zjbz").empty();
                                                $("#zjbz").append(data[0].select1);
                                                $("#zjdj").empty();
                                                $("#zjdj").append(data[0].select2);
                                            }
                                        }

                                    })
                                    $("#zjbz").change(function(){
                                        var a = parseFloat($(this).val());
                                        if(a==1){
                                            $("#zjdj").empty();
                                            $.ajax({
                                                url:"getNumber/getAQLChange.do",
                                                dataType: "json",
                                                async: false,
                                                success:function(data){
                                                    var str='';
                                                    for(i=0;i<data.length;i++){
                                                        str +='<option>'+data[i].cGrade+'</option>';
                                                    }
                                                    $("#zjdj").append(str);
                                                }
                                            })
                                        }else{
                                            $("#zjdj").empty();
                                            $("#zjdj").append('<option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option>');
                                        }

                                    })
                                }


                            }
                        })
                    })
                }else{
                    $("table.table").append('<tr><td colspan="13">查无数据...</td></tr>')
                    $("#page").Page({
                        totalPages:1,//分页总数
                        liNums:5,//分页的数字按钮数(建议取奇数)
                        activeClass: 'activP', //active 类样式定义
                        callBack : function(page) {
                            getPages(page);
                        }
                    });
                }
            }

        })
    }




    //班组
    function func(){
        var roseid =$("#userId").val();
        var value= $("#Machine_id option:checked").val();
        $.ajax({
            url:"team.list?roseid="+roseid,
            dataType: "json",
            async: false,
            success:function(data){
                if(data.length==0){
                    $("#Team_id").empty();
                }else{
                    $("#Team_id").empty();

                    for (var i = 1; i < data.length; i++) {
                        var cjzbh = data[i].cjzbh;
                        if(value == cjzbh){
                            var cbanzubh = data[i].cbanzubh;
                            var textStrs = data[i].cbanzumc;
                            $optionStrs = $("<option>").attr({"value" : cbanzubh}).text(textStrs);
                            $("#Team_id").append($optionStrs);

                        }
                    }

                }
            }
        })


    }



    function getPages(i){
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();

        $("table.table").empty();
        $("table.table").append('<thead><tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px;">序号</td>'+
            '<td style="height:30px;">生产订单号</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;width:30%">产品名称</td>'+
            '<td style="height:30px;">版本号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已送检数量</td>'+
            '<td style="height:30px;">已通知入库数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">交货日期</td>'+
            '<td style="height:30px;">是否质检</td>'+
            '<td style="height:30px;width:130px">客户</td>'+
            '<td style="height:30px;width:55px">开制反馈单</td></tr></thead>'

        );
        var parms={};
        parms["order_name"] = order_name;
        $.ajax({
            url:"selectOrderList.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&indexPage="+i,
            dataType: "json",
            type:"post",
            data:parms,
            async: false,
            success:function(data){
                if(data.length>0){
                    var i;
                    for(i=0;i<data.length;i++){
                        var ddate ;
                        var sendDate;
                        if(data[i].dDate_Send==null){
                            sendDate ='无送货时间';
                        }else{
                            sendDate = getLocalTime(data[i].dDate_Send.time);
                        }
                        if(data[i].cClientCode==null){
                            ddate ='未指定客户';
                        }else{
                            ddate = data[i].cClientCode;
                        }
                        var judge;
                        if(data[i].iIncheck ==1){
                            judge='<span style="color:red">是<span>';
                        }else{
                            judge='否';
                        }
                        $("table.table").append('<tr style="overflow:scroll;">' +
                            '<td style="height:30px;display:none">'+data[i].ID+'</td>'+
                            '<td style="height:30px;">'+data[i].irow+'</td>'+
                            '<td style="height:30px;">'+data[i].cCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cPCode+'</td>'+
                            '<td style="height:30px;width:30%">'+data[i].cName+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+sendDate+'</td>'+
                            '<td style="height:30px;">'+judge+'</td>'+
                            '<td style="height:30px;width:130px">'+ddate+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].itype+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].ID_Request+'</td>'+
                            '<td style="height:30px;width:55px"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality('+data[i].ID+')"/></td></tr>'


                        );
                    }
                    $("table.table tr").click(function(){
                        //.not("table.table tr:first-child")
                        var $this = $(this);
                        var path =$('#aaa').val();
                        $("#cCode").val($this.find('td:eq(0)').text());
                        var id = $this.find('td:eq(0)').text();
                        var amount_in =$this.find('td:eq(9)').text();
                        var type= $this.find('td:eq(13)').text();//parseFloat($("#type1").val());是否是质检项目
                        var itype = $this.find('td:eq(14)').text();//9是纸张辅料加工订单
                        var machineType = $this.find('td:eq(15)').text();//6是加工纸张，7是加工辅料
                        var ID_Request = $this.find('td:eq(16)').text();//最大版本id
                        var nAmount_Notice=$this.find('td:eq(8)').text();
                        var roseid =$("#userId").val();
                        $.ajax({
                            url:"orderMakeSend.list?id="+id+"&type="+type+"&amount_in="+amount_in+"&nAmount_Notice="+nAmount_Notice+"&roseid="+roseid,
                            dataType: "json",
                            async: false,
                            success:function(data){
                                if(data[0].orderNum==null){
                                    alert("请设置单据编号");
                                }else{
                                    event.preventDefault();
                                    $('.cd-popup2').addClass('is-visible2');
                                }
                                $("#cBillCode").val(data[0].orderNum);
                                $("table.aaaa").empty();
                                $("table.aaaa").append('<tr><td>单据编号:&nbsp;&nbsp;</td>'+
                                    '<td>'+data[0].orderNum+'</td>'+
                                    '<td>制单时间:&nbsp;&nbsp;</td>'+
                                    '<td>'+getLocalTime(data[0].time)+'</td>'+
                                    '<td>制单人:&nbsp;&nbsp;</td>'+
                                    '<td>'+$("#roseNam").text().substr(4,10)+'</td></tr>'+
                                    '<tr><td>备注:&nbsp;&nbsp;</td>'+
                                    '<td colspan="5" ><textarea id="bbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td></tr>');
                                if(type==0){
                                    $("table.bbbb").empty();
                                    $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].scProductCode+'</td>'+
                                        '<td style="width:88px; text-align: right;">已入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].amount_in+'</td>'+
                                        '<td style="width:125px; text-align: right;">生产数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].iAmount+'</td></tr>'+
                                        '<tr><td style="width:100px; text-align: right;">已通知数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].nAmount_Notice+'</td>'+
                                        '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">成品</td></tr>');
                                    $(".sub-bottom").empty();
                                    if(itype==9){
                                        $(".sub-bottom").append('<button onclick="inwardNotice('+machineType+',0,1);";>开制入库通知单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }else{
                                        $(".sub-bottom").append('<button onclick="tiJiao(20);";>开制入库计划</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();
                                    $("table.cccc").append(
                                        '<tr><td style="width:100%; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td colspan="5" style="width:240%;text-align: left;">'+data[0].cName+'</td>' +
                                        // '<td style="width:74px; text-align: right;">每件包数:&nbsp;&nbsp;</td>' +
                                        //  '<td style="width:120px;text-align: left;"><input type="text" id="EachNumber" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>' +


                                        '<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                        '<td style="height:38px;width:78px; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].pici+'" ></td></tr>'+

                                        //'<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        //'<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+
                                        '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="packNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber"  style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;"  ></td>'+
                                        '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>'+
                                        '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxNumber" onclick="next()" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                        '<td  style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+

                                        '<tr><td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Machine_id" id="Machine_id" onchange="func()" style="width:150px;height:30px;"></select>'+
                                        '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Team_id" id="Team_id" style="width:150px;height:30px;"></select>'+
                                        '</tr>' +

                                        '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="7" style="width:1060px;text-align: left;"><textarea id="rkbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td></tr>');

                                }else{
                                    $("table.bbbb").empty();
                                    $("table.bbbb").append('<tr><td style="height:56px;width:102px; text-align: right;">生产订单号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:150px;text-align: left;">'+data[0].scProductCode+'</td>'+
                                        '<td style="width:88px; text-align: right;">客户料号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cCustomerCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">订单数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].iAmount+'</td></tr>'+
                                        '<tr><td style="width:100px; text-align: right;">已送检数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].nCheckAmount+'</td>'+
                                        '<td style="width:74px; text-align: right;">产品类型:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">成品</td></tr>');
                                    $(".sub-bottom").empty();
                                    if(itype==9){
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="inwardNotice('+machineType+',1,10);">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }else{
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="tiJiao(10)">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();
                                    $("table.cccc").append(
                                        '<tr><td  style="width:10%; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td colspan="5" style="width:240px;text-align: left;">'+data[0].cName+'</td>' +
                                        '<td style="width:10%; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:10%;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" oninput="aa(event)" onporpertychange="aa(event)" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+



                                        '<tr><td style="width:10%; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:125px; text-align: right;">产品单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td>'+
                                        '<td style="height:20%;width:78px; text-align: right;">产品规格:&nbsp;&nbsp;</td>'+
                                        '<td  style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:20%; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" disabled="disabled" style="width:100px;height:30px;" value="'+data[0].pici+'" ></td></tr>'+

                                        '<tr><td style="width:74px; text-align: right;">包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input disabled="disabled" style="width:100px;height:30px;" type="text" id="packNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">单位包装数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPackNumber" oninput="aa(event)" onporpertychange="aa(event)"  style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">包装单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="unitPack" style="width:100px;height:30px;"  ></td>'+
                                        '<td style="width:74px; text-align: right;">每件包数:&nbsp;&nbsp;</td>' +
                                        '<td style="width:120px;text-align: left;"><input type="text" id="EachNumber" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td></tr>' +


                                        '<tr><td style="width:74px; text-align: right;">单位毛重:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input  style="width:100px;height:30px;" type="text" id="unitWeight" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">不满箱数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input disabled="disabled" style="width:100px;height:30px;" type="text" id="notBoxNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">标准重量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="standWeight" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+

                                        '<td style="width:74px; text-align: right;">不满箱毛重:&nbsp;&nbsp;</td>'+
                                        '<td  style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="notBoxWeight" onclick="nextM()" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+

                                        '<tr><td style="width:74px; text-align: right;">备品数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="spareNumber" style="width:100px;height:30px;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')" ></td>'+
                                        '<td style="width:74px; text-align: right;">备品入库&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="spareflag" name="spareflag" type="checkbox" value="1"></td>'+
                                        '<td style="width:74px; text-align: right;">留样数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="sampleNumber"  onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td>'+
                                        '<td style="width:74px; text-align: right;">留样入库&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="sampleflag" name="sampleflag" type="checkbox" value="1"></td>'+


                                        '<tr><td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjbz" style="width:100px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                        '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjdj" style="width:100px;height:30px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select>'+
                                        '<td style="width:125px; text-align: right;">机台:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Machine_id" id="Machine_id" onchange="func()" style="width:100px;height:30px;"></select>'+
                                        '<td style="width:125px; text-align: right;">班组:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select name="Team_id" id="Team_id" style="width:100px;height:30px;"></select>'+

                                        '</tr>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">备注:&nbsp;&nbsp;</td>' +
                                        '<td colspan="5" style="width:1060px;text-align: left;"><textarea id="rkbz" style="width:600px;height:88px;border-color="#FFFFFF"></textarea></td>' +
                                        '<td style="width:125px; text-align: right;">装箱单日期:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input id="container_time" type="text" placeholder="请选择" style="width:100px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:\'#container_time\',isTime:true,format:\'YYYY-MM-DD\'})"  readonly></td></tr>'+
                                        '</tr>');

                                    //给机台班组赋值
                                    for (var i = 1; i < data[0].num2 + 1; i++) {
                                        var cjzbh = data[i].cjzbh;
                                        var textStr = data[i].cjzmc;
                                        $optionStr = $("<option>").attr({"value" : cjzbh}).text(textStr);
                                        $("#Machine_id").append($optionStr);
                                    }
                                    for (var i = data[0].num2 + 1; i < data.length; i++) {
                                        var cbanzubh = data[i].cbanzubh;
                                        var textStrs = data[i].cbanzumc;
                                        $optionStrs = $("<option>").attr({"value" : cbanzubh}).text(textStrs);
                                        $("#Team_id").append($optionStrs);
                                    }
                                    $("#Machine_id").val(data[0].cjzbh);
                                    $("#Team_id").val(data[0].cbanzubh);

                                    $.ajax({
                                        url:"getNumber/getAQL.do?ID_Request="+ID_Request,
                                        dataType: "json",
                                        async: false,
                                        success:function(data){
                                            if(data[0].select1==0){

                                            }else{
                                                $("#zjbz").empty();
                                                $("#zjbz").append(data[0].select1);
                                                $("#zjdj").empty();
                                                $("#zjdj").append(data[0].select2);
                                            }

                                        }
                                    })
                                    $("#zjbz").change(function(){
                                        var a = parseFloat($(this).val());
                                        if(a==1){
                                            $("#zjdj").empty();
                                            $.ajax({
                                                url:"getNumber/getAQLChange.do",
                                                dataType: "json",
                                                async: false,
                                                success:function(data){
                                                    var str='';
                                                    for(i=0;i<data.length;i++){
                                                        str +='<option>'+data[i].cGrade+'</option>';
                                                    }
                                                    $("#zjdj").append(str);
                                                }
                                            })
                                        }else{
                                            $("#zjdj").empty();
                                            $("#zjdj").append('<option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option>');
                                        }

                                    })
                                }


                            }
                        })
                    })

                }else{
                    $("table.table").append('<tr><td colspan="12">查无数据...</td></tr>')
                }
            }
        })
    }
    function getLocalTime(nS) {
        var mm = new Date(nS);
        var tt= mm.format('yyyy-MM-dd');
        return tt;
    }


    function nextM()
    {
        var ac= $(" #notBoxNumber ").val();
        var ab= $(" #standWeight ").val();
        document.getElementById("notBoxWeight").value=(ab*ac);//不满箱数量

    }

    function aa(e){
        var ac= $(" #unitPackNumber ").val();
        var ab= $(" #rksla ").val();
        if(ac =="" || ab ==""){
            document.getElementById("notBoxNumber").value="";//不满箱数量
            document.getElementById("packNumber").value="";//包装数量
        }else{
            document.getElementById("notBoxNumber").value=(ab-(Math.floor(ab/ac))*ac);//不满箱数量
            document.getElementById("packNumber").value=(Math.ceil(ab/ac));//包装数量
        }

    }

    function tiJiao(m){

        $("#selectA").empty();
        $.ajax({
            url:"getNumber/getRolse.do?machineType="+8,
            dataType: "json",
            //async: false,
            success:function(data){
                var str='';
                for(var i=0;i<data.length;i++){
                    str +='<option value="'+data[i].iRoleID+'">'+data[i].cRoleName+'</option>';
                }
                $("#selectA").append(str);
            }
        })
        $('#myModal3').modal();
        $(".modal-footer").empty();
        $(".modal-footer").append('<button type="button" onclick="insertSendList('+m+')" data-dismiss="modal" aria-hidden="true" style="font-size: 16px">确定</button>');

    }

    function insertSendList(i){

        if(flagi==1){

            var roleid = $("#selectA option:selected").val();
            var rolename = $("#selectA option:selected").text();
            var parms={};
            parms["roleid"] = roleid;
            parms["rolename"] =rolename;
            var id = $("#cCode").val();
            parms["cBillCode"]=$("#cBillCode").val();
            parms["cBatchCode"]=$("#rkpca").val();
            var nAmount =$("#rksla").val();
            var ab= $(" #rksla ").val();
            var roseid =$("#userId").val();
            var mainBz=$("#bbz").val();
            var detailBz=$("#rkbz").val();
            var zjbz =$("#zjbz option:selected").text();
            var zjdj =$("#zjdj").val();

            // packNumber  unitPackNumber  unitPack  standWeight  unitWeight notBoxNumber notBoxWeight

            parms["mainBz"] =mainBz;
            parms["detailBz"] =detailBz;
            parms["zjbz"] =zjbz;
            parms["zjdj"] =zjdj;
            parms["packNumber"]=$("#packNumber").val();
            parms["unitPackNumber"]=$("#unitPackNumber").val();
            parms["unitPack"]=$("#unitPack").val();
            parms["standWeight"]=$("#standWeight").val();
            parms["unitWeight"]=$("#unitWeight").val();
            parms["notBoxNumber"]=$("#notBoxNumber").val();
            parms["notBoxWeight"]=$("#notBoxWeight").val();
            parms["EachNumber"]=$("#EachNumber").val();
            parms["spareNumber"]=$("#spareNumber").val();
            parms["sampleNumber"]=$("#sampleNumber").val();
            parms["Machine_id"]= $("#Machine_id option:checked").text();
            parms["Team_id"]= $("#Team_id option:checked").text();

            //入库数量 irksla  每件包数 EachNumber  备品数量spareNumber  备品入库标识spareflag 留样数量sampleNumber 留样入库标识sampleflag
            var spareflag = document.getElementById("spareflag").checked;
            var sampleflag = document.getElementById("sampleflag").checked;
            parms["container_time"] = $("#container_time").val();


            if(spareflag==true && sampleflag==true) {
                //var a1=$("#rksla").val();
                //var a2=$("#spareNumber").val();
                //var a3=$("#sampleNumber").val();
                parms["spareflag"]=1;
                parms["sampleflag"]=1;
                //var nAmount = parseInt(a1)+parseInt(a2)+parseInt(a3);
            } else if(sampleflag==true){
                //var a1=$("#rksla").val();
                //var a3=$("#sampleNumber").val();
                parms["spareflag"]=0;
                parms["sampleflag"]=1;
                //var nAmount = parseInt(a1)+parseInt(a3);
            }else if(spareflag==true){
                //var a1=$("#rksla").val();
                //var a2=$("#spareNumber").val();
                parms["spareflag"]=1;
                parms["sampleflag"]=0;
                //var nAmount = parseInt(a1)+parseInt(a2);
            }else{
                //var nAmount =$("#rksla").val;
                //var nAmount =nAmounts;
                parms["spareflag"]=0;
                parms["sampleflag"]=0;
            }


            if(nAmount>0){
                flagi=0;
                $.ajax({
                    url:encodeURI(encodeURI("insertSendList.list?id="+id+"&roseid="+roseid+"&nAmount="+nAmount+"&status="+i)),
                    data:parms,
                    async: false,
                    success:function(data){
                        $('.cd-popup2').removeClass('is-visible2');
                        //$("table.sjdTable").empty();
                        //$("table.aaaa").empty();
                        flagi=1;
                        alert(data);
                    }
                })
            }else{

                alert("入库数量必须大于0");

            }
        }

    }

    function getAbnormality(billId){
        event.stopPropagation();//阻止冒泡
        $.ajax({
            url:"getNumber/getExceptionfeedback.do?",
            //dataType: "json",
            async: false,
            success:function(data){
                if(data == 0){
                    alert("未配置异常反馈单");
                }else{
                    var userId = $("#userId").val();
                    var path =$("#path").val();
                    window.open(path+'/getQcAbnormality/getAbnormality.do?jobOrProduct=1&billId='+billId+'&userId='+userId+'&eFBid=0&source=2&vore=1',"_self");
                }
            }
        })

    }

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);
    jQuery(document).ready(function($){
        //关闭窗口
        $('.cd-popup2').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2') ) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup2').removeClass('is-visible2');
            }
        });
    })



</script>

</body>

</html>

