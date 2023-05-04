<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>机台首检</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
    <script src="js/myJs.js"></script>
  </head>
  <style type="text/css">
    *{padding:0;margin:0;list-style:none;}
    body {font-size: 20px;
        font-size: 20px;
        padding-bottom: 40px;
        background-color:#f9fcff;
        font-family:"微软雅黑";
        color:#666;
    }
	#mobaa{
        width:425px;
	}
    .divStyle {
        position: static;
        float: left;
        height: 235px;
        width: 1000px;
        border-style: solid;
        border-width: thin;
        border-color: White;
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
    
    .table td{
        border-width: 1px;
        padding:3px;
        border-style: solid;
        border-color:#ddd;
        font-family: 微软雅黑;
        text-align: center;
        position:relative;
        line-height: 20px;
        font-size:14px;
        vertical-align:middle;
    }
    #sjdxx{
        width: 100%;
        height:26px;
        font-size: 22px;
        text-align: left;
        color: #333;
        line-height: 26px;
		overflow: hidden;
        margin:10px 0 4px 0;
    }
    .sjzy{
        line-height: 30px;
        height:30px;
        margin-top:20px;
        text-align: center;
        font-size: 24px;
        font-weight:bold;
    }
    .sjxxxx{
        position: relative;
        width: 100%;
        height: 26px;
        color: #333;
        font-size: 22px;
        text-align: left;
        overflow: hidden;
        margin:20px 0 10px 0;
        line-height: 26px;
    }
    .sjdxxmx{
        background-color: #fff;
        position: relative;
        width: 98%;
        left: 1%;
        top: 1%;
    }
    .sjxxxxmx{
        position: relative;
        width: 98%;
        left: 1%;
    }
    .jieguo, .beizhu{
        overflow: hidden;
        position: relative;
        width: 100%;
        line-height: 26px;
        color: #3C3D3F;
        text-align: left;
        margin:15px 0 10px 0;
        font-size: 22px;
    }
    .jieguoxx{
        margin:0 auto;
        width: 98%;
        border: 1px solid #e5e5e5;
        background-color: #fff;
        height: 50px;
        text-align:left;
        font-size:16px;
    }
    .jieguoxx_ul{overflow: hidden;padding-top: 13px;}
    .jieguoxx_ul li{
        height: 24px;
        float: left;
        line-height: 24px;
        padding-left:30px;
        margin-right:50px;        
    }
    .jieguoxx_ul li:nth-of-type(1){
        background: url(img/dui.png) no-repeat left bottom ;       
    }
    .jieguoxx_ul li:nth-of-type(1).current{
        background:url(img/dui.png) no-repeat left top;
    }
    .jieguoxx_ul li:nth-of-type(2){
        background: url(img/cuo.png) no-repeat left bottom ;       
    }
    .jieguoxx_ul li:nth-of-type(2).current{
        background:url(img/cuo.png) no-repeat left top;
    }
    .jieguoxx_ul li:nth-of-type(3){
        background: url(img/rang.png) no-repeat left bottom ;       
    }
    .jieguoxx_ul li:nth-of-type(3).current{
        background:url(img/rang.png) no-repeat left top;
    }
    .jieguoxx_ul li:nth-of-type(4){
        background: url(img/xun.png) no-repeat left bottom ;       
    }
    .jieguoxx_ul li:nth-of-type(4).current{
        background:url(img/xun.png) no-repeat left top;
    }
    input{
        font-size:18px;
        border-radius: 0;
        text-align:center;
    }
   
    .table tbody{background-color: #fff;}
    .table tbody  tr:nth-of-type(2n+1){
        background-color: #e8eff7;
    }
    .campare{
    width: 90%;
    border: 1px solid #000;
}
    .sjdTable{
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
    }
    .sjdTable td{
        border-width: 1px;
        padding:3px;
        border-style: solid;
        border-color:#ddd;
        text-align: center;
        position:relative;
        line-height: 15px;
        font-size:11px;
        vertical-align:middle;
    }
     .aaaa{
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;
        background-color: #e8eff7;
    }
     .aaaa td{
        border-width: 1px;
        padding:3px;
        border-style: solid;
        border-color:#ddd;
        text-align: center;
        position:relative;
        line-height: 15px;
        font-size:11px;
        vertical-align:middle;
    }
     .jieguo .lastLine_ck1{
        width: 160px;color:#fff;
        height:35px;
        position:absolute;
        border: 1px solid #e5e5e5;
        right:29%;
        line-height: 35px;
        border-radius:5px;
        padding-left:20px;
        background:url(img/chakan.png) no-repeat 20px 7px #ebc40c;
}
    .jieguo .lastLine_bc1{
        width: 120px;color:#fff;
        height:35px;
        position:absolute;
        border: 1px solid #e5e5e5;
        right:15%;
        line-height: 35px;
        border-radius:5px;
        padding-left:20px;
        background:url(img/save.png) no-repeat 20px 7px #5ab558;
}
 .jieguo .lastLine_qx1{
        width: 120px;color:#fff;
        height:35px;
        position:absolute;
        border: 1px solid #e5e5e5;
        right:1%;
        line-height: 35px;
        border-radius:5px;
        background: url(img/return.png) no-repeat 20px 7px ;
        background-color:#ff7645 ;
        padding-left:20px;
}
.jieguo .lastLine_da1{
        width: 144px;color:#fff;
        height:35px;
        position:absolute;
        border: 1px solid #e5e5e5;
        right:43%;
        line-height: 35px;
        border-radius:5px;
        background: url(../img/pdf.png) no-repeat 20px 7px #ebc40c;
        padding-left:20px;
}
 #showimg1, #showimg2, #showimg3{
        width:230px;
        height: 88px;
        border:0 none;
        background-color: pink;
        position:absolute;
        left:10%;
        top:5px;
        background: url(img/qianming3.png) no-repeat center center;
        padding:8px 10px;
        margin-top:45px;
    }
    #showimg2.showimg_middle{
        left:40%;       
    }
    #showimg3.showimg_last{
        left:70%;       
    }
    #cjzg{
		position: relative;
	    left: 16%;
        top: 5%;
	    display: block;
	    width: 100px;
	    height: 40px;
	}
	#zjsp{
		position: relative;
	    left: 47%;
	    top: -11%;
	    display: block;
	    width: 100px;
	    height: 40px;
	}
	#jzsp{
	    position: relative;
	    left: 77%;
        top: -27%;
	    display: block;
	    width: 100px;
	    height: 40px;
	}
    </style>
  <body>
<div class="top2">
    <div class="logo">
        <img src="img/logo1.png" style="width: 214px;height: 36px;position: relative;left: -12%;" title="悟略科技" />
    </div>
    <div class="top-link">
    <img src="img/user.png" style="width: 26px;height: 25px;position: relative;left: 3%;" title="管理员" />
        <h>管理员：<%String str=request.getParameter("username");      				
        			str=java.net.URLDecoder.decode(str,"UTF-8");       			
        			out.print(str);
        			%></h>
        <input type="hidden" id="machineJobId" value="<%=request.getParameter("machineJobId")%>">
        <input type="hidden" id ="id_machine" value="<%=request.getParameter("id_machine")%>">
        <input type="hidden" id="userId" value="<%=request.getParameter("rolesid")%>">
        <input type="hidden" id="iID_sysTech" value="<%=request.getParameter("iID_sysTech")%>">
        <input type="hidden" id="billid" value="<%=request.getParameter("billid")%>">
        <input type="hidden" id="qclevleve" value="<%=request.getParameter("qclevleve")%>">
        <input type="hidden" id="sORx" value="">
        <input type="hidden" id="resulta" value="0">
        <input type="hidden" id="zijianyuan" value="<%=str%>">
    </div>
    <div class="top3">
                <div class="sjzy">首检作业</div>
                <div id="sjdxx"><img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;首检信息</div>
                <div class="sjdxxmx">
                    <table class="sjdTable" STYLE=" width: 100%;">
                    </table>
                </div>

                <div class="sjxxxx"><img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;首检详细信息</div>
                <div class="sjxxxxmx">
                    <table id="bb" class="aaaa" STYLE="width:100%;">
                    </table>
                </div>

                <div class="jieguo"><img src="img/Flag.png" style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;最终结果</div>
                <div class="jieguoxx">
                    <ul class="jieguoxx_ul">
                        <li class="current">合格</li>
                        <li>不合格</li>
                        <li>让步接收</li>
                        <li>未检验</li> 
                    </ul>
                </div>
                
                <div class="beizhu"><img src="img/beizhu.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;备注</div>
                <div class="beizhuxx">
               	<textarea id="demotext" style="resize:none;width:98%;overflow-x:hidden"> </textarea>
                </div>

                <div id="zj" style="display: none" class="beizhu"><img src="img/beizhu.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;质检拍照
                </div>
                <div id="pz" style="display: none" class="beizhuxx">
                    <input style="height:35px;width:117px;margin-left:845px;margin-bottom:15px;background-color: #11C2EE;" type="button" value="拍照" onclick="getPhoto()"/>
                </div>
                <div id="showPhoto"></div>

                <div class="jieguo huiqian"><img src="img/pen0.png" style="width: 20px;height: 20px;position: relative;left: 1%;margin-top:2px;"/>
                		<input type="button" value="查看PDF" class="lastLine_da1" onclick="daPDF(0)">
                		<input type="button"  value="查看作业单" class="lastLine_ck1" onclick="ckBillid()">
                   		<input type="button" onclick="baocunYorN()" value="保存" class="lastLine_bc1"> 
	                    <input type="button" onclick="gotoActivity('a')" value="取消" class="lastLine_qx1">
	                    <ul class="lastLine" style="height: 250px;">
		                    <img id="showimg1" onclick="huiqian(0)" /> <span id="cjzg">车间主管</span>
		                    <img id="showimg2" onclick="huiqian(1)" class="showimg_middle"/><span id="zjsp">质检</span>
		                    <img id="showimg3" onclick="huiqian(2)" class="showimg_last"/><span id="jzsp">机长</span> 
	                	</ul>
                </div>
      </div>
</div>
<%--            <div id="signature-pad" class="m-signature-pad" style="visibility:hidden; top: 1700px;">--%>
                <div id="signature-pad" class="m-signature-pad" style="visibility: hidden; position: fixed; bottom: 50px; left: 50%;">
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

<div id="myModal4" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="text-align: left;" >
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

<div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="text-align: left;" >
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
 		<input type="hidden" id="base64" value="1">
        <input type="hidden" id="base63" value="1">
        <input type="hidden" id="base62" value="1">
        <input type="hidden" id="base61" value="1">
        <input type="hidden" id="basePictures" value="">
</body>
<script type="text/javascript">
var billid;
var qclevleve;
//拍照图片
var pictureStr = "";
var jsonParamsYt = "";
//是否需要签名才能保存
function baocunYorN(){
	
	var sORxs = parseInt($("#sORx").val());
	qclevleve = parseInt(qclevleve);
	var base62 =$("#base62").val();
	var base63 =$("#base63").val();
	var base64 =$("#base64").val();
	base62 = parseInt(base62);
	base63 = parseInt(base63);
	base64 = parseInt(base64);
	if(qclevleve==0){
			baocun();
		}else if(qclevleve==1){
			if(base63!=1 && base64!=1){ 				
				baocun();
			}else{
				alert("请首签");
			}
		}else if(qclevleve==2){
			if(base63!=1 && base64!=1 && base62!=1){
				baocun();
			}else{
				alert("请首签");
			}
		}
}

//签名
function huiqian(i){
    	$("#base61").val(i);
        $("#signature-pad").css("visibility","visible");     
    }

function getPhoto() {
    MfsJSBridge.invoke('qcPhotoFun', 'abc', 'windowCallback');
}


$('.lastLine_qx1').on('click', function () {
    $("#showPhoto").empty();
});

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



function ckBillid(){			
	$.ajax({
		url:"getNumber/test.do?id="+billid+"&type=0",
 		dataType: "json",
 		async: false,
 		success:function(data){
 			console.log(data);
 			$("#imgModal").empty();
 			if(data.length==0){
					$("#imgModal").append('暂未生成作业单图片');
				}  			
 				else{
 					for(var i=0;i<data.length;i++){
 	   	   				$("#imgModal").append('<img id="test'+i+'" onmousewheel="return bigimg(this)" class="test1" width="100" height="100" src="'+data[i].img+'" />');
 				}
 			}
 			$('#myModal3').modal();
 			$(".test1").click(function(){
 			   if($(this).width()>100){
 				$(this).css("height",100);
 				$(this).css("width",100);
 			 	$(this).css("zoom",'0');
 			   }else{
 				$(this).css("height",1300);
 			    $(this).css("width",1000);
 			 	$(this).css("zoom",'200%');
 			   }
 		   })
 		}		
	})
}

function bigimg(obj){
	var zoom = parseInt(obj.style.zoom,10)||100;
	zoom += event.wheelDelta / 12;
	if(zoom > 0 )
	obj.style.zoom=zoom+'%';
	return false;
	}

function baocun(){
	var machineJob_id =$("#machineJobId").val();
	var id_machine=$("#id_machine").val();
	var user_id =$("#userId").val();
	var jobStatus =$("#resulta").val();
	var sORx =$("#sORx").val();
    var basePictures = $("#basePictures").val();
	if(jobStatus==undefined){
		alert("请选择最终结果才可保存");
	}else{
	var resultaa='未配置工序质检项';
	var demotext = $("#demotext").val();
	
	var base62 =$("#base62").val();
	var base63 =$("#base63").val();
	var base64 =$("#base64").val();
	var parms={};
	parms["base62"] = base62;
	parms["base63"] =$("#base63").val();
	parms["base64"] =$("#base64").val();
	parms["basePictures"] = $("#basePictures").val();
	parms["remarkmain"] =demotext;
	$.ajax({
		url:encodeURI(encodeURI("insertDetection.list?id="+machineJob_id+"&roleid="+user_id+"&id_machine="+id_machine+"&jobStatus="+jobStatus+"&iDetectionType=0")),
        type:"post",
		data:parms,
   		async: false,
   		success:function(data){
   			//alert(data);
   			var dd = $("#bb tr").length;
        	for(var i =1;i<dd;i++){  	
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
    		 	url:encodeURI(encodeURI("updateDetail.list?id="+data+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&proName="+v+"&standValue="+w+"&CheckRule="+CheckRule
                    + "&unit=" + unit
                    + "&checktype=" + CheckType
                    + "&datatype=" + DataType
                    + "&precision=" + precision
                    + "&propertys=" + propertys)),
    		 	async: false,
    			success:function(data){    
    				resultaa=data
    			}
    			}) 	
        	}	
        	alert(resultaa);
        	$('.cd-popup2').removeClass('is-visible2');
            $("table.sjdTable").empty();
            $("table.aaaa").empty();
            gotoActivity('a');
            
   		      }
	      })
	   }
}
function showDetail(id){
	console.log($("#zijianyuan").val());
    $.ajax({
   		 url:"showDetectionDetail.list?id="+id+"&type=0",
   		dataType: "json",
   		async: false,
   		success:function(data){
   			$("table.aaaa").append('<tr style="background-color: #3E6390; color: #FFFFFF;">' +
                '<td style="height:30px;">序号</td>'+
                '<td style="height:30px;">检验项目</td>'+
                '<td style="height:30px;">检验说明</td>'+
                '<td style="height:30px;">检验标准</td>'+
                '<td style="height:30px;">检测属性</td>'+
                '<td style="height:30px;">标准值</td>'+
                '<td style="height:30px;">标准单位</td>'+
                '<td style="height:30px;">检验值</td>'+
                '<td style="height:30px;">结果</td>'+
                '<td style="height:30px;">备注</td>'+
                '<td style="height:30px;">缺陷等级</td>');
   			var dd = data;
				var i;  			
       		for(i=0;i<dd.length;i++){
       			var jieguoa = dd[i].jieguo;
       			if(jieguoa=='0'){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0"selected ="selected">合格</option><option value="1">不合格</option></select>';
	          	}else if (jieguoa=='1'){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
	          	}else if (jieguoa=='-1' || jieguoa==''){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected">未判定</option><option value="0">合格</option><option value="1" >不合格</option></select>';
	          	}
       			
       		if(dd[i].editorType=='ComboBox'){
       			$("table.aaaa").append('<tr style="background-color: #ffffff;">' +
                    '<td style="height:30px;">'+dd[i].tip+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].operator+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].defaultValue+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].minValue+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].maxValue+'</td>'+
                    '<td style="height:30px; display:none;">' + dd[i].Precision + '</td>' +
                    '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                    '<td style="height:30px; max-width:400px;">'+dd[i].caption+'</td>'+
                    '<td style="height:30px; max-width:400px;">'+dd[i].enuma+'</td>'+
                    '<td style="height:30px; max-width:400px;">' + dd[i].cCheckRule + '</td>' +
                    '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                    '<td style="height:30px;">' + dd[i].biaozhunzhi + '</td>'+
                    '<td style="height:30px;">' + dd[i].unit + '</td>' +
                    '<td style="height:30px;"><select class="check" style="text-align: center;width:100%;height:99%;border:0px">'+dd[i].enumString+'</select></td>'+
                    '<td style="height:30px;">'+jieguozhi+'</td>'+
                    '<td style="height:30px;">'+'<input type="text"  value="'+dd[i].remake+'"style="border: none;width: 100%; height: 96%;">'+'</td>'+
                    '<td style="height:30px;">'+dd[i].DefectLevel+'</td>');
       		} else {

                var shijizhi ='<input class="campare" type="text" value="'+dd[i].shiji+'" style="border: none;width: 100%; height: 96%;">';

                if ((dd[i].editorType == "SpinEdit") || (dd[i].editorType == "CurrencyEdit"))
                    shijizhi ='<input class="campare" type="text" value="'+dd[i].shiji+'" style="border: none;width: 100%; height: 96%;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';

       			$("table.aaaa").append(
                    '<tr style="background-color: #ffffff;">' +
                    '<td style="height:30px;">'+dd[i].tip+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].operator+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].defaultValue+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].minValue+'</td>'+
                    '<td style="height:30px; display:none;">'+dd[i].maxValue+'</td>'+
                    '<td style="height:30px; display:none;">' + dd[i].Precision + '</td>' +
                    '<td style="height:30px; display:none;">' + dd[i].dataType + '</td>' +
                    '<td style="height:30px; max-width:400px;">'+dd[i].caption+'</td>'+
                    '<td style="height:30px; max-width:400px;"><div id="mobaa">'+dd[i].enumString+'</div></td>'+
                    '<td style="height:30px; max-width:400px;">' + dd[i].cCheckRule + '</td>' +
                    '<td style="height:30px;">' + dd[i].checkType + '</td>' +
                    '<td style="height:30px;">'+dd[i].biaozhunzhi+'</td>'+
                    '<td style="height:30px;">' + dd[i].unit + '</td>' +
                    '<td style="height:30px;">'+shijizhi+'</td>'+
                    '<td style="height:30px;">'+jieguozhi+'</td>'+
                    '<td style="height:30px;">'+'<input type="text"  value="'+dd[i].remake+'"style="border: none;width: 100%; height: 96%;">'+'</td>'+
                    '<td style="height:30px;">'+dd[i].DefectLevel+'</td>');
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
       		$(".campare").keyup(function(){
       		 var operator=this.parentNode.parentNode.cells[1].innerHTML;
       		 var defaultValue=parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
       		 var minValue=this.parentNode.parentNode.cells[3].innerHTML;
       		 var maxValue=this.parentNode.parentNode.cells[4].innerHTML;
       		 var tureValue=parseFloat($(this).parent().find(".campare").eq(0).val());

       		if("大于"==operator){
          		if(tureValue>defaultValue){
         			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
          		}
          	}else if("小于"==operator){
          		if(tureValue<defaultValue){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
          		}
          	}else if("介于"==operator){
          		if(minValue <= tureValue && tureValue <= maxValue){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("等于"==operator){
          		if(defaultValue==tureValue ){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("大于等于"==operator){
          		if(defaultValue<tureValue || tureValue==defaultValue){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("小于等于"==operator){
          		if(defaultValue>tureValue || tureValue==defaultValue){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}

          	}else if("不等于"==operator){
          		if(tureValue!=defaultValue){
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[14].innerHTML="<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}

          	}
       	});
   		}		
   	})          
    }
    
    function showDetectionM(i,m){
    	$("#machineJobId").val(i);
    	$("#id_machine").val(m);
    	var a=1;
        $.ajax({
       		 url:"showDetectionMessage.list?id="+i+"&id_machine="+m,
       		dataType: "json",
       		async: false,
       		success:function(data){
       			
       			if(data.jianceNum==null){
       				a=1;
       			}else{
       				$("table.sjdTable").append('<tr style="background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">首检单号</td>'+
           	                '<td style="height:30px;">生产订单</td>'+
           	                '<td style="height:30px;">作业名称</td>'+
           	                '<td style="height:30px;">机台</td>'+
           	                '<td style="height:30px;">工序</td>'+
           	                '<td style="height:30px;">作业数量</td>'+
           	                '<td style="height:30px;">已完成数量</td>'+
           	                '<td style="height:30px;">作业状态</td>'+
           	                '<td style="height:30px;">首检人</td>'+
           	                '<td style="height:30px;">机台开始时间</td>'
           	            	);
                	$("table.sjdTable").append('<tr><td style="height:30px;">'+data.jianceNum+'</td>'+
                    '<td style="height:30px;">'+data.pbill_code+'</td>'+
                    '<td style="height:30px;">'+data.jobName+'</td>'+
                    '<td style="height:30px;">'+data.jtName+'</td>'+
                    '<td style="height:30px;">'+data.tech_name+'</td>'+
                    '<td style="height:30px;">'+data.num+'</td>'+
                    '<td style="height:30px;">'+data.doneNum+'</td>'+
                    '<td style="height:30px;">'+data.status+'</td>'+
                    '<td style="height:30px;">'+$("#zijianyuan").val()+'</td>'+
                    '<td style="height:30px;">'+data.beginTime+'</td>'
                	);
                	billid = data.billId;
                	a=0;
       			}
       		}
       	})     
       		return a;
        }
    jQuery(document).ready(function($){
    	 $('.jieguoxx_ul li').click(function(){
         	$(this).addClass('current');
 			if($(this).text()=='合格'){
 				$("#resulta").val(0);
 			}else if($(this).text()=='不合格'){
 				$("#resulta").val(1);
 			}else if($(this).text()=='让步接收'){
 				$("#resulta").val(2);
 			}else if($(this).text()=='未检验'){
				$("#resulta").val(3);
			}
 			$(this).siblings().removeClass('current');
         });
    	 var machineJobId =$('#machineJobId').val();
    	 var id_machine = $('#id_machine').val();
    	 var iID_sysTech = $('#iID_sysTech').val();
    	//作业单id
    	billid =$("#billid").val();
    	 //首检通过判定标志  
    	qclevleve = $("#qclevleve").val();
    	 showDetectionM(machineJobId,id_machine);
         showDetail(iID_sysTech);
       
    })
   
	
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);

    function gotoActivity (activity) {
        nativeMethod.toActivity(activity);
      }

    $(function () {
        detectOS();
    });

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
