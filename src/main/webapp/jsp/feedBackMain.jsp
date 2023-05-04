<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String rolesid =request.getParameter("rolesid");
%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>异常反馈单列表</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<!-- <link rel="stylesheet" href="Css/zhijianstyle.css"> -->
   <link rel="stylesheet" href="Css/jquery.page.css">
    <!-- <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" /> -->
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">
	<!--script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script-->
    <!--script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script-->
    <!--[if lt IE 9]>
        <script type="text/javascript" src="js/html5.min.js"></script>
        <script type="text/javascript" src="js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/jquery.js"></script>
   <!-- <script type="text/javascript" src="Js/jquery2.sorted.js"></script>-->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
	<script src="js/transition.js"></script>
	<script src="js/tab.js"></script>
	<script src="js/dropdown.js"></script>
	<script src="js/bootstrap-table.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
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
        position: relative;
	    height:100%;
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
    #Table1{
    /* position: relative;*/
    font-family: verdana,arial,sans-serif;
    color:#333333;
    border-width: 0px;
    border-color: #F0F0F0;
    border-collapse: collapse;
    width: 100%;
  }
  #Table1 tr{
  height:30px;
  }
  #Table1 td{
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
  #Table1 td:nth-child(even) {
    background: #fff ;
    width: 80px;
  }
  #Table1 td:nth-child(odd) {
    background: #c4e1ff;
    width: 60px;
    /*text-align: right;*/
  }
  #headTable{
    position: relative;
    top: -10px;
    height:100%;
    background:#fff;
  }
  #tb_departments th {
	  text-align:center;
	  height:40px;
	  vertical-align: middle;
  }
  #tb_departments tr {
	  height:40px;
  }
   #tb_departments td {
	  text-align:center;
  }
  .btn-default {
    height: 34px;
} .formTable td{
        
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
     #begin_time,#end_time{
        background: url(img/Month-Calendar.png) no-repeat 125px 7px;
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
     
        
    </div>
</div>
    <div class="top3">
        <div class="page-header">
    		<h1>异常反馈单</h1>
    		<!-- <table class="formTable" style="width:62%;height: 50px;font-size: 14px;">
	    		<tr>
	    			<td style="height:40px">开始时间</td>
	            	<td style="height:40px"><input id="begin_time" type="text" placeholder="请选择" style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"  readonly></td>
	            	<td style="height:40px">结束时间</td>
	            	<td style="height:40px"><input id="end_time" type="text" placeholder="请选择" style="width:150px;height:30px;cursor:pointer;background-color:#ffffff;" onClick="jeDate({dateCell:'#end_time',isTime:true,format:'YYYY-MM-DD'})"  readonly></td>
	    			<td style="height:40px"><input type="button" value="查询" class="search" style="width:60px;" onclick="firstList()"></td>   			
	    		</tr>
    		</table> -->
  		</div>
  <div id="headTable">
 	<table id="tb_departments" class="table table-bordered" style="margin-top: 2px !important;"></table>
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
          <button type="button" class="btn btn-primary" >yes</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">&nbsp;no</button>
        </div>
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
          <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">确定</button>
        </div>
        </div>
      </div>
    </div>
  </div>
 
 <input type="hidden" id="path" value=<%=path%>>
 <input type="hidden" id="rolesid" value=<%=rolesid%>> 
 
</body>
<script type="text/javascript">


 /* $('#tb_departments').on('click-row.bs.table', function (e, row, element) {  
	  var rolesid=$("#rolesid").val(); 
	 var path =$("#path").val();
	 //alert(row.ID);
	 window.open(path+'/getQcAbnormality/getAbnormality.do?rolesid='+rolesid+'&eFBid='+row.iID+'&source=2&vore=1',"_self"); 
});  */
 
 //0-查看；1-编辑
  function getAbnormality(i){
	  /* alert($(this).parentNode.parents("tr").html()); */
	  var index =this.parentNode;
	  console.log(index);
	  var rolesid=$("#rolesid").val(); 
	  var path =$("#path").val();
	  //window.open(path+'/getQcAbnormality/getAbnormality.do?rolesid='+rolesid+'&eFBid='+row.iID+'&source=2&vore='+i,"_self"); 
  }

  function creatTable() {
      $('#tb_departments').bootstrapTable({ 
        url: 'getQcAbnormality/getFeedBackList.do', //请求后台的URL（*）
        method: 'post',                     //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: false,                   //是否显示分页（*）
        sortable: true,                    //是否启用排序
        sortOrder: "asc",                   //排序方式
        //queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: false,
        showColumns: false,                  //是否显示所有的列
        showRefresh: false,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        //height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,					//是否显示父子表
        columns: [{
          field: 'cBillCode',
          title: '反馈单号'
        } , {
          field: 'iState',
          title: '状态',
          formatter:function(value,row,index){
 		     if(row.iState==0){
 		    	 return '新建未提交';
 		     }else if(row.iState==10){
 		    	return '已提交待审核';
 		     }else if(row.iState==20){
 		    	return '已审核待结案';
		     }else if(row.iState==30){
		    	 return '已结案';
		     }else{
		    	 return'作废';
		     }
 		 }
        } , {
          field: 'cProduceOrder',
          title: '生产订单'
        } , {
            field: 'cProductNum',
            title: '产品编号'
        } , {
            field: 'cProductName',
           	width: '20%',
            title: '产品名称',    
        }, {
            field: 'cver',
            title: '版本'
        }, {
            field: 'cFBDepartment',
            title: '反馈部门'
        }, {
            field: 'cFBPerson',
            title: '反馈人'
        }, {
            field: 'dFBDate',
            title: '反馈时间'
        },{
            field: 'iID',
            title: 'iID',
            visible:false
        },{
            field: 'iID',
            title: '操作',
            events: operateEvents,
            formatter:function(value,row,index){
    		     return '<button id="TableView" class="btn btn-default">查看</button>&nbsp;<button id="TableEditor"  class="btn btn-default">编辑</button>'
    		 }
        }     
        ]
      });
    };
   
   $(function(){creatTable();}) 
   
   window.operateEvents ={
	  
	    "click #TableView":function(e,vlaue,row,index){
	    	var rolesid=$("#rolesid").val(); 
	   	    var path =$("#path").val();
	  	  	window.open(path+'/getQcAbnormality/getAbnormality.do?rolesid='+rolesid+'&eFBid='+row.iID+'&source=2&vore=0',"_self"); 
	   },
		"click #TableEditor":function(e,vlaue,row,index){
			var rolesid=$("#rolesid").val(); 
		 	var path =$("#path").val();
			window.open(path+'/getQcAbnormality/getAbnormality.do?rolesid='+rolesid+'&eFBid='+row.iID+'&source=2&vore=1',"_self"); 
	   }
   }
   
</script>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

  </body>
</html>
