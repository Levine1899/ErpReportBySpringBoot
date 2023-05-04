<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>销售产品列表</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
    .top-link{
        float: right;
        margin: 29px 44px;
        color: #FFFFFF;
        font-height: 55px;
        font-size:25px;
        font-family: 楷体;
    }
    .top3 {
        border:1px solid #ccc;
        width: 98%;
        margin:0 auto;
        overflow-x: auto;


    }
    .table{
        position: relative;
        color:#666;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;


    }
    .table tr{
        height:35px;
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
        width:98%;
        height:50px;
        margin:0 auto;
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
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
        <td style="height:40px">客户名称：</td>
        <td style="height:40px"><input id="order_num" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">销售订单：</td>
        <td style="height:40px"><input id="order_num1" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">客户料号：</td>
        <td style="height:40px"><input id="order_num2" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">合同编号：</td>
        <td style="height:40px"><input id="order_num3" type="text" value="" style="width:150px;height:30px;"></td>
        </tr>
    <tr>
        <td style="height:40px">产品名称：</td>
        <td style="height:40px"><input id="order_num6" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">生产订单：</td>
        <td style="height:40px"><input id="order_num7" type="text" value="" style="width:150px;height:30px;"></td>
        <td style="height:40px">销售订单日期：</td>
        <td style="height:40px"><input id="begin_time" type="text" placeholder="请选择" style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"  readonly></td>
        <td style="height:40px"></td>
        <td style="height:40px"></td>
        <td style="height:40px">
            <input type="button" value="查询" class="search" style="width:60px;" onclick="firstList(1)">
        </td>
    </tr>
    <tr></tr>
</table>

<h2 class="title2">销售产品列表</h2>
<div class="top3">
    <table class="table" >
    </table>
    <div id="page"></div>
</div>
<input type="hidden" id="path" value=<%=path%>>
<input type="hidden" id="pages" value="">
</body>

<script src="js/signature_pad.js"></script>
<%--<script src="js/app.js"></script>--%>
<script type="text/javascript">

    firstList(1);
    function firstList(i){
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = "";
        var order_name = $("#order_name").val();
        $("table.table").empty();
        $("table.table").append('<thead><tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px">序号</td>'+
            '<td style="height:30px;">销售订单</td>'+
            '<td style="height:30px;">客户名称</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;">产品名称</td>'+
            '<td style="height:30px;">版本</td>'+
            '<td style="height:30px;">单位</td>'+
            '<td style="height:30px;">客户料号</td>'+
            '<td style="height:30px;">客户品名</td>'+
            '<td style="height:30px;">生产订单</td>'+
            '<td style="height:30px;">合同号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">已发货数量</td>'+
            '<td style="height:30px;">销售订单日期</td>'+
            '<td style="height:30px;">生产订单日期</td>'+
            '<td style="height:30px;">业务员</td>'+
            '<td style="height:30px;">业务部门</td>'+
            '<td style="height:30px;">客服人员</td>'+
            '<td style="height:30px;width:55px;">生成客户投诉反馈单</td></tr></thead>'

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
                        $("table.table").append('<tr style="overflow:scroll;">' +
                            '<td style="height:30px;">'+data[i].irow+'</td>'+//data[i].ID
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px; ">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; ">'+data[i].itype+'</td>'+
                            '<td style="height:30px; ">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; ">'+data[i].ID_Request+'</td>'+
                            '<td style="height:30px; ">'+data[i].itype+'</td>'+
                            '<td style="height:30px; ">'+data[i].machineType+'</td>'+
                            '<td style="height:30px;width:55px"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality('+data[i].ID+')"/></td></tr>'
                        );

                    }

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
    function getPages(i){
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();
        $("table.table").empty();
        $("table.table").append('<thead><tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;">' +
            '<td style="height:30px">序号</td>'+
            '<td style="height:30px;">销售订单</td>'+
            '<td style="height:30px;">客户名称</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;">产品名称</td>'+
            '<td style="height:30px;">版本</td>'+
            '<td style="height:30px;">单位</td>'+
            '<td style="height:30px;">客户料号</td>'+
            '<td style="height:30px;">客户品名</td>'+
            '<td style="height:30px;">生产订单</td>'+
            '<td style="height:30px;">合同号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">已发货数量</td>'+
            '<td style="height:30px;">销售订单日期</td>'+
            '<td style="height:30px;">生产订单日期</td>'+
            '<td style="height:30px;">业务员</td>'+
            '<td style="height:30px;">业务部门</td>'+
            '<td style="height:30px;">客服人员</td>'+
            '<td style="height:30px;width:55px;">生成客户投诉反馈单</td></tr></thead>'

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
                            '<td style="height:30px;">'+data[i].irow+'</td>'+//data[i].ID
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px; ">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; ">'+data[i].itype+'</td>'+
                            '<td style="height:30px; ">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; ">'+data[i].ID_Request+'</td>'+
                            '<td style="height:30px; ">'+data[i].itype+'</td>'+
                            '<td style="height:30px; ">'+data[i].machineType+'</td>'+
                            '<td style="height:30px;width:55px"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality('+data[i].ID+')"/></td></tr>'
                        );
                    }
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
    function getAbnormality(billId){
        event.stopPropagation();//阻止冒泡
        var userId = $("#userId").val();
        var path =$("#path").val();
        window.open(path+'/getCusComplaints/getComplaints.do?jobOrProduct=1&billId='+billId+'&userId='+userId+'&eFBid=0&source=2&vore=1',"_self");
    }
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);
</script>
</body>

</html>

