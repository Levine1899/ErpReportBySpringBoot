<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<script type="text/javascript" src="js/jquery2.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">
        body {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 14px;
            color: #333;
            background-color: #fff;
            margin:0px;
            overflow:Scroll;
            overflow:hidden;
        }
       .top1{
           position:relative;
           width: 100%;
           height: 100%;
           background-size:100% 100%
       }
        .mid1{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 20%;
            top: 26%;
            z-index: 1;
        }
        .mid2{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 39%;
            top: 26%;
            z-index: 1;
        }
		.mid3{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 58%;
            top: 26%;
            z-index: 1;
        }
        .mid4{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 77%;
            top: 26%;
            z-index: 1;
        }
        .mid5{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 39%;
            top: 56%;
            z-index: 1;
        }
        .mid6{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 58%;
            top: 56%;
            z-index: 1;
        }
        .mid7{
            width: 100px;
            height: 100px;

            position: absolute;
            left: 73%;
            top: 42%;
            z-index: 1;
        }
    </style>
  </head>
  
  <body>
    <div class="top1">
	<img src="img/bg_mainbackground.png" style="width:100%; height:100%;">
		
    	<div class="mid1"><img onclick="openurl2()"src="img/outstocktoback.png" style="width:100%; height:100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;过程检验</div>
    	<div class="mid4"><img onclick="openurl7()"src="img/paperrequisition.png" style="width:100%; height:100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日日报</div>
   
    	<div class="mid2"><img onclick="openurl4()"src="img/materialrequisition.png" style="width:100%; height:100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生产订单</div>
    	<div class="mid3"><img onclick="openurl5()"src="img/repairrequisition.png" style="width:100%; height:100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成品入库</div>
    
    	 <div class="mid7"><img onclick="openurl7()"src="img/paperrequisition.png" style="width:100%; height:100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日日报</div> 
	</div>
	<input  id="aaa" type="hidden" value=<%=basePath%>>
	<input  id="rolesid" type="hidden" value=<%=session.getAttribute("rolesid")%>> 
	<input  id="name" type="hidden" value=<%=session.getAttribute("name")%>> 
	<input id ="banci" type="hidden" value=<%=session.getAttribute("banci")%>>
	<input id = "workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
	<script type="text/javascript">
	var path =$('#aaa').val();
	var rolesid = $("#rolesid").val();
	var name = $("#name").val();
	var banci =$("#banci").val();
	var workTime =$("#workTime").val();
	//alert(workTime);
        function openurl1(){      
        	//alert(banci);
        	//alert(workTime);
        	///alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'report.list?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        function openurl2(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'jsp/xunjianShow.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        function openurl3(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'jsp/detectionDetail.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        function openurl4(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'jsp/orderList.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        function openurl5(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'jsp/sendListNoSubmit.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        
        function openurl6(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'jsp/fnOutList.jsp?rolesid='+rolesid+'&username='+name+'&banci='+banci+'&workTime='+workTime)),"_self");
        }
        function openurl7(){
        	/* var path =$('#aaa').val();
        	var rolesid = $("#rolesid").val();
        	var name = $("#name").val(); */
        	//alert('report.list?rolesid='+rolesid+'&name='+name)
			window.open(encodeURI(encodeURI(path+'insertRejectGoods/getUsalbe.do?id=2')),"_self");
        }
    </script>
  </body>
</html>
