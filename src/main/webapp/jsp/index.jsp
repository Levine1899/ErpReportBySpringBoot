<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>送检单总览</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="js/jquery2.js"></script>
   <!--  <script type="text/javascript" src="js/jquery2.sorted.js"></script> -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
  </head>
   <style type="text/css">
      body {font-size: 20px;
            font-size: 20px;
            padding-bottom: 40px;
            background-color:#e9e7ef;
            width:auto;
            height:auto;
        }
        .top2 {
            position: fixed;
            width: 100%;
            height: 100px;
            text-align: center;
            background-color: #8888A1;
            z-index: 2000;
        }
        .logo {
            left:1%;
            top:25%;
            position: absolute;

        }
        .title{
            left:8%;
            top:41%;
            position: absolute;
            color: #FFFFFF;
            font-size: 50px;
            font-family: 隶书;
        }
        .top-link{
            position: absolute;
            color: #FFFFFF;
            font-height: 55px;
            font-size:23px;
            font-family: 隶书;
            left:80%;
            top: 55px;%;
        }
        .left {
            position: relative;
            left: 10%;
            top: 150px;
            width: 80%;
            height: 380px;
            border-right: 1px solid #E9E7EF;
            color: #000000;
            font-size: 20px;
            text-align: center;
           
        }

        .div1 {
            position:absolute;
            left: 8%;
            top: 13%;

        }
        .div2 {
            position:absolute;
            left: 30%;
            top: 13%;
        }
        .div3 {
            position:absolute;
            left: 52%;
            top: 13%;
        }
        .div4 {
            position:absolute;
            left: 74%;
            top: 13%;
          }
        .div5 {
            position:absolute;
            left: 8%;
            top: 60%;
        }
        .div6 {
            position:absolute;
            left: 30%;
            top: 60%;
        }
        .div7 {
            position:absolute;
            left: 52%;
            top: 60%;
        }
        .div8 {
            position:absolute;
            left: 74%;
            top: 60%;
        }
        .left a{
            
            border: 1px solid #000;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            height:15%;
            width:12%;
            padding:25px;
            text-align: center;
            position: absolute;
          line-height: 50px
        }
    </style>
<body>
<div class="top2">
    <div class="logo">
        <img src="img/logo-o.png" title="悟略科技" />
    </div>
    <div class="title" >
        <h>北京悟略科技</h>
    </div>
    <div class="top-link">
        
    </div>
</div>
    <div class="left">


        <a class="div1" href="javascript:void(0);"onClick="openMyurl();">查看所有质检</a>
        <a class="div2" href="javascript:void(0);"onClick="openMyurl();">查看所有五彩</a>
        <a class="div3" href="javascript:void(0);"onClick="openMyurl();">查看所有类型</a>
        <a class="div4" href="javascript:void(0);"onClick="openMyurl();">查看所有类型</a>
        <a class="div5" href="javascript:void(0);"onClick="openMyurl();">查看所有类型</a>
        <a class="div6" href="javascript:void(0);"onClick="openMyurl();">查看所有类型</a>
        <a class="div7" href="javascript:void(0);"onClick="openMyurl();">查看所有类型</a>
        <a class="div8" href="javascript:void(0);"onClick="opentt();">查看所有类型</a>


    </div>
    <div class="right">
        <iframe id="rightFrame" name="rightFrame" width="100%" height="100%"
                scrolling="auto" marginheight="0" marginwidth="0" align="center"
                style="border: 0px solid #CCC; margin: 0; padding: 0;"></iframe>
    </div>

  <div id ="test">
      <input  id="parm" type="hidden" value=<%=session.getAttribute("list") %>>
      <input  id="aaa" type="hidden" value=<%=basePath%>>
      <input  id="name" type="hidden" value=<%=session.getAttribute("name") %>>
     
      </div>
      <script type="text/javascript" src="js/echarts.js"></script>
	<script type="text/javascript"src="js/jquery-1.7.2.min.js"></script>
      <script type="text/javascript">
      aa();
      function openurl(url) {
          var rframe = parent.document.getElementById("rightFrame");
          rframe.src = url;
      }
      function openMyurl(){
    	  var path =$('#aaa').val();
    	  window.open(path+'report.list?type=0&status=1');
      }
      function opentt(){
    	  var path =$('#aaa').val();
    	  window.open(path+'report.elegant?pageid=newxml&dataId=1');
      }
      function aa(){
    	  $("div.top-link").append("<h>管理员:"+$("#name").val()+"</h>");
      }
      </script>
  </body>
  
</html>
