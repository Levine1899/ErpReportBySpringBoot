<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String rolesid = request.getParameter("rolesid");
    String cbanci = request.getParameter("banci");
    String userName=request.getParameter("username");
    cbanci = java.net.URLDecoder.decode(cbanci, "UTF-8");

%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>首检巡检详细</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css"/>
    <link rel="stylesheet" type="text/css" href="Css/style1.css"/>
    <link rel="stylesheet" href="Css/signature-pad.css">
    <link rel="resource" type="application/l10n" href="web/locale/locale.properties"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
    <script type="text/javascript" src="js/touch.js"></script>
    <script src="js/bootstrap-table.js"></script>
    <script src="js/myJs.js"></script>
</head>
<style type="text/css">
    * {
        padding: 0;
        margin: 0;
        list-style: none;
    }

    body {
        font-size: 20px;
        font-size: 20px;
        padding-bottom: 40px;
        background-color: #f9fcff;
        font-family: "微软雅黑";
        color: #666;
    }
    @media (min-width: 768px){
        .modal-dialog {
        width: 981px;

    }
    }

    .top1 {
        position: fixed;
        top: 0px;
        width: 100%;
        height: 20px;

        text-align: center;
        font-size: 17px;
        font-height: 20px;
        font-family: 楷体;
        color: #FFFFFF;
        background-color: #8888A1;

    }

    .divStyle {
        position: static;
        float: left;
        height: 300px;
        width: 1000px;
        border-style: solid;
        border-width: thin;
        border-color: White;
    }

    /*.divStyleTime {*/
    /*    position: static;*/
    /*    float: right;*/
    /*    height: 300px;*/
    /*    width: 1000px;*/
    /*    border-style: solid;*/
    /*    border-width: thin;*/
    /*    border-color: White;*/
    /*}*/

    .divStyleTime {
        position: absolute;
        z-index:999;
        height: 1200px;
        width: 750px;
    }

    .top3 {
        position: absolute;
        top: 101px;
        width: 100%;

    }

    .top2 {
        position: absolute;
        top: 0px;
        width: 100%;
        height: 77px;
        /*//text-align: center;*/
        text-align: left;
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

    .table {
        font-family: verdana, arial, sans-serif;
        color: #333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }

    .aaaa {
        font-family: verdana, arial, sans-serif;
        color: #333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
        background-color: #e8eff7;
    }

    .aaaa td {
        border-width: 1px;
        padding: 3px;
        border-style: solid;
        border-color: #ddd;
        text-align: center;
        position: relative;
        line-height: 20px;
        font-size: 14px;
        vertical-align: middle;
    }

    .aaaa tbody input {
        width: 94%;
        border: 0px solid #e5e5e5;
        box-shadow: inset 0 0px 0px rgba(0, 0, 0, 0.0);
    }

    .aaaa tbody tr:nth-of-type(2n+1) {
        background-color: #e8eff7;
    }

    .sjdTable {
        font-family: verdana, arial, sans-serif;
        color: #333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }

    .sjdTable td {
        border-width: 1px;
        padding: 3px;
        border-style: solid;
        border-color: #ddd;
        text-align: center;
        /*  float: left; */
        position: relative;
        line-height: 20px;
        font-size: 16px;
        vertical-align: middle;
    }

    .table td {
        border-width: 1px;
        padding: 3px;
        border-style: solid;
        border-color: #ddd;
        font-family: 微软雅黑;
        text-align: center;
        position: relative;
        line-height: 14px;
        font-size: 14px;
        vertical-align: middle;
    }

    #sjdxx {
        width: 100%;
        height: 26px;
        font-size: 22px;
        text-align: left;
        color: #333;
        line-height: 26px;
        overflow: hidden;
        margin: 10px 0 4px 0;
    }

    .sjzy {

        line-height: 30px;
        height: 30px;
        margin-top: 25px;
        text-align: center;
        font-size: 24px;
        font-weight: bold;
    }

    .title2 {
        position: relative;
        top: 1%;
        height: 40px;
        width: 100%;
        color: #3C3D3F;
        font-size: 20px;
        font-weight: bold;
        text-align: left;
    }

    .sjxxxx {
        position: relative;
        width: 100%;
        height: 26px;
        color: #333;
        font-size: 22px;
        text-align: left;
        overflow: hidden;
        margin: 20px 0 10px 0;
        line-height: 26px;

    }

    .sjdxxmx {
        background-color: #fff;
        position: relative;
        width: 98%;
        left: 1%;
        top: 1%;
    }

    .sjxxxxmx {
        position: relative;
        width: 98%;
        left: 1%;
    }

    .jieguo, .beizhu {
        overflow: hidden;
        position: relative;
        width: 100%;
        line-height: 26px;
        color: #3C3D3F;
        text-align: left;
        margin: 15px 0 10px 0;
        font-size: 22px;
    }

    .photograph {
        overflow: hidden;
        position: relative;
        width: 100%;
        line-height: 36px;
        color: #3C3D3F;
        text-align: left;
        margin: 15px 0 10px 0;
        font-size: 22px;
    }

    .huiqian {
        height: 36px;
        margin-bottom: 2px;
        height: 240px;
    }

    .jieguoxx {
        margin: 0 auto;
        width: 98%;
        border: 1px solid #e5e5e5;
        background-color: #fff;
        height: 50px;
        text-align: left;
        font-size: 16px;

    }

    .jieguoxx_ul {
        overflow: hidden;
        padding-top: 13px;
    }

    .jieguoxx_ul li {
        height: 24px;
        float: left;
        line-height: 24px;
        padding-left: 30px;
        margin-right: 50px;
    }

    .jieguoxx_ul li:nth-of-type(1) {
        background: url(img/dui.png) no-repeat left bottom;
    }

    .jieguoxx_ul li:nth-of-type(1).current {
        background: url(img/dui.png) no-repeat left top;
    }

    .jieguoxx_ul li:nth-of-type(2) {
        background: url(img/cuo.png) no-repeat left bottom;
    }

    .jieguoxx_ul li:nth-of-type(2).current {
        background: url(img/cuo.png) no-repeat left top;
    }

    .jieguoxx_ul li:nth-of-type(3) {
        background: url(img/rang.png) no-repeat left bottom;
    }

    .jieguoxx_ul li:nth-of-type(3).current {
        background: url(img/rang.png) no-repeat left top;
    }

    .jieguoxx_ul li:nth-of-type(4) {
        background: url(img/xun.png) no-repeat left bottom;
    }

    .jieguoxx_ul li:nth-of-type(4).current {
        background: url(img/xun.png) no-repeat left top;
    }

    input {
        font-size: 18px;
        border-radius: 0;
        text-align: center;
    }

    #signature-pad {
        visibility: hidden;
    }

    #showimg1, #showimg2, #showimg3 {
        width: 230px;
        height: 88px;
        border: 0 none;
        background-color: pink;
        position: absolute;
        left: 10%;
        top: 5px;
        background: url(img/qianming3.png) no-repeat center center;
        padding: 8px 10px;
        margin-top: 45px;

    }

    #showimg2.showimg_middle {
        left: 40%;
    }

    #showimg3.showimg_last {
        left: 70%;
    }

    #ban {
        position: absolute;
        left: 28%;
        top: 2px;
        border: 0 none;
    }

    .table tbody {
        background-color: #fff;
    }

    .table tbody tr:nth-of-type(2n+1) {
        background-color: #e8eff7;
    }

    .campare {
        width: 90%;
        border: 1px solid #000;
    }

    #cjzg {
        position: relative;
        left: 16%;
        top: 13%;
        display: block;
        width: 100px;
        height: 40px;
    }

    #zjsp {
        position: relative;
        left: 47%;
        top: -11%;
        display: block;
        width: 100px;
        height: 40px;
    }
    #zjsp1 {
        position: relative;
        left: 45%;
        top: 10%;
        display: block;
        width: 100px;
        height: 40px;
    }

    #jzsp {
        position: relative;
        left: 77%;
        top: -32%;
        display: block;
        width: 100px;
        height: 40px;
    }
    #contine{
        /*position:relative;*/
        width: 100%;
        top:8px;
        height:100%;
        /*overflow:auto;*/
    }
    .top3-form{
        position:relative;
        width: 100%;
        height: 52px;
        top: 2%;
        font-size:16px;
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

        <input type="hidden" id="machineJobId" value="12">
        <input type="hidden" id="id_machine">
        <input type="hidden" id="userId" value=<%=rolesid%>>
        <input type="hidden" id="base64" value="1">
        <input type="hidden" id="base63" value="1">
        <input type="hidden" id="base62" value="1">
        <input type="hidden" id="base61" value="1">
        <input type="hidden" id="sORx" value="">
        <input type="hidden" id="resulta" value="0">
        <input type="hidden" id="basePictures" value="">
        <input type="hidden" id="username" value=<%=userName %>>
    </div>


    <div class="top3">

        <div class="title2"><img src="img/grid.png"
                                 style="width: 20px;height: 20px;position: relative;left: 1%;top: -4%;"/> &nbsp;&nbsp;&nbsp;待检任务列表
        </div>

        <div id="contine">
            <div class="top3-form">
                    <span style="width: 20px;height: 20px;position: relative;left: 1%;top: -4%;">机台号：</span><input type="text" id="cJzmc" name="cJzmc" style="top:-4px;left:10px;height:28px;margin-left:15px;width:10%">&nbsp;&nbsp;&nbsp;

<%--                    <span>生产订单：</span>--%>
                <input type="hidden" id="pcode" name="pcode" style="text-align:left;top:-4px;left:10px;height:28px;">&nbsp;&nbsp;&nbsp;
                    <span>作业名称：</span><input type="text" id="cJobName" name="cJobName" style="text-align:left;top:-4px;left:10px;height:28px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button onclick="fuzzyQuery()"  class="btn btn-primary" style="margin-left:430px;">
                        查询
                    </button>
            </div>
        </div>
        <div id="xjTime" class="divStyleTime" style=" margin-top:130px;margin-left:20px;"></div>
        <table  class="table" style="width:98%;position:relative;left: 1%;">
<%--           // onclick="ontableS()"--%>
            <tr   style="background-color: #3E6390; color: #FFFFFF;">
                <td style="height:34px;">序号</td>
                <td style="height:30px;">机台号</td>
                <td style="height:30px;">生产订单</td>
                <td style="height:30px;">作业单号</td>
                <td style="height:30px;">作业名称</td>
                <td style="height:30px;">工序</td>
                <td style="height:30px;">作业数量</td>
                <td style="height:30px;">已完成数量</td>
                <td style="height:30px;">作业状态</td>
                <td style="height:30px;">机台开机时间</td>
                <td style="height:30px;">首检结果</td>
                <td style="height:30px;">首检时间</td>
                <td style="height:30px;">上次巡检结果</td>
                <td style="height:30px;">上次巡检时间</td>
                <td style="height:30px;">下次巡检时间</td>
                <td style="height:30px;">首检</td>
                <td style="height:30px;">巡检</td>
                <td style="height:30px;width:35px;">开制反馈单</td>
                <td style="height:30px;width:35px;">提交实验室</td>

            </tr>
        </table>

        <div class="cd-popup2">
            <div class="cd-popup-container2" style="overflow:auto">
                <div class="sjzy"></div>
                <div id="sjdxx"></div>
                <div class="sjdxxmx">
                    <table class="sjdTable" STYLE=" width: 100%;">

                    </table>
                </div>
                <div class="sjxxxx"></div>
                <div class="sjxxxxmx">
                    <table id="bb" class="aaaa" STYLE="width:100%;">

                    </table>
                </div>
                <div class="jieguo"><img src="img/Flag.png"
                                         style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;最终结果
                </div>
                <div class="jieguoxx">
                    <ul class="jieguoxx_ul">
                        <li class="current">合格</li>
                        <li>不合格</li>
                        <li>让步接收</li>
                        <li>未检验</li>
                    </ul>
                </div>

                <div class="beizhu"><img src="img/beizhu.png"
                                         style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;备注
                </div>
                <div class="beizhuxx">
                    <textarea id="demotext" style="resize:none;width:99%;overflow-x:hidden"> </textarea>
                </div>


                <div id="zj" style="display: none" class="photograph"><img src="img/beizhu.png"
                                                                           style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;质检拍照
                </div>
                <div id="pz" style="display: none" class="beizhuxx">
<%--                                      <input style="height:40px;width:117px;margin-left:600px;margin-bottom:15px;background-color: #11C2EE;" type="button" value="预览" onclick="preView()"/>--%>

                    <input style="height:40px;width:120px;margin-left:885px;margin-bottom:15px;background-color: #11C2EE;"
                           type="button" value="拍照" onclick="getPhoto()"/>
                </div>

                <div id="showPhoto"></div>

                <div class="jieguo huiqian"><img src="img/pen0.png"
                                                 style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;会签

                </div>
                <div id="signature-pad" class="m-signature-pad">
                    <div class="m-signature-pad--body">
                        <canvas></canvas>
                    </div>
                    <div class="m-signature-pad--footer">
                        <div class="description">会签签名</div>
                        <div class="left">
                            <button type="button" class="button clear" data-action="clear"
                                    style="width:40px;height:40px;">清空
                            </button>
                        </div>
                        <div class="right">
                            <button type="button" onclick="closePad()" style="width:40px;height:40px;">关闭</button>
                            <button type="button" class="button save" data-action="save-png"
                                    style="width:40px;height:40px;">保存
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <input id="banci" type="hidden" value=<%=cbanci%>>
        <input id="workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
        <input id="journalMainId" type="hidden" value="">
        <input id="aaa" type="hidden" value=<%=basePath%>>
    </div>

    <div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">Message</h4>
                </div>
                <div class="modal-body">
                    <p>连接超时，请重新登录</p>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="login();">yes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">&nbsp;no
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
         style="text-align: left;">
        <div class="modal-dialog" role="document">
<%--            <div class="modal-content">--%>
                <div style="height:1350px;width:970px;margin-left:10px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">    &times;</button>
<%--                    <h4 class="modal-title" id="myModalLabel2">单据图片</h4>--%>
<%--                    <h3 id="myModalLabel2">单据图片</h3>--%>
                    <h3 id="myModalLabel2"></h3>
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
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"
                            style="width:35px;height:35px;font-size: 41px;position:relative;right:40px;top:3px;">&times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel2">选择档案</h4>
                </div>
                <div class="modal-body" id="daModal">
                  	<span>暂未上传PDF</a>
                </div>

            </div>
        </div>
    </div>
    <div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">&nbsp;Message</h4>
                </div>
                <div class="modal-body">
                    <p>操作成功</p>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">确定
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    var banci = $("#banci").val();
    //alert(banci);
    var workTime = $("#workTime").val();

    var path = $('#aaa').val();

    //作业单id
    var billid;
    //首检通过判定标志
    var qclevleve;
    //拍照图片
    var pictureStr = "";
    var jsonParamsYt = "";

    function ckBillid() {
        $.ajax({
            url: "getNumber/test.do?id=" + billid + "&type=0",
            dataType: "json",
            async: false,
            success: function (data) {
               // console.log(data);
                $("#imgModal").empty();

                var sUserAgent = navigator.userAgent;
                var bIsAndroid = sUserAgent.toLowerCase().match(/android/i) == "android";
                if (bIsAndroid) {
                    if (data.length == 0) {
                        $("#imgModal").append('暂未生成作业单图片');
                    } else {
                        for (var i = 0; i < data.length; i++) {
                           // $("#imgModal").append('<img id="test' + i + '"  class="test1" width="100" height="100" src="' + data[i].img + '" />');
                            $("#imgModal").append('<img id="test' + i + '"  onmousewheel="return bigimg(this)" class="test1" width="950" height="1300" src="' + data[i].img + '" />');

                        }

                    }
                    $('#myModal3').modal();
                    // $(".test1").click(function () {
                    //     if ($(this).width() > 100) {
                    //         $(this).css("height", 100);
                    //         $(this).css("width", 100);
                    //         $(this).css("zoom", '0');
                    //     } else {
                    //         $(this).css("height", 1000);
                    //         $(this).css("width", 1350);
                    //         $(this).css("zoom", '100%');
                    //     }
                    // })

                } else {

                    if (data.length == 0) {
                        $("#imgModal").append('暂未生成作业单图片');
                    } else {
                        for (var i = 0; i < data.length; i++) {
                           // $("#imgModal").append('<img id="test' + i + '"  onmousewheel="return bigimg(this)" class="test1" width="100" height="100" src="' + data[i].img + '" />');
                            $("#imgModal").append('<img id="test' + i + '"  onmousewheel="return bigimg(this)" class="test1" width="950" height="1300" src="' + data[i].img + '" />');

                        }

                    }
                    $('#myModal3').modal();
                    // $(".test1").click(function () {
                    //     if ($(this).width() > 100) {
                    //         $(this).css("height", 100);
                    //         $(this).css("width", 100);
                    //         $(this).css("zoom", '0');
                    //     } else {
                    //         $(this).css("height", 1300);
                    //         $(this).css("width", 1000);
                    //         $(this).css("zoom", '200%');
                    //     }
                    // })




                }



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

    function goBack() {
        window.location.reload();
    }

    function login() {
        window.open(path + 'html/login.html', "_self");
    }

    function getPhoto() {
        MfsJSBridge.invoke('qcPhotoFun', 'abc', 'windowCallback');
        //window.slifeJsAgent.invoke_native("getResult","params","qcPhotoFun");
    }

    function preView() {
        var jsonParamsSlts = "/images/temporary/1651048211360168-1651048217494.jpeg,/images/temporary/1651048211434102-1651048217554.jpeg!/images/temporary/SLT_1651048211360168-1651048217494.jpeg,/images/temporary/SLT_1651048211434102-1651048217554.jpeg";
        var results = jsonParamsSlts.split("!");
        var jsonParamsSlt = results[1];
        var resultPicture = jsonParamsSlt.split(",");
        var divImg = '<div class="divStyle">';
        for (var i = 0; i < resultPicture.length; i++) {
            divImg += '<img src="' + resultPicture[i] + '" />';
        }
        divImg += '</div>';
        document.getElementById("showPhoto").innerHTML += divImg;

    }


    function jsMethod(jsonParams) {

        var results = jsonParams.split("!");
        var jsonParamsSlt = results[1];
        var resultPicture = jsonParamsSlt.split(",");
        var divImg = '<div class="divStyle">';
        for (var i = 0; i < resultPicture.length; i++) {
            divImg += '<img src="' + resultPicture[i] + '" />';
        }
        divImg += '</div>';
        document.getElementById("showPhoto").innerHTML += divImg;

        if(jsonParamsYt !="" ){
           jsonParamsYt=jsonParamsYt+",";
            jsonParamsYt += results[0];
        }else{
            jsonParamsYt += results[0];
        }
        $("#basePictures").val(jsonParamsYt);
    }


    function getSession() {

        if (banci == "null") {
            $('#myModal2').modal();
            return false;
        } else {
            return true;
        }
    }

    function submitLaboratory(id) {

        var flag = confirm("确定提交实验室?");
        if(flag){
            $.ajax({
                url: "submitLaboratory.list?id=" + id,
                //dataType: "json",
                async: false,
                success: function (data) {
                    $('#myModal1').modal();
                }

            })
        }

    }


    function huiqian(i) {
        $("#base61").val(i);
        $("#signature-pad").css("visibility", "visible");
    }

    function baocunYorN() {

        $("#bcID").val("正在处理...");
        $("#bcID").attr("disabled", "disabled");
        var sORxs = parseInt($("#sORx").val());
        qclevleve = parseInt(qclevleve);
        var base62 = $("#base62").val();
        var base63 = $("#base63").val();
        var base64 = $("#base64").val();
        base62 = parseInt(base62);
        base63 = parseInt(base63);
        base64 = parseInt(base64);
        if (sORxs == 0) {
            if (qclevleve == 0) {
                baocun();
            } else if (qclevleve == 1) {
                if (base63 != 1 && base64 != 1) {
                    baocun();
                } else {
                    alert("请首签");
                }
            } else if (qclevleve == 2) {
                if (base63 != 1 && base64 != 1 && base62 != 1) {
                    baocun();
                } else {
                    alert("请首签");

                }
            }
        } else {

            xjbaocun(base63);
        }


    }

    function baocun() {

        // $("#bcID").text("正在提交...");
        // document.getElementById("duID").setAttribute("disabled", true);//设置不可点击
        // document.getElementById("duID").style.backgroundColor  = '#555555';//设置背景色
        // $('#wrap input[name="payMethod"]:checked ').val();
        var machineJob_id = $("#machineJobId").val();
        var id_machine = $("#id_machine").val();
        var user_id = $("#userId").val();
        var base62 = $("#base62").val();
        var jobStatus = $("#resulta").val();
        var sORx = $("#sORx").val();
        var journalMainId = $("#journalMainId").val();
        var demotext = $("#demotext").val();
        var base63 = $("#base63").val();
        var base64 = $("#base64").val();
        var basePictures = $("#basePictures").val();
        //alert(jobStatus);
        if (jobStatus == undefined) {
            alert("请选择最终结果才可保存");
        } else {

            var parms = {};
            parms["base62"] = base62;
            parms["base63"] = $("#base63").val();
            parms["base64"] = $("#base64").val();
            parms["remarkmain"] = demotext;
            parms["basePictures"] = $("#basePictures").val();
            var resultaa;
            $.ajax({
                url: encodeURI(encodeURI("insertDetection.list?id=" + machineJob_id + "&roleid=" + user_id + "&id_machine=" + id_machine + "&jobStatus=" + jobStatus + "&iDetectionType=" + sORx + "&journalMainId=" + journalMainId)),
                //dataType: "json",
                type: "post",
                data: parms,
                async: false,
                success: function (data) {
                    if (data == '') {
                        resultaa = '保存失败';
                    } else {
                        resultaa = '保存成功';
                        var dd = $("#bb tr").length;
                        for (var i = 1; i < dd; i++) {
                            //var id = $("#bb tr").eq(i).find("td:eq(0)").text();
                            var v = $("#bb tr").eq(i).find("td:eq(7)").text();
                            var w = $("#bb tr").eq(i).find("td:eq(2)").text();
                            var x = $("#bb tr").eq(i).find("td:eq(13)").children().val();
                            var y = $("#bb tr").eq(i).find("td:eq(14)").children().val();
                            var z = $("#bb tr").eq(i).find("td:eq(15)").children().val();
                            var CheckRule = $("#bb tr").eq(i).find("td:eq(9)").text();
                            var unit = $("#bb tr").eq(i).find("td:eq(12)").text();
                            var CheckType = $("#bb tr").eq(i).find("td:eq(10)").text();
                            var DataType = $("#bb tr").eq(i).find("td:eq(6)").text();
                            var precision = $("#bb tr").eq(i).find("td:eq(5)").text();
                            var propertys = $("#bb tr").eq(i).find("td:eq(8)").text();


                            $.ajax({
                                url: encodeURI(encodeURI("updateDetail.list?id=" + data + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z.replace("+", "%2B") + "&proName=" + v + "&standValue=" + w + "&CheckRule=" + CheckRule
                                    + "&unit=" + unit
                                    + "&checktype=" + CheckType
                                    + "&datatype=" + DataType
                                    + "&precision=" + precision
                                    + "&propertys=" + propertys.replace("+", "%2B"))),
                            // $.ajax({
                            //     url: encodeURI(encodeURI("updateDetail.list?id=" + data + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z.replace("+","%2b") + "&proName=" + v + "&standValue=" + w + "&CheckRule=" + CheckRule
                            //         + "&unit=" + unit
                            //         + "&checktype=" + CheckType
                            //         + "&datatype=" + DataType
                            //         + "&precision=" + precision
                            //         + "&propertys=" + (propertys.replace("%","%25")).replace("+","%2b"))),

                                async: false,
                                success: function (data) {
                                    resultaa = data;

                                }
                            })
                            if ('保存失败' == resultaa) {
                                break;
                            }
                        }

                    }

                    alert(resultaa);
                    $('.cd-popup2').removeClass('is-visible2');
                    $("table.sjdTable").empty();
                    $("table.aaaa").empty();
                    var pos = "<%=request.getLocalAddr()%>";
                    $.ajax({
                        url: '<%=basePath%>/orderDialog/switchGet.do',
                        type:"POST",
                        async: false,
                        data: {},
                        dataType: "json",
                        success:function(data){
                            var remarkTag = parseInt(data.remarkTag);
                            if(0==remarkTag){

                            }else if(1==remarkTag){
                                $.ajax({
                                    url:"http://"+pos+":8080/printerp/produce/TscWebInf/invokeFunc?params={\"Module\":\"scScanrfidandprintbarcode\",\"Func\":\"createTrackBarcode2\",\"Params\":{\"JobID\":"+machineJob_id+",\"UserID\":"+user_id+",\"Options\":[{\"Value\":\"coverTrackInfo\"}]}}",
                                    //dataType: "json",
                                    type:"post",
                                    data:parms,
                                    async: false,
                                    success:function(data){
                                        var obj = eval("(" + data + ")");

                                        if(obj.status==1){
                                            //alert('生成产品追溯信息成功');
                                        }else{
                                            alert('生成产品追溯信息失败');
                                        };
                                    }
                                })
                            }else if(2==remarkTag){
                                $.ajax({
                                    url:"http://"+pos+":8080/printerp/produce/TscWebInf/invokeFunc?params={\"Module\":\"scScanrfidandprintbarcode\",\"Func\":\"createTrackBarcode3\",\"Params\":{\"JobID\":"+machineJob_id+",\"UserID\":"+user_id+",\"Options\":[{\"Value\":\"coverTrackInfo\"}]}}",
                                    //dataType: "json",
                                    type:"post",
                                    data:parms,
                                    async: false,
                                    success:function(data){
                                        var obj = eval("(" + data + ")");
                                        if(obj.status==1){
                                            //alert('生成产品追溯信息成功');
                                        }else{
                                            alert('生成产品追溯信息失败');
                                        };
                                    }
                                })
                            };
                        }
                    })


                    window.location.reload();
                }
            })
        }
    }

    function xjbaocun(base63) {

        $.ajax({
            url: "getNumber/getXunjianback.do?",
            async: false,
            success: function (data) {
                if (data=="1") {
                    if (base63 != 1) {
                        baocun();
                    } else {
                        alert("请质检签字");
                        $("#bcID").val("保存");
                        $("#bcID").attr("disabled", false);
                    }
                } else {
                    baocun();
                }
            }
        })

    }
    function firstList(userid) {
        //机台号
        var machNumber = $("#cJzmc").val();
        //生产订单
        var productOrder = $("#pcode").val();
        //作业名称
        var cJobName = $("#cJobName").val();

        var userid = $("#userId").val();

        $.ajax({
            // url: encodeURI(encodeURI("detection.list?userid=" + userid + "&banci=" + banci + "&workTime=" + workTime)),
            url: encodeURI(encodeURI("detection.list?userid=" + userid + "&banci=" + banci + "&workTime=" + workTime+ "&machNumber=" + machNumber+ "&productOrder=" + productOrder+ "&cJobName=" + cJobName)),

            dataType: "json",
            async: false,
            success: function (data) {
                var detectionJson = data;//eval(data);
                console.log(data);
                $("table.table  tr:not(:first)").empty("");
                document.getElementById('cJzmc').value = "";
                document.getElementById('pcode').value = "";
                document.getElementById('cJobName').value = "";
                $("#journalMainId").val(data[0].journalMainId);

                var i;
                for (i = 0; i < data.length; i++) {
                    //console.log(aa[a]);
                    //console.log(aa[a].sORx);
                    //var aaa=detectionJson[a].sORx;
                    //05.08改 自检后不能首检
                    //if (detectionJson[i].sORx == "1") {
                    if (detectionJson[i].sORx == "0") {
                        $("table.table").append('<tr><td style="height:34px;display:none;">' + detectionJson[i].id +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                            '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                            '<td style="height:30px;">正在进行</td>' +
                            '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                            '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                            // '<td style="height:30px;"><button  style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0" ></button></td>' +
                            // '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +
                             '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian.png);width: 48px;height: 28px;" value="0" ></button></td>' +

                            //11.10改不首检也可以巡检
                            //'<td style="height:30px;"><button  style="background:url(img/xunjian2.png);width: 48px;height: 28px;" value="1" ></button></td>' +
                            '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +


                            '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                            '<td style="height:30px;width:35px;"><img style="" src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')"/></td></tr>'
                        );
                    } else {
                        if (detectionJson[i].zhuangtai == "首检合格") {
                            $("table.table").append('<tr><td style="height:34px;display: none;">' + detectionJson[i].id +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                                '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                                '<td style="height:30px;">正在进行</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                                '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                                // '<td style="height:30px;"><button  style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                // '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +

                                '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt=""  onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                                '<td style="height:30px;width:35px;"><img style=""  src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')" /></td></tr>'
                            );

                        }else if(detectionJson[i].zhuangtai == "未首检") {
                            $("table.table").append('<tr><td style="height:34px;display:none;">' + detectionJson[i].id +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                                '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                                '<td style="height:30px;">正在进行</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                                '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                                // '<td style="height:30px;"><button  style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0" ></button></td>' +
                                // '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian.png);width: 48px;height: 28px;" value="0" ></button></td>' +
                                //11.10改不首检也可以巡检
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +
                                //'<td style="height:30px;"><button  style="background:url(img/xunjian2.png);width: 48px;height: 28px;" value="1" ></button></td>' +

                                '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                                '<td style="height:30px;width:35px;"><img style="" src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')"/></td></tr>'
                            );
                        }else{
                            $("table.table").append('<tr><td style="height:34px;display: none;">' + detectionJson[i].id +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                                '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                                '<td style="height:30px;">正在进行</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                                '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +
                                '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt=""  onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                                '<td style="height:30px;width:35px;"><img style=""  src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')" /></td></tr>'
                            );

                        }


                    }

                }
            }
        })
    }

    function showDetail(id, type) {
        //alert(1);
        $.ajax({
            url: "showDetectionDetail.list?id=" + id + "&type=" + type,
            dataType: "json",
            async: false,
            success: function (data) {
                //console.log(data);

                $("table.aaaa").empty();
                $("table.aaaa").append(
                    '<tr style="background-color: #3E6390; color: #FFFFFF;">' +
                    '<td style="height:30px;">序号</td>' +
                    '<td style="height:30px;">检验项目</td>' +
                    '<td style="height:30px;">检验说明</td>' +
                    '<td style="height:30px;">检验标准</td>' +
                    '<td style="height:30px;">检测属性</td>' +
                    '<td style="height:30px;">标准值</td>' +
                    '<td style="height:30px;">标准单位</td>' +
                    '<td style="height:30px;">检验值</td>' +
                    '<td style="height:30px;">结果</td>' +
                    '<td style="height:30px;">备注</td>' +
                    '<td style="height:30px;">缺陷等级</td></tr>');
                var dd = data;
                var i;
                for (i = 0; i < dd.length; i++) {
                    var jieguoa = dd[i].jieguo;
                    if (jieguoa == '0') {
                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0" selected ="selected">合格</option><option value="1">不合格</option></select>';
                    } else if (jieguoa == '1') {
                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
                    } else if (jieguoa == '-1' || jieguoa == '') {
                        var jieguozhi = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected">未判定</option><option value="0">合格</option><option value="1" >不合格</option></select>';
                    }

                    if (dd[i].editorType == 'ComboBox') {
                        $("table.aaaa").append(
                            '<tr style="background-color: #ffffff;">' +
                            '<td style="height:30px;">' + dd[i].tip + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                            '<td style="height:30px; display:none;">' + dd[i].Precision + '</td>' +
                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].caption + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].enuma + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].cCheckRule + '</td>' +
                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                            '<td style="height:30px;">' + dd[i].biaozhunzhi + '' + '</td>' +
                            '<td style="height:30px;">' + dd[i].unit + '</td>' +
                            '<td style="height:30px;"><select id="JYid' + i + '" class="check" style="text-align: center;width:100%;height:99%;border:0px">' + dd[i].enumString + '</select></td>' +
                            '<td style="height:30px;">' + jieguozhi + '</td>' +
                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;">' + '</td>' +
                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].cCheckRule + '</td>');

                             document.getElementById("JYid"+i).options[1].selected = true;

                    } else {

                        var shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;">';

                        if ((dd[i].editorType == "SpinEdit") || (dd[i].editorType == "CurrencyEdit")) {
                            shijizhi = '<input class="campare" type="text" value="' + dd[i].shiji + '" style="border: none;width: 100%; height: 96%;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';
                        }
                        $("table.aaaa").append(
                            '<tr style="background-color: #ffffff;">' +
                            '<td style="height:30px;">' + dd[i].tip + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].operator + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].defaultValue + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].minValue + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].maxValue + '</td>' +
                            '<td style="height:30px; display:none;">' + dd[i].Precision + '</td>' +
                            '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].caption + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].enumString + '</td>' +
                            '<td style="height:30px; max-width:400px;">' + dd[i].cCheckRule + '</td>' +
                            '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                            '<td style="height:30px;">' + dd[i].biaozhunzhi + '</td>' +
                            '<td style="height:30px;">' + dd[i].unit + '</td>' +
                            '<td style="height:30px;">' + shijizhi + '</td>' +
                            '<td style="height:30px;min-width:63px;">' + jieguozhi + '</td>' +
                            '<td style="height:30px;">' + '<input type="text"  value="' + dd[i].remake + '"style="border: none;width: 100%; height: 96%;">' + '</td>' +
                            '<td style="height:30px;">' + dd[i].DefectLevel + '</td>' +
                            '<td style="height:30px;display:none;">' + dd[i].cCheckRule + '</td>');
                    }
                }

                $(".check").change(function(){
                        var operator = this.parentNode.parentNode.cells[1].innerHTML;
                        var defaultValue = parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
                        if (isNaN(defaultValue)) {
                            defaultValue = this.parentNode.parentNode.cells[2].innerHTML;
                        }
                        var minValue = this.parentNode.parentNode.cells[3].innerHTML;
                        var maxValue = this.parentNode.parentNode.cells[4].innerHTML;
                        var tureValue = parseFloat($(this).parent().find(".campare").eq(0).val());
                        if (isNaN(tureValue)) {
                            tureValue = $(this).parent().find(".campare").context.value
                        }
                        if ("大于" == operator) {
                            if (tureValue > defaultValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
                            }
                        } else if ("小于" == operator) {
                            if (tureValue < defaultValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
                            }
                        } else if ("介于" == operator) {
                            if (minValue <= tureValue && tureValue <= maxValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                            }
                        } else if ("等于" == operator) {
                            if (defaultValue == tureValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                            }
                        } else if ("大于等于" == operator) {
                            if (defaultValue < tureValue || tureValue == defaultValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                            }
                        } else if ("小于等于" == operator) {
                            if (defaultValue > tureValue || tureValue == defaultValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                            }

                        } else if ("不等于" == operator) {
                            if (tureValue != defaultValue) {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                            } else {
                                this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                            }

                        }
                    });
                $(".campare").keyup(function () {
                    var operator = this.parentNode.parentNode.cells[1].innerHTML;
                    var defaultValue = parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
                    var minValue = this.parentNode.parentNode.cells[3].innerHTML;
                    var maxValue = this.parentNode.parentNode.cells[4].innerHTML;
                    var tureValue = parseFloat($(this).parent().find(".campare").eq(0).val());
                    if ("大于" == operator) {
                        if (tureValue > defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("小于" == operator) {
                        if (tureValue < defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
                        }
                    } else if ("介于" == operator) {
                        if (minValue <= tureValue && tureValue <= maxValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("等于" == operator) {
                        if (defaultValue == tureValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("大于等于" == operator) {
                        if (defaultValue < tureValue || tureValue == defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("小于等于" == operator) {
                        if (defaultValue > tureValue || tureValue == defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                        }

                    } else if ("不等于" == operator) {
                        if (tureValue != defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
                        }

                    }
                });
            }
        })
    }


    //type 首检单0 巡检单1
    function showDetectionM(jobId, machineId, type) {
        $("#machineJobId").val(jobId);
        $("#id_machine").val(machineId);
        var a = 1;
        var sjdh;
        var bzname="";
        if (type == 0) {
            sjdh = '首检单号';
            $(".sjzy").html('首检作业');
            $("#sjdxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top:3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;首检单信息');
            $(".sjxxxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;首检详细信息');
            $(".huiqian").html('<img src="img/pen0.png" style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;' +
                '会签' +
                '<input type="button" value="查看PDF" class="lastLine_da1" onclick="daPDF(0)">' +
                '<input type="button"  value="查看作业单" class="lastLine_ck1" onclick="ckBillid()">' +
                '<input type="button" onclick="baocunYorN()" value="保存" class="lastLine_bc1" id="bcID" >' +
                '<input type="button"  value="取消" class="lastLine_qx1">' +
                '<ul class="lastLine">' +
                '<img id="showimg1" onclick="huiqian(0)" /> <span id="cjzg">车间主管</span>' +
                '<img id="showimg2" onclick="huiqian(1)" class="showimg_middle"/><span id="zjsp">质检</span>' +
                '<img id="showimg3" onclick="huiqian(2)" class="showimg_last"/><span id="jzsp">机长</span>');

        } else {

            $.ajax({
                url: "getNumber/getXunjianback.do?",
                async: false,
                success: function (data) {
                    if (data=="1") {
                        sjdh = '巡检单号';
                        $(".sjzy").html('巡检作业');
                        $("#sjdxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top:3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检单信息');
                        $(".sjxxxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检详细信息');
                        $(".huiqian").html('<input type="button" value="查看PDF" class="lastLine_da1" onclick="daPDF(0)"><input type="button"  value="查看作业单" onclick="ckBillid()" class="lastLine_ck1"><input type="button" onclick="baocunYorN()" value="保存" class="lastLine_bc1" id="bcID" >' +
                            '<input type="button"  value="取消" class="lastLine_qx1">'+
                            '<ul class="lastLine">' +
                            '<img id="showimg2" onclick="huiqian(1)" class="showimg_middle"/><span id="zjsp1">质检签字</span>');
                    } else {

                        sjdh = '巡检单号';
                        $(".sjzy").html('巡检作业');
                        $("#sjdxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top:3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检单信息');
                        $(".sjxxxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检详细信息');
                        $(".huiqian").html('<input type="button" value="查看PDF" class="lastLine_da1" onclick="daPDF(0)"><input type="button"  value="查看作业单" onclick="ckBillid()" class="lastLine_ck1"><input type="button" onclick="baocunYorN()" value="保存" class="lastLine_bc1" id="bcID" >' +
                            '<input type="button"  value="取消" class="lastLine_qx1">');
                      }
                }
            })

            // sjdh = '巡检单号';
            // $(".sjzy").html('巡检作业');
            // $("#sjdxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top:3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检单信息');
            // $(".sjxxxx").html('<img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;巡检详细信息');
            // $(".huiqian").html('<input type="button" value="查看PDF" class="lastLine_da1" onclick="daPDF(0)"><input type="button"  value="查看作业单" onclick="ckBillid()" class="lastLine_ck1"><input type="button" onclick="baocunYorN()" value="保存" class="lastLine_bc1" id="bcID" >' +
            //     '<input type="button"  value="取消" class="lastLine_qx1">'+
            //     '<ul class="lastLine">' +
            //     '<img id="showimg2" onclick="huiqian(1)" class="showimg_middle"/><span id="zjsp1">质检签字</span>');
        }
        $('.lastLine_qx1').on('click', function () {
            $('.cd-popup2').removeClass('is-visible2');
            $("table.sjdTable").empty();
            $("table.aaaa").empty();
            $("#showPhoto").empty();

        });
        $.ajax({
            url: "showDetectionMessage.list?id=" + jobId + "&id_machine=" + machineId + "&type=" + type+ "&bzname=" + bzname,
            dataType: "json",
            async: false,
            success: function (data) {

                if (data.jianceNum == null) {
                    a = 1;
                } else {
                    qclevleve = data.qclevleve;
                    $("table.sjdTable").empty();
                    $("table.sjdTable").append('<tr style="background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">' + sjdh + '</td>' +
                        '<td style="height:30px;">生产订单</td>' +
                        '<td style="height:30px;">作业名称</td>' +
                        '<td style="height:30px;">机台</td>' +
                        '<td style="height:30px;">工序</td>' +
                        '<td style="height:30px;">作业数量</td>' +
                        '<td style="height:30px;">已完成数量</td>' +
                        '<td style="height:30px;">作业状态</td>' +
                        '<td style="height:30px;">首检人</td>' +
                        '<td style="height:30px;">机台开始时间</td>'
                    );
                    $("table.sjdTable").append('<tr><td style="height:30px;">' + data.jianceNum + '</td>' +
                        '<td style="height:30px;">' + data.pbill_code + '</td>' +
                        '<td style="height:30px;">' + data.jobName + '</td>' +
                        '<td style="height:30px;">' + data.jtName + '</td>' +
                        '<td style="height:30px;">' + data.tech_name + '</td>' +
                        '<td style="height:30px;">' + data.num + '</td>' +
                        '<td style="height:30px;">' + data.doneNum + '</td>' +
                        '<td style="height:30px;">' + data.status + '</td>' +
                        '<td style="height:30px;">' + data.name + '</td>' +
                        '<td style="height:30px;">' + data.beginTime + '</td>'
                    );
                    a = 0;
                }
            }
        })
        return a;
    }


    function fuzzyQuery() {

        //机台号
        var machNumber = $("#cJzmc").val();
        //生产订单
        var productOrder = $("#pcode").val();
        //作业名称
        var cJobName = $("#cJobName").val();

        var userid = $("#userId").val();

        $.ajax({
            url: encodeURI(encodeURI("detection.list?userid=" + userid + "&banci=" + banci + "&workTime=" + workTime+ "&machNumber=" + machNumber+ "&productOrder=" + productOrder+ "&cJobName=" + cJobName)),

            dataType: "json",
            async: false,
            success: function (data) {
                var detectionJson = data;//eval(data);
                console.log(data);
                $("table.table  tr:not(:first)").empty("");
                document.getElementById('cJzmc').value = "";
                document.getElementById('pcode').value = "";
                document.getElementById('cJobName').value = "";
                $("#journalMainId").val(data[0].journalMainId);

                var i;
                for (i = 0; i < data.length; i++) {
                    //console.log(aa[a]);
                    //console.log(aa[a].sORx);
                    //var aaa=detectionJson[a].sORx;
                    //2020.05.08 改
                    //if (detectionJson[i].sORx == "1") {
                        if (detectionJson[i].sORx == "0") {
                        $("table.table").append('<tr><td style="height:34px;display:none;">' + detectionJson[i].id +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                            '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                            '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                            '<td style="height:30px;">正在进行</td>' +
                            '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                            '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                            '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                            //0508改
                            // '<td style="height:30px;"><button  style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0" ></button></td>' +
                            // '<td style="height:30px;"><button  class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +
                            '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian.png);width: 48px;height: 28px;" value="0" ></button></td>' +

                             '<td style="height:30px;"><button  class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1" ></button></td>' +

                            //'<td style="height:30px;"><button  style="background:url(img/xunjian2.png);width: 48px;height: 28px;" value="1" ></button></td>' +

                            '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt="" onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                            '<td style="height:30px;width:35px;"><img style="" src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')"/></td></tr>'
                        );
                    } else {

                        if (detectionJson[i].zhuangtai == "首检合格") {
                            $("table.table").append('<tr><td style="height:34px;display: none;">' + detectionJson[i].id +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                                '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                                '<td style="height:30px;">正在进行</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                                '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                                // '<td style="height:30px;"><button  style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                // '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian3.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +

                                '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt=""  onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                                '<td style="height:30px;width:35px;"><img style=""  src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')" /></td></tr>'
                            );

                        }else{
                            $("table.table").append('<tr><td style="height:34px;display: none;">' + detectionJson[i].id +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].idMachine + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].sORx + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].tech_id + '</td>' +
                                '</td><td style="height:30px;display: none;">' + detectionJson[i].billId + '</td>' +
                                '</td><td style="height:30px;">' + (i + 1) + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJzmc + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].pbill_code + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].billCode + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].cJobName + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].tech_name + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nStdAmount + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nCompleteAmount + '</td>' +
                                '<td style="height:30px;">正在进行</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFactStart + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].zhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].dFirstTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].xjzhuangtai + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].lastTime + '</td>' +
                                '<td style="height:30px;">' + detectionJson[i].nextTime + '</td>' +
                                '<td style="height:30px;display: none;">' + detectionJson[i].product_code + '</td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/shoujian.png);width: 48px;height: 28px;" value="0"></button></td>' +
                                '<td style="height:30px;"><button class="cd-popup-trigger2" style="background:url(img/xunjian.png);width: 48px;height: 28px;" value="1"></button></td>' +
                                '<td style="height:30px;width:35px;"><img style="" src="img/ecMake.png" alt=""  onclick="getAbnormality(' + detectionJson[i].tech_id + ',' + detectionJson[i].id + ',' + detectionJson[i].idMachine + ')"/></td>' +
                                '<td style="height:30px;width:35px;"><img style=""  src="img/submit.png" alt="" class="dash2" onclick="submitLaboratory(' + detectionJson[i].id + ')" /></td></tr>'
                            );

                        }



                    }

                }
            }
        })

        $('.jieguoxx_ul li').click(function () {
            $(this).addClass('current');
            if ($(this).text() == '合格') {
                $("#resulta").val(0);
            } else if ($(this).text() == '不合格') {
                $("#resulta").val(1);
            } else if ($(this).text() == '让步接收') {
                $("#resulta").val(2);
            } else if ($(this).text() == '未检验') {
                $("#resulta").val(3);
            }
            $(this).siblings().removeClass('current');
        });

        $('.cd-popup-trigger2').on('click', function (event) {
            event.preventDefault();
            var i = this.parentNode.parentNode.cells[0].innerHTML;
            //设备作业的id
            //机台的id
            //单子的类型，首检还是巡检
            //工序的id
            var jobId = this.parentNode.parentNode.cells[0].innerHTML;
            var machineId = this.parentNode.parentNode.cells[1].innerHTML;
            var type = $(this).val();
            var techId = this.parentNode.parentNode.cells[3].innerHTML;
            //查看作业单图片的id
            billid = this.parentNode.parentNode.cells[4].innerHTML;
            $("#sORx").val(type);

            var a = showDetectionM(jobId, machineId, type);
            //console.log(a);
            if (a == 0) {
                showDetail(techId, type);
                console.log(type);
                $('.cd-popup2').addClass('is-visible2');
            } else {
                alert('请先配置首检单号');
            }


        });
        //关闭窗口
        $('.cd-popup2').on('click', function (event) {
            if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2')) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
                $("table.sjdTable").empty();
                $("table.aaaa").empty();
                $("#showPhoto").empty();
            }
        });
        //ESC关闭
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup2').removeClass('is-visible2');
            }
        });

    }


    jQuery(document).ready(function ($) {
        // begin();
        //打开窗口
        $('.jieguoxx_ul li').click(function () {
            $(this).addClass('current');
            if ($(this).text() == '合格') {
                $("#resulta").val(0);
            } else if ($(this).text() == '不合格') {
                $("#resulta").val(1);
            } else if ($(this).text() == '让步接收') {
                $("#resulta").val(2);
            } else if ($(this).text() == '未检验') {
                $("#resulta").val(3);
            }
            $(this).siblings().removeClass('current');
        });
        var iiid = $("#userId").val();
        if (getSession()) {
            firstList(iiid);
        }
        ;
        $('.cd-popup-trigger2').on('click', function (event) {
            event.preventDefault();
            var i = this.parentNode.parentNode.cells[0].innerHTML;
            //设备作业的id
            //机台的id
            //单子的类型，首检还是巡检
            //工序的id
            var jobId = this.parentNode.parentNode.cells[0].innerHTML;
            var machineId = this.parentNode.parentNode.cells[1].innerHTML;
            var type = $(this).val();
            var techId = this.parentNode.parentNode.cells[3].innerHTML;
            //查看作业单图片的id
            billid = this.parentNode.parentNode.cells[4].innerHTML;
            $("#sORx").val(type);

            var a = showDetectionM(jobId, machineId, type);
            //console.log(a);
            if (a == 0) {
                showDetail(techId, type);
                console.log(type);
                $('.cd-popup2').addClass('is-visible2');
            } else {
                alert('请先配置首检单号');
            }


        });
        //关闭窗口
        $('.cd-popup2').on('click', function (event) {
            if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2')) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
                $("table.sjdTable").empty();
                $("table.aaaa").empty();
                $("#showPhoto").empty();
            }
        });
        //ESC关闭
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup2').removeClass('is-visible2');
            }
        });
    })
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);

    function getAbnormality(processesID, jobId, workStationID) {
        $.ajax({
            url: "getNumber/getExceptionfeedback.do?",
            //dataType: "json",
            async: false,
            success: function (data) {
                if (data == 0) {
                    alert("未配置异常反馈单");
                } else {
                    var userId = $("#userId").val();
                    window.open(path + 'getQcAbnormality/getAbnormality.do?jobOrProduct=0&billId=0&userId=' + userId + '&jobId=' + jobId + '&workCenterID=-1&workStationID=' + workStationID + '&ShiftID=2&processesID=' + processesID + '&eFBid=0&source=2&vore=1', "_self");
                }
            }
        })
    }


    $(function () {
        detectOS();
    });

    $('.table').on('dblclick','tr',function () {

        var td = $(this).find("td");
        var techname = td.eq(10).text();//工序
        var productcode = td.eq(20).text();//产品档案编号
        var rolesid = $("#userId").val();
        var name =$("#username").val();

        window.open(encodeURI(encodeURI(path+'/jsp/resume.jsp?rolesid='+rolesid+'&name='+name+'&techname='+techname+'&productcode='+productcode)),"_self");
    })


    setInterval(function () {
        timeContrast()
    }, 20000);

   //下次巡检时间提前三分钟提示
    function timeContrast() {

        $("#xjTime").empty();
        //机台号
        var machNumber = $("#cJzmc").val();
        //生产订单
        var productOrder = $("#pcode").val();
        //作业名称
        var cJobName = $("#cJobName").val();

        var userid = $("#userId").val();

        $.ajax({
            url: encodeURI(encodeURI("detection.list?userid=" + userid + "&banci=" + banci + "&workTime=" + workTime+ "&machNumber=" + machNumber+ "&productOrder=" + productOrder+ "&cJobName=" + cJobName)),
            dataType: "json",
            async: false,
            success: function (data) {
                var detectionJson = data;
                var html = '';
                var noApplicationRecord = document.getElementById('xjTime')
                for (var i = 0; i < data.length; i++) {

                    if (detectionJson[i].nextTime != "") {
                        var time1= detectionJson[i].nextTime;
                        var now = new Date();
                        var year = now.getFullYear();       //年
                        var month = now.getMonth() + 1;     //月
                        var day = now.getDate();            //日
                        var hh = now.getHours();            //时
                        var mm = now.getMinutes();          //分
                        var ss = now.getSeconds();           //秒
                        var clock = year + "-";
                        if(month < 10) clock += "0";clock += month + "-";
                        if(day < 10) clock += "0";clock += day + " ";
                        if(hh < 10) clock += "0";clock += hh + ":";
                        if (mm < 10) clock += '0';clock += mm + ":";
                        if (ss < 10) clock += '0';clock += ss;

                        var time2=clock;
                        //var time2="2019-12-27 12:09:29";
                        var begin1=time1.substr(0,10).split("-");
                        var end1=time2.substr(0,10).split("-");
                        var date1=new Date(begin1[1] + - + begin1[2] + - + begin1[0]);
                        var date2=new Date(end1[1] + - + end1[2] + - + end1[0]);
                        var m=parseInt(Math.abs(date2-date1)/1000/60);
                        var min1=parseInt(time1.substr(11,2))*60+parseInt(time1.substr(14,2));
                        var min2=parseInt(time2.substr(11,2))*60+parseInt(time2.substr(14,2));
                        var n=min2-min1;
                        var minutes=m+n;
                        if(minutes>=-3 && minutes<=-1){
                            html += setDiv(detectionJson[i],i)
                       }

                    }

                }

                noApplicationRecord.innerHTML = html
            }
        })


    }

    function setDiv(item,i){
        var div ="<div id='d" + i + "' style='background: #3E6390; color:white;text-align:center;'><div>" +"机台名称:"+ item.cJzmc+
        "<br>"+"作业名称:"+item.cJobName+
        "<br>"+"巡检时间:"+item.nextTime+
        "</div><div><button class='btn btn-danger' style='text-align:center' onclick=removeElement('d" + i + "')>关闭</button>" +
         '<button class="btn btn-success" style="text-align:center" onclick=onInspection("'+item.id+'","'+ item.idMachine +'","'+ item.tech_id +'","'+ item.billId +'")> 巡检</button></div></div><br>'
        return div
        //style="margin-left:500px;"
    }

    function removeElement(id)
    {
        document.getElementById(id).style.display="none";
    }
    function onInspection(jobId,machineId,techId,billid)
    {
        //设备作业的id
        //机台的id
        //单子的类型，首检还是巡检
        //工序的id
        var jobId = jobId;
        var machineId = machineId;
        var type = "1";
        var techId = techId;
        //查看作业单图片的id
        billid = billid;
        $("#sORx").val(type);
        var a = showDetectionM(jobId, machineId, type);
        if (a == 0) {
            showDetail(techId, type);
            console.log(type);
            $('.cd-popup2').addClass('is-visible2');
        } else {
            alert('请先配置首检单号');
        }

    }

    function detectOS() {
        var sUserAgent = navigator.userAgent;
        var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
        var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
        var bIsAndroid = sUserAgent.toLowerCase().match(/android/i) == "android";
        if (bIsAndroid) {
            document.getElementById("zj").style.display = "";
            document.getElementById("pz").style.display = "";
        } else {
            document.getElementById("zj").style.display = "none";
            document.getElementById("pz").style.display = "none";

        }

    }

</script>

<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

</body>
</html>
