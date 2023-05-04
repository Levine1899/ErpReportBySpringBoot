<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path +"/";
    String insdepPath = basePath + "/webjars/webjar-easyui-insdep/1.5.1";
    String jqueryPath = basePath + "/webjars/webjar-jquery/2.1.3";
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
    <!--
    注意样式表优先级
    主题样式必须在easyui组件样式后。
-->
    <link href="<%=insdepPath%>/themes/insdep/easyui.css" rel="stylesheet" type="text/css">

    <!--
        themes/insdep/easyui_animation.css
        Insdep对easyui的额外增加的动画效果样式，根据需求引入或不引入，此样式不会对easyui产生影响
    -->
    <link href="<%=insdepPath%>/themes/insdep/easyui_animation.css" rel="stylesheet" type="text/css">

    <!--
        themes/insdep/easyui_plus.css
        Insdep对easyui的额外增强样式,内涵所有 insdep_xxx.css 的所有组件样式
        根据需求可单独引入insdep_xxx.css或不引入，此样式不会对easyui产生影响
    -->
    <link href="<%=insdepPath%>/themes/insdep/easyui_plus.css" rel="stylesheet" type="text/css">

    <!--
        themes/insdep/insdep_theme_default.css
        Insdep官方默认主题样式,更新需要自行引入，此样式不会对easyui产生影响
    -->
    <link href="<%=insdepPath%>/themes/insdep/insdep_theme_default.css" rel="stylesheet" type="text/css">

    <!--
        themes/insdep/icon.css
        美化过的easyui官方icons样式，根据需要自行引入
    -->
    <link href="<%=insdepPath%>/themes/insdep/icon.css" rel="stylesheet" type="text/css">

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
        overflow:auto;
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
        height:528px;
        overflow:auto;

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
        /*  float: left; */
        position:relative;
        line-height: 20px;
        font-size:14px;
        vertical-align:middle;
        padding:3px;
        font-weight:normal;
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

    /*.cd-popup-container2{*/
        /*padding:10px 30px;*/
    /*}*/

    .cd-popup-container2 {
        position: relative;
        width: 100%;
        left: 0%;
        /* margin: 0px; */
        height: 100%;
        top: 0%;
        background: #eff1f3;
        padding:10px 30px;
        /* border-radius: .4rem .4rem .4rem .4rem;*/
        text-align: center;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        -webkit-transform: translateY(60px);
        -moz-transform: translateY(60px);
        -ms-transform: translateY(60px);
        -o-transform: translateY(60px);
        transform: translateY(60px);
        -webkit-backface-visibility: hidden;
        -webkit-transition-property: -webkit-transform;
        -moz-transition-property: -moz-transform;
        transition-property: transform;
        -webkit-transition-duration: 0.3s;
        -moz-transition-duration: 0.3s;
        -ms-transition-duration: 0.3s;
        -o-transition-duration: 0.3s;
        transition-duration: 0.3s;
    }

    .sub-title{
        position:relative;
        margin: 15px 38px 0;
        font-size: 14px;
        font-weight: 700;

    }

    .sub-bar{
        width:100%;
        font-weight:normal;
        height:190px;
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
        left:50%;
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

</style>
<body>
<div id="forheadDiv" style="visibility:hidden;">
    <%--<div id="setOrderNum" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="text-align: center;width:320px;left:38%;overflow:scroll;overflow-y:hidden;overflow-x:hidden;">--%>
        <%--<div class="modal-dialog" role="document">--%>
            <%--<div class="modal-content">--%>
                <%--<div class="modal-header" style="font-size: 20px;height: 48px;">--%>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
                    <%--<h4 class="modal-title" id="setOrderNumTitle">选择库房角色</h4>--%>
                <%--</div>--%>
                <%--<div class="modal-body" id="setOrderNumList" style="font-size: 18px;">--%>
                    <%--<select id="selectOrderNumA"><option value="13">成品库房</option></select>--%>
                <%--</div>--%>
                <%--<div class="modal-footer"><button type="button" onclick="insertSendList(10)" data-dismiss="modal" aria-hidden="true" style="font-size: 16px">确定</button></div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div id="setOrderNum" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="text-align: center;width:320px;left:38%;overflow:scroll;overflow-y:hidden;overflow-x:hidden;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="font-size: 20px;height: 48px;">
                    <h4 class="modal-title" id="setOrderNumTitle">选择订单</h4>
                </div>
                <div class="modal-body" id="setOrderNumList" style="font-size: 18px;">
                    <input class="easyui-combogrid" name="selectOrder"
                           id="selectOrder"  style="width:200px;" />
                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
</div>
<div id="mainDiv" style="visibility:hidden;">
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
        <table class="table"  >

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

                    <div class="sub-bar">
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

<input type="hidden" id="pages" value="">
<input type="hidden" id="type1" value="">
</div>
</body>

<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript">
    //参数完成量
    var completeAmount = getUrlParam("completeAmount");
    //单位
    var completeUnit = decodeURIComponent(getUrlParam("completeUnit"));
    //作业数量转成品数量转换率分子
    var ratio_N = 1;
    //作业数量转成品数量转换率分母
    var ratio_D = 1;
    //入库数量数值标识 —— 0：整数  1：小数
    var inType = 1;
    //平板反馈中成品入库\送检界面备注栏题目显示标识,标识说明 - 0：备注；1：卷号；2卷号，必填
    var remarkTag = 0;
    //平板反馈中成品入库\送检界面备注栏题目
    var remarkText = "备注";


    $(function() {
        getRemarkTag();
        getOrderList();
    });
    //根据作业完成数量（成品入库）自动计算入库数量
    function setRksla(){
        //作业完成入库数量
        var completIn = $("#inAmount").val();
        completIn = clearNoNum(completIn);
        $("#inAmount").val(completIn);
        var rksla = completIn * ratio_N / ratio_D;
        rksla = rksla.toFixed(1).trim();
        if(0 == inType){
            rksla = parseInt(rksla);
        }

        $("#rksla").val(rksla);
        //$("#rksla").attr("value",rksla);
        //$("#rksla").change();
    }

    //获取url上传的参数
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
        var r = window.location.search.substr(1).match(reg);
        if (r!=null) return (r[2]); return null;
    }
    
    function getOrderList() {
        var mJobID = getUrlParam("mJobID");
        $.ajax({
            type:"POST",
            async: false,
            data: { mJobID : mJobID},
            dataType: "json",
            url: '<%=basePath%>/orderDialog/getInfo.do',
            success: function(data){
                //alert(JSON.stringify(data[0]));
                if(null != data && undefined != data){
                    //获取换算率
                    var ratio = data.ratio;
                    if(undefined != ratio){
                        ratio_N = ((ratio.nRatio_N == undefined || "" == ratio.nRatio_N) ? 1:ratio.nRatio_N);
                        ratio_D = ((ratio.iRatio_D == undefined || "" == ratio.iRatio_D) ? 1:ratio.iRatio_D);
                    }
                    var orders = data.orders;
                    //根据作业id查询到了订单列表
                    if(2 === orders.length){
                        //作业id只对应一条订单
                        $("#order_num").val(orders[1].PBill_Code);
                        inType = ((orders[1].AP_InputType == undefined || "" == orders[1].AP_InputType) ? 1:orders[1].AP_InputType);
                        firstList(1);
                    }else{
                        //对应多条订单，先让用户选择订单信息
                        setOrderList(orders);
                    }
                }else{
//                    alert("未查询到相关订单数据");
                    var info = {};
                    info.type = 0;
                    info.info = "未查询到相关订单数据";
                    window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
                }
            }
        });
    }

    function setOrderList(result){
        //收货地址列表初始化
        $('#selectOrder').combogrid({
            mode : 'remote',//远程连接方式
            //fitColumns:true,//自动大小
            striped: true,
            method:'post',//请求方式
            dataType:'json',
            data:result,
            panelWidth: 550,
            idField: 'PBill_Code',
            textField: 'AP_Name',
            editable: false,
            pagination: false,
            inputCode: 'inputCode', //拼音码
            filter: function(q, row){
                var opts = $(this).combobox('options');
                return row[opts.inputCode].indexOf(q) == 0;
            },
            fitColumns:true,
            columns: [[
                {field: 'AP_InputType',title: 'AP_InputType',width: 160,align: 'center',hidden:'true'},
                {field: 'PBill_Code',title: '订单号',width: 160,align: 'center'},
                {field: 'AP_Name',title: '产品名称',width: 160,align: 'center'}
            ]],
            onLoadSuccess:function(){
                var g = $('#selectOrder').combogrid('grid');	// get datagrid object
                var r = g.datagrid('getData').rows;
                if (r.length > 0) {
                    //$("#nsendaddressid").combogrid('grid').datagrid('selectRow', 0);
                    $("#selectOrder").combogrid('grid').datagrid('selectRow', 0);
                }
                //显示订单列表
                document.getElementById("forheadDiv").style.visibility="visible";
            },
            onChange:function(){
                var g = $('#selectOrder').combogrid('grid');	// get datagrid object
                var r = g.datagrid('getSelected');	// get the selected row
                $("#order_num").val($("#selectOrder").combogrid('getValue'));
                inType = ((r.AP_InputType == undefined || "" == r.AP_InputType) ? 0:r.AP_InputType);
                document.getElementById("forheadDiv").style.visibility="hidden";
                firstList(1);
            }
        });

    }

    //获取平板反馈中成品入库\送检界面备注栏题目显示标识
    function getRemarkTag() {
        $.ajax({
            type:"POST",
            async: false,
            data: {},
            dataType: "json",
            url: '<%=basePath%>/orderDialog/getRemarkTag.do',
            success: function(data){
                if(null != data && undefined != data){
                    //获取标识
                    remarkTag = parseInt(data.remarkTag);
                    if(2 == remarkTag){
                        remarkText = "卷号";
                    }
                }
            }
        });
    }

    
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
//        $('.cd-popup2').removeClass('is-visible2');
        var info = {};
        info.type = 1;
        info.info = "";
        window.slifeJsAgent.invoke_native("getResult","params","");
    }




//    setTimeout(function () {
//
//        $('table.table tr:last-child').click();
//    },3000);
    function firstList(i){
        document.getElementById("forheadDiv").style.visibility="hidden";
        //document.getElementById("mainDiv").style.visibility="visible";
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();
        $("table.table").empty();
        $("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
            '<td style="height:30px;">生产订单号</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;">产品名称</td>'+
            '<td style="height:30px;">版本号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已送检数量</td>'+
            '<td style="height:30px;">已通知入库数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">交货日期</td>'+
            '<td style="height:30px;">是否质检</td>'+
            '<td style="height:30px; width:266px;">客户</td></tr>'

        );
        var parms={};
        parms["order_name"] = order_name;
        $.ajax({
            url:"tempSelectOrderList.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&indexPage="+i,
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
                        $("table.table").append('<tr><td style="height:30px;display:none">'+data[i].ID+'</td>'+
                            '<td style="height:30px;">'+data[i].irow+'</td>'+
                            '<td style="height:30px;">'+data[i].cCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cPCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cName+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+sendDate+'</td>'+
                            '<td style="height:30px;">'+judge+'</td>'+
                            '<td style="height:30px; width:266px;">'+ddate+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].itype+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].ID_Request+'</td>'
                        );

                    }
                    $("table.table tr").not("table.table tr:first-child").click(function(){

                        ///////////////////////////////////
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

                        // alert(id+'dddd'+roseid);
                        $.ajax({
                            url:"orderMakeSend.list?id="+id+"&roseid="+roseid+"&type="+type+"&amount_in="+amount_in+"&nAmount_Notice="+nAmount_Notice,
                            dataType: "json",
                            async: false,
                            success:function(data){
                                if(data[0].orderNum==null){
//                                    alert("请设置单据编号");
                                    var info = {};
                                    info.type = 0;
                                    info.info = "请设置单据编号";
                                    window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
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
                                        $(".sub-bottom").append('<button onclick="confirm(20);";>开制入库计划</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();
                                    $("table.cccc").append('<tr><td style="height:38px;width:180px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:180px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;">'+data[0].cName+'</td>'+
                                        '<td style="width:180px; text-align: right;">单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;">'+data[0].cUnit+'</td></tr>'+
                                        '<tr><td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:100px;height:30px;" value="'+data[0].pici+'"></td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=(Math.round(clearNoNum(value)*10)/10)"></td></tr>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">' + remarkText+ ':&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="rkbz" style="width:100px;height:30px;"></td>'+
                                        '<td style="height:38 px;width:180px; text-align: right;">作业完成数量（本班组）:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="completeAmount" style="width:100px;height:30px;" readonly="readonly"><span class="taskUnit"></span></td>'+
                                        '<td style="height:38 px;width:78px; text-align: right;">作业完成数量（成品入库）:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="inAmount" style="width:100px;height:30px;"><span class="taskUnit"></span></td></tr>'


                                    );

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
                                    //$(".sub-bottom").append('<button onclick="inwardNotice('+machineType+',1,0);";>保存</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="inwardNotice('+machineType+',1,10);">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    //$(".sub-bottom").append('<button onclick="tiJiao(0)";>保存</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="tiJiao(10)">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');

                                    if(itype==9){
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="inwardNotice('+machineType+',1,10);">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }else{
                                        $(".sub-bottom").append('&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="confirm(10)">提交送检单</button>&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="guanbi()">关闭</button>');
                                    }
                                    $("table.cccc").empty();
                                    $("table.cccc").append('<tr><td style="height:38px;width:260px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:260px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td style="width:240px;text-align: left;">'+data[0].cName+'</td>'+
                                        '<td style="width:160px; text-align: right;">单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td></tr>'+
                                        '<tr><td style="height:38px;width:160px; text-align: right;">规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:160px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:100px;height:30px;" value="'+data[0].pici+'"></td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=(Math.round(clearNoNum(value)*10)/10)"></td></tr>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">' + remarkText+ ':&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="rkbz" style="width:100px;height:30px;"></td>'+
                                        '<td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjbz" style="width:120px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                        '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjdj" style="width:100px;height:38px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select></tr>'+
                                        '<tr><td style="height:38 px;width:180px; text-align: right;">作业完成数量(本班组):&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="completeAmount" style="width:100px;height:30px;" readonly="readonly"><span class="taskUnit"></span></td>'+
                                        '<td style="height:38 px;width:78px; text-align: right;">作业完成数量(成品入库):&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="inAmount" style="width:100px;height:30px;"><span class="taskUnit"></span></td></tr>'
                                    );
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


        //模拟点击事件
        $('table.table tr:last-child').click();
        $('#inAmount').bind('input propertychange', function() {
//            $("#rksla").val(1111);
            setRksla();
        });
//        $('table.cccc').bind('input propertychange ','#inAmount',function(){
//            setRksla();
//        });
        $("#completeAmount").val(completeAmount);
        $("#inAmount").val("");
        $(".taskUnit").html("（" + completeUnit + "）");
        setRksla();
//        $('#inAmount').bind('input propertychange', function() {
//            $('.msg').html($(this).val().length + ' characters');
//        });
    }

    function clearNoNum(num) {
        //先把非数字的都替换掉，除了数字和.
        num = num.replace(/[^\d.]/g, "");
        //必须保证第一个为数字而不是.
        num = num.replace(/^\./g, "");
        //保证只有出现一个.而没有多个.
        num = num.replace(/\.{2,}/g, ".");
        //保证.只出现一次，而不能出现两次以上
        num = num.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
        return num;
    }

    function confirm(i){
        var nAmount =$("#rksla").val();
        var inTaskAmount = nAmount * ratio_D / ratio_N;
        //inAmount
        var tempInAmount = $("#inAmount").val();
        var info = {};
        info.type = 2;
        info.inAmount = tempInAmount;
        info.param = i;
        window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
    }

    function getPages(i){
        var order_num = $("#order_num").val();
        var begin_time = $("#begin_time").val();
        var end_time = $("#end_time").val();
        var order_name = $("#order_name").val();

        $("table.table").empty();
        $("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
            '<td style="height:30px;">生产订单号</td>'+
            '<td style="height:30px;">产品编号</td>'+
            '<td style="height:30px;">产品名称</td>'+
            '<td style="height:30px;">版本号</td>'+
            '<td style="height:30px;">生产数量</td>'+
            '<td style="height:30px;">已送检数量</td>'+
            '<td style="height:30px;">已通知入库数量</td>'+
            '<td style="height:30px;">已入库数量</td>'+
            '<td style="height:30px;">交货日期</td>'+
            '<td style="height:30px;">是否质检</td>'+
            '<td style="height:30px; width:266px;">客户</td>'

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
                //var detectionJson = data;
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
                        $("table.table").append('<tr><td style="height:30px;display:none">'+data[i].ID+'</td>'+
                            '<td style="height:30px;">'+data[i].irow+'</td>'+
                            '<td style="height:30px;">'+data[i].cCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cPCode+'</td>'+
                            '<td style="height:30px;">'+data[i].cName+'</td>'+
                            '<td style="height:30px;">'+data[i].iVers+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Check+'</td>'+
                            '<td style="height:30px;">'+data[i].nAmount_Notice+'</td>'+
                            '<td style="height:30px;">'+data[i].iAmount_In+'</td>'+
                            '<td style="height:30px;">'+sendDate+'</td>'+
                            '<td style="height:30px;">'+judge+'</td>'+
                            '<td style="height:30px; width:266px;">'+ddate+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].iIncheck+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].itype+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].machineType+'</td>'+
                            '<td style="height:30px; display:none">'+data[i].ID_Request+'</td>'
                        );
                    }
                    $("table.table tr").not("table.table tr:first-child").click(function(){

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
                        //alert(id+'dddd'+roseid);
                        $.ajax({
                            url:"orderMakeSend.list?id="+id+"&type="+type+"&amount_in="+amount_in+"&nAmount_Notice="+nAmount_Notice,
                            dataType: "json",
                            async: false,
                            success:function(data){
                                if(data[0].orderNum==null){
//                                    alert("请设置单据编号");
                                    var info = {};
                                    info.type = 0;
                                    info.info = "请设置单据编号";
                                    window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
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
                                    $("table.cccc").append('<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:100px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td style="width:240px;text-align: left;">'+data[0].cName+'</td>'+
                                        '<td style="width:125px; text-align: right;">单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td></tr>'+
                                        '<tr><td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:100px;height:30px;" value="'+data[0].pici+'" ></td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">' + remarkText+ ':&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="rkbz" style="width:100px;height:30px;"></td>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">作业完成数量（本班组）:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="completeAmount" style="width:100px;height:30px;"><span class="taskUnit"></span></td>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">作业完成数量（成品入库）:&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="inAmount" style="width:100px;height:30px;"><span class="taskUnit"></span></td></tr>'
                                    );

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
                                    $("table.cccc").append('<tr><td style="height:38px;width:100px; text-align: right;">产品编号:&nbsp;&nbsp;</td>'+
                                        '<td style="width:158px;text-align: left;">'+data[0].cCode+'</td>'+
                                        '<td style="width:100px; text-align: right;">产品名称:&nbsp;&nbsp;</td>'+
                                        '<td style="width:240px;text-align: left;">'+data[0].cName+'</td>'+
                                        '<td style="width:125px; text-align: right;">单位:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;">'+data[0].cUnit+'</td></tr>'+
                                        '<tr><td style="height:38px;width:78px; text-align: right;">规格:&nbsp;&nbsp;</td>'+
                                        '<td style="width:100px;text-align: left;">'+data[0].cSize+'</td>'+
                                        '<td style="width:74px; text-align: right;">入库批次:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input type="text" id="rkpca" style="width:100px;height:30px;" value="'+data[0].pici+'" ></td>'+
                                        '<td style="width:125px; text-align: right;">入库数量:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><input style="width:100px;height:30px;" type="text" id="rksla" onkeyup="value=value.replace(/[^\\d.]/g,\'\')"></td></tr>'+
                                        '<tr><td style="height:38 px;width:78px; text-align: right;">' + remarkText+ ':&nbsp;&nbsp;</td>'+
                                        '<td style="width:258px;text-align: left;"><input type="text" id="rkbz" style="width:100px;height:30px;"></td>'+
                                        '<td style="width:74px; text-align: right;">质检标准:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjbz" style="width:120px;height:30px;"><option value="0">GB2828-1标准</option><option value="1">自定义标准</option></select></td>'+
                                        '<td style="width:125px; text-align: right;">质检等级:&nbsp;&nbsp;</td>'+
                                        '<td style="width:120px;text-align: left;"><select id="zjdj" style="width:100px;height:30px;"><option>I</option><option selected ="selected">II</option><option>III</option><option>S1</option><option>S2</option><option>S3</option><option>S4</option></select></tr>'+
                                        '</tr>');
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


    function tiJiao(m){
        $("#selectA").empty();
        $.ajax({
            url:"getNumber/getRolse.do?machineType="+8,
            dataType: "json",
            async: false,
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
            var cBillCode=$("#cBillCode").val();
            var cBatchCode=$("#rkpca").val();
            var nAmount =$("#rksla").val();
            var roseid =$("#userId").val();
            var mainBz=$("#bbz").val();
            var detailBz=$("#rkbz").val();

            var zjbz =$("#zjbz option:selected").text();
            var zjdj =$("#zjdj").val();

            var completeAmount = $("#completeAmount").val();
            var inAmount = $("#inAmount").val();

            var inTaskAmount = nAmount * ratio_D / ratio_N;

            var tempInAmount = $("#inAmount").val();
            if("" == detailBz.trim() && 2 == remarkTag){
                var info = {};
                info.type = 0;
                info.info = "卷号不能为空";
                info.inAmount = inTaskAmount;
                window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
                return;
            }
            if(nAmount>0){
                flagi=0;
                $.ajax({
                    url:encodeURI(encodeURI("tempInsertSendList.list?zjbz="+zjbz+"&zjdj="+zjdj+"&id="+id+"&roseid="+roseid+"&cBillCode="+cBillCode+"&cBatchCode="+cBatchCode+"&nAmount="+nAmount+"&mainBz="+mainBz+"&detailBz="+detailBz+"&status="+i + "&completeAmount=" + completeAmount + "&inAmount=" + inAmount)),
                    //dataType: "json",
                    data:parms,
                    async: false,
                    success:function(data){
                        //$('.cd-popup2').removeClass('is-visible2');
                        flagi=1;
                        //alert(data);
                        var info = {};
                        info.type = 1;
                        info.info = data;
                        info.inAmount = tempInAmount;
                        window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));
                    }
                })
            }else{

                var info = {};
                info.type = 0;
                info.info = "入库数量必须大于0";
                window.slifeJsAgent.invoke_native("getResult","params",unicodeHelper.enUnicode(JSON.stringify(info)));

            }
        }

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

    var unicodeHelper = (function () {
        function UnicodeHelper() {
        }

        UnicodeHelper.prototype.enUnicode = function (str) {
            var rs = "";
            for (var i = 0; i < str.length; i++) {
                //补零。不补有些库无法正常解析。保持4位
                //slice负数参数，与其方向相反。start=-1为最后一个元素，end=-1为第一个元素。start必须
                rs += "\\u" + ("0000" + str.charCodeAt(i).toString(16)).slice(-4);
            }
            return rs;
        }
        UnicodeHelper.prototype.deUnicode = function (str) {
            var strArray = str.split("\\u");
            //防止\u开头或结尾，导致解析空串产生的“□”的结果
            if (str.startsWith("\\u")) {
                strArray = strArray.slice(1, strArray.length);
            }
            if (str.endsWith("\\u")) {
                strArray = strArray.slice(0, strArray.length - 1);
            }

            var rs = "";
            for (var i = 0; i < strArray.length; i++) {
                rs += String.fromCharCode(parseInt(strArray[i], 16));
            }
            return rs;
        }
        UnicodeHelper.prototype.deUnicode2 = function (str) {
            str = str.replace(/\\/gi, "%");
            //过时的语法
            return unescape(str);

        }

        return new UnicodeHelper();
    }());
</script>
</body>

</html>

