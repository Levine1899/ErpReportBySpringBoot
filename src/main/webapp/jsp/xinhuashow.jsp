<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String rolesid=request.getParameter("rolesid");
//String cbanci=request.getParameter("banci");
//cbanci=java.net.URLDecoder.decode(cbanci,"UTF-8");

%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>印前检验</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="stylesheet" href="Css/zhijianstyle.css"> -->
   <link rel="stylesheet" href="Css/jquery.page.css">
    <!-- <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" /> -->
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">

    <script type="text/javascript" src="js/jquery.js"></script>
   <!-- <script type="text/javascript" src="Js/jquery2.sorted.js"></script>-->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
    <script type="text/javascript" src="js/touch.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
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
    #fenye{
        position:relative;
        background-color: red;
        height: 10%;
        width:100%;
    }
    .table{
        /* position: relative;*/
        font-family: verdana,arial,sans-serif;
        color:#333333;
        border-width: 0px;
        border-color: #F0F0F0;
        border-collapse: collapse;


    }
    .aaaa{
        /* position: relative;*/
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
        /*  float: left; */
        position:relative;
        line-height: 20px;
        font-size:14px;
        vertical-align:middle;
    }
    .aaaa tbody input{
        width:94%;
        border:0px solid #e5e5e5;
        box-shadow: inset 0 0px 0px rgba(0, 0, 0, 0.0);
    }
    .aaaa tbody tr:nth-of-type(2n+1){
        background-color: #e8eff7;
    }
    .sjdTable{
        /* position: relative;*/
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
        /*  float: left; */
        position:relative;
        line-height: 20px;
        font-size:16px;
        vertical-align:middle;
    }
    .table td{
        border-width: 1px;
        padding:3px;
        border-style: solid;
        border-color:#ddd;
        font-family: 微软雅黑;
        text-align: center;
        /*  float: left; */
        position:relative;
        line-height: 14px;
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
        margin-top:25px;
        text-align: center;
        font-size: 24px;
        font-weight:bold;
    }
    .title2{
        position: relative;
        top: 1%;
        height: 40px;
        width: 100%;
        color: #3C3D3F;
        font-size: 20px;
        font-weight:bold;
        text-align: left;
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
       /*  height: 26px; */
        line-height: 26px;
        color: #3C3D3F;
        text-align: left;
        margin:15px 0 10px 0;
        font-size: 22px;
    }
    .huiqian{
        height: 36px;
        margin-bottom:2px;
        height:200px;
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
    	border:1px;
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
    #signature-pad {
        visibility:hidden;
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
    #ban{
        position:absolute;
        left:28%;
        top:2px;border:0 none;


    }
    .table tbody{background-color: #fff;}
    .table tbody  tr:nth-of-type(2n+1){
        background-color: #e8eff7;
    }
.campare{
    width: 90%;
    border: 1px solid #000;
}
	#cjzg{
		position: relative;
	    left: 16%;
	    top: 13%;
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
	    top: -32%;
	    display: block;
	    width: 100px;
	    height: 40px;
	}
	
	
	#myModal1 li{ 
		border:16px solid #0000; 
		list-style-position:5px; 
		} 
		
		table.table{
		z-index:0;
		}
		
	 .selectedCss{
        background-color: #e2efff;
        font-family: "微软雅黑";
       /*  font-size: 120%; */
        /* color: aquamarine; */
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
        <input type="hidden" id="machineJobId" value="12">
        <input type="hidden" id ="id_machine">
        <input type="hidden" id="userId" value=<%=rolesid%>>
        <input type="hidden" id="base64" value="1">
        <input type="hidden" id="base63" value="1">
        <input type="hidden" id="base62" value="1">
        <input type="hidden" id="base61" value="1">
        <input type="hidden" id="sORx" value="">
        <input type="hidden" id="resulta" value="0">
    </div>
    
    <div class="top3">
     
        <div class="title2"><img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: -4%;"/> &nbsp;&nbsp;&nbsp;订单信息列表      <button   title="返回主界面"  onclick="goBack();" style="position:relative;left:78%;width:32px;top:5px;height:32px;background:url(img/home_back.png);"></div>
        <table class="table"  style="width:98%;position:relative;left: 1%;">
            <!--  <tr>
                  <td colspan="9" style="font-size: 19px;font-weight: bold; font-family: fantasy;height:34px;">作业属性</td>
                  <td  colspan="1" style="font-size: 19px;font-weight: bold;font-family: fantasy;">机台</td>
                  <td  colspan="5" style="font-size: 19px;font-weight: bold;font-family: fantasy;">检验信息</td>
                  <td   colspan="2" style="font-size: 19px;font-weight: bold;font-family: fantasy;">开始检测</td>

              </tr>-->
            <tr style="background-color: #3E6390; color: #FFFFFF;">
                <td style="height:34px;">序号</td>
                <td style="height:30px;">订单号</td>
                <td style="height:30px;">印件名称</td>
                <td style="height:30px;">印刷数量</td>
                <td style="height:30px;">表面工艺</td>
                <td style="height:30px;">内文用纸</td>
                <td style="height:30px;">装订方式</td>
                <td style="height:30px;">开本</td>
                <td style="height:30px;">内文页数</td>
                <td style="height:30px;">开单日期</td>
                <td style="height:30px;">交货日期</td>
                
            </tr>
        </table>

       
      <%-- <input id ="banci" type="hidden" value=<%=cbanci%>>
	  <input id = "workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
	  <input id = "journalMainId" type="hidden" value=""> --%>
	  <input  id="aaa" type="hidden" value=<%=basePath%>>
    </div>
    
    <div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="overflow:hidden;left:46%;width:1050px;height:626px;">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="myModalLabel2">检验项目</h4>
        </div>
        <div class="modal-body">
          <div class="sjxxxx"><img src="img/grid.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;首检详细信息</div>
                <div class="sjxxxxmx">
                    <table id="bb" class="aaaa" STYLE="width:100%;">

                    </table>
                </div>
                <div class="jieguo"><img src="img/Flag.png" style="width: 20px;height: 20px;position: relative;left: 1%;top: 3px;margin-top:2px;"/>&nbsp;&nbsp;&nbsp;最终结果</div>
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
		  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="baocun();">保存</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">&nbsp;取消</button>
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
  
  
  <div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" style="overflow:hidden;left:22%;width:352px;height:626px;text-align:left">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="myModalLabel2">&nbsp;印前过程检验（期刊杂志--桌面组）</h4>
        </div>
        <div class="modal-body">
	          <ul style="color:#4d77ac;">
			   <li onclick="newGG(42);">工艺审核<span style="float:right">></span></li>
			   <li onclick="newGG(4);" >文件管理<span style="float:right">></span></li>
			   <li onclick="newGG(38);">图文制作<span style="float:right">></span></li>
			   <li onclick="newGG(188);">打印样张<span style="float:right">></span></li>
			   <li onclick="newGG(176);">ERP传票审核<span style="float:right">></span></li>
			   <li onclick="newGG(151);">新工艺或更改<span style="float:right">></span></li>
			   <li onclick="newGG(9);">纸样移交<span style="float:right">></span></li>
			  </ul>

		  
        </div>
        <!-- <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">确定</button>
        </div> -->
      </div>
    </div>
  </div>
  <input  id="techid" type="hidden" value=1>
</body>
<script type="text/javascript">
var banci =$("#banci").val();
//alert(banci);
var workTime =$("#workTime").val(); 

var path =$('#aaa').val();
//作业单id
var billid;
//首检通过判定标志
var qclevleve;
$('#myModal1').css('z-index',-1);
$('#myModal2').css('z-index',-1);

//li点击弹出窗口检验项目
function newGG(i){
	$('#myModal2').css('z-index','1050');
	$('#myModal2').modal();
	$("table.aaaa").empty();
	$("#techid").val(i);
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
	 
	var jobid =$("#machineJobId").val();
 	var user_id =$("#userId").val();
	$.ajax({
   		url:"xinHua/showDetail.do?id="+i+"&userid="+user_id+"&jobid="+jobid,
   		dataType: "json",
   		async: false,
   		success:function(data){
   			//console.log(data);
   			$("table.aaaa").append('<tr style="background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
   					'<td style="height:30px;">检验项目</td>'+
   		            '<td style="height:30px;">检验说明</td>'+
   		         	'<td style="height:30px;">标准值</td>'+
   		            '<td style="height:30px;">检验值</td>'+
   		            '<td style="height:30px;">结果</td>'+
   		            '<td style="height:30px;">备注</td>'+
   		            '<td style="height:30px;">缺陷等级</td></tr>');
   			var dd = data;
			var i;  					
       		for(i=0;i<dd.length;i++){
       			var jieguoa = dd[i].jieguo;
       			if(jieguoa=='0'){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="0"selected ="selected">合格</option><option value="1">不合格</option></select>';
	          	}else if (jieguoa=='1'){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="0">合格</option><option value="1" selected ="selected">不合格</option></select>';
	          	}else if (jieguoa=='-1' || jieguoa==''){
	          		var jieguozhi='<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="0" selected ="selected">合格</option><option value="1" >不合格</option></select>';
	          	}
       			
       		if(dd[i].editorType=='ComboBox'){
       			$("table.aaaa").append('<tr style="background-color: #ffffff;"><td style="height:30px;">'+dd[i].tip+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].operator+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].defaultValue+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].minValue+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].maxValue+'</td>'+
       		            '<td style="height:30px;">'+dd[i].caption+'</td>'+
       		            '<td style="height:30px;max-width:400px;">'+dd[i].enuma+'</td>'+
       		         '<td style="height:30px;"></td>'+
       		            ' <td style="height:30px;"><select style="text-align: center;width:100%;height:99%;border:0px">'+dd[i].enumString+'</select></td>'+
       		            '<td style="height:30px;">'+jieguozhi+'</td>'+
       		            '<td style="height:30px;">'+'<input type="text"  value="'+dd[i].remake+'"style="border: none;width: 100%; height: 96%;">'+'</td>'+
       		            '<td style="height:30px;">'+dd[i].DefectLevel+'</td>'+
       		         	'<td style="height:30px;display:none;">'+dd[i].cCheckRule+'</td>');
       		}else
       		{
       			var shijizhi ='<input class="campare" type="text" value="'+dd[i].shiji+'" style="border: none;width: 100%; height: 96%;" onkeyup="value=value.replace(/[^\\d.]/g,\'\')">';
       			
       			if(dd[i].operator==''){
       				shijizhi ='<input class="campare" type="text" value="'+dd[i].shiji+'" style="border: none;width: 100%; height: 96%;">';
       			}
       			$("table.aaaa").append(
       					'<tr style="background-color: #ffffff;"><td style="height:30px;">'+dd[i].tip+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].operator+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].defaultValue+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].minValue+'</td>'+
       					'<td style="height:30px;display:none;">'+dd[i].maxValue+'</td>'+
       		            '<td style="height:30px;">'+dd[i].caption+'</td>'+
       		            '<td style="height:30px;max-width:400px;"><div id="mobaa">'+dd[i].enumString+'</div></td>'+
       		         '<td style="height:30px;">'+dd[i].biaozhunzhi+'</td>'+
       		            '<td style="height:30px;">'+shijizhi+'</td>'+
       		            '<td style="height:30px;min-width:63px;">'+jieguozhi+'</td>'+
       		            '<td style="height:30px;">'+'<input type="text"  value="'+dd[i].remake+'"style="border: none;width: 100%; height: 96%;">'+'</td>'+
       		            '<td style="height:30px;">'+dd[i].DefectLevel+'</td>'+
       		         	'<td style="height:30px;display:none;">'+dd[i].cCheckRule+'</td>');	
       		}
       	}
       		
       		$(".campare").keyup(function(){
       		 var operator=this.parentNode.parentNode.cells[1].innerHTML;
       		 var defaultValue=parseFloat(this.parentNode.parentNode.cells[2].innerHTML);
       		 var minValue=this.parentNode.parentNode.cells[3].innerHTML;
       		 var maxValue=this.parentNode.parentNode.cells[4].innerHTML;
       		 var tureValue=parseFloat($(this).parent().find(".campare").eq(0).val());
       		 //alert(defaultValue);
       		 //alert(operator);
       		if("大于"==operator){
          		if(tureValue>defaultValue){
          			//alert(tureValue+'>'+defaultValue);
         			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			//$("#resause").val(1);
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0' >合格</option><option value='1'  selected = 'selected' >不合格</option></select>";
          		}
          	}else if("小于"==operator){
          		if(tureValue<defaultValue){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px'><option value='0'   >合格</option><option value='1' selected = 'selected'>不合格</option></select>";
          		}
          	}else if("介于"==operator){
          		if(minValue <= tureValue && tureValue <= maxValue){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("等于"==operator){
          		if(defaultValue==tureValue ){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("大于等于"==operator){
          		if(defaultValue<tureValue || tureValue==defaultValue){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}
          	}else if("小于等于"==operator){
          		if(defaultValue>tureValue || tureValue==defaultValue){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;width:100%;height:99%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}

          	}else if("不等于"==operator){
          		if(tureValue!=defaultValue){
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  selected = 'selected' >合格</option><option value='1'>不合格</option></select>";
          		}else{
          			//this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
          			this.parentNode.parentNode.cells[9].innerHTML="<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='0'  >合格</option><option value='1' selected = 'selected' >不合格</option></select>";
          		}

          	}
       	});
   		}		
   	})  
	
}



function ckBillid(){
	//alert(billid);
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
   			   //alert($(this).width());
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

function goBack(){
	 /*  window.open(path+'/jsp/SelectType.jsp',"_self"); */
}

function login(){
	window.open(path+'html/login.html',"_self");
}
function getSession(){
	
	if(banci=="null"){
		$('#myModal2').modal();  
		return false;
	}else{
		return true;
	}
}
	function submitLaboratory(id){	
	  $.ajax({
	   		 url:"submitLaboratory.list?id="+id,
	   		//dataType: "json",
	   		async: false,
	   		success:function(data){
	   			$('#myModal1').modal();
	   		}
		 
		 }) 
	}
    function huiqian(i){
    	$("#base61").val(i);
        $("#signature-pad").css("visibility","visible");     
    }
    
    function baocunYorN(){
    	
    	var sORxs = parseInt($("#sORx").val());
    	qclevleve = parseInt(qclevleve);
    	var base62 =$("#base62").val();
    	var base63 =$("#base63").val();
    	var base64 =$("#base64").val();
    	base62 = parseInt(base62);
    	base63 = parseInt(base63);
    	base64 = parseInt(base64);
    	if(sORxs==0){  		
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
    	}else{
    		baocun();
    	}
    	
		
    }
    
    
    function baocun(){
    	// $('#wrap input[name="payMethod"]:checked ').val();
    	var machineJob_id =$("#machineJobId").val();
    	var techid =$("#techid").val();
    	var user_id =$("#userId").val();
    	var jobStatus =$("#resulta").val();
    	var demotext = $("#demotext").val();
    	var base63 =$("#base63").val();
    	var base64 =$("#base64").val();
    	//alert(jobStatus);
    	if(jobStatus==undefined){
    		alert("请选择最终结果才可保存");
    	}else{ 		
    		
    	//alert(jobStatus);
    	//var aaa = "insertDetection.list?id="+machineJob_id+"&roleid="+user_id+"&id_machine="+id_machine;
    	//console.log($("#demotext"));
    	//alert(demotext);
    	var parms={};
    	parms["base62"] = base62;
    	parms["base63"] =$("#base63").val();
    	parms["base64"] =$("#base64").val();
    	parms["remarkmain"] =demotext;
    	var resultaa;
    	resultaa='保存成功';
        var dd = $("#bb tr").length;
        for(var i =1;i<dd;i++){  	
            var cProgram_key = $("#bb tr").eq(i).find("td:eq(0)").text();
            var v = $("#bb tr").eq(i).find("td:eq(5)").text();
            var w = $("#bb tr").eq(i).find("td:eq(7)").text();
            var x = $("#bb tr").eq(i).find("td:eq(8)").children().val();
            var y = $("#bb tr").eq(i).find("td:eq(9)").children().val();
            var z = $("#bb tr").eq(i).find("td:eq(10)").children().val();  
            var CheckRule = $("#bb tr").eq(i).find("td:eq(6)").text();  
                   
                    //alert("xinHua/insertPressDetail.do?userid="+user_id+"&bigbei="+demotext+"&id="+machineJob_id+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&proName="+v+"&standValue="+w+"&CheckRule="+CheckRule);
                    $.ajax({
            		 	url:encodeURI(encodeURI("xinHua/updatePressDetail.do?userid="+user_id+"&bigbei="+demotext+"&id="+machineJob_id+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&cProgram_key="+cProgram_key+"&techid="+techid+"&CheckRule="+CheckRule)),
            		 	async: false,
            			success:function(data){         				
            					resultaa=data;
            				    				
            			}
            			}) 	
            			if('保存失败'==resultaa){
                    		break;
                    	}
                	}	
                	
       			}
    	
       			alert(resultaa);
       			window.location.reload();
             
        
   	 }
    
    function firstList(userid){
    	
    	 $.ajax({
       		 url:encodeURI(encodeURI("xinHua/getMain.do?userid="+userid+"&banci="+banci+"&workTime="+workTime)),
       		dataType: "json",
       		async: false,
       		success:function(data){
       			var detectionJson = data;//eval(data);
       			console.log(data);	
       			
       			var i;
           		for(i=0;i<data.length;i++){
           			//console.log(aa[a]);
           			//console.log(aa[a].sORx);
           			//var aaa=detectionJson[a].sORx;
           			
           				$("table.table").append(
           						'<tr ><td style="height:30px;">'+detectionJson[i].iId+'</td>'+
      						    '<td style="height:30px;">'+detectionJson[i].cOrderCode+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].cOrderName+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].iOrderNumber+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].cOrderTech+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].cOrderPaper+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].cBindMode+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].iKaiBen+'</td>'+
					              '<td style="height:30px;">'+detectionJson[i].iPages+'</td>'+
					              '<td style="height:30px;">'+getLocalTime(detectionJson[i].dMakeTime.time)+'</td>'+
					              '<td style="height:30px;">'+getLocalTime(detectionJson[i].dDeliverTime.time)+'</td></tr>'
					              );
           			
           				$("table.table tr").not("table.table tr:first-child").click(function(){ 
           					var $this = $(this);
           					$("#machineJobId").val($this.find('td:eq(0)').text());
           					$('#myModal1 li').removeClass('selectedCss');
           					$('#myModal1').css('z-index',1050);
           					$('#myModal1').modal();
           					$('#myModal1 li').click(function(){
           				    	$(this).addClass('selectedCss');
           						$(this).siblings().removeClass('selectedCss');
           				    });
           					
           				})
            }
       		}
       	}) 
    }
 
    jQuery(document).ready(function($){
    	
    	$('#myModal1').on('hide.bs.modal', function () {
    		$('#myModal2').modal('hide');
    		})
    	/* $('#myModal1').on('hidden.bs.modal', function () {
    		$('#myModal1').modal('hide');
			}) */
        // begin();
        //打开窗口
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
        var iiid = $("#userId").val();
        
        if(getSession()){
        	firstList(iiid);
        };    
        $('.cd-popup-trigger2').on('click', function(event){
            event.preventDefault();
           
                 $('.cd-popup2').addClass('is-visible2');
                 
                 
           
        });
        //关闭窗口
        $('.cd-popup2').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2') ) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
                $("table.sjdTable").empty();
                $("table.aaaa").empty();
            }
        });

       
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup2').removeClass('is-visible2');
            }
    });
    })
    
	
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);

    /*(function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();*/
</script>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

  </body>
</html>
