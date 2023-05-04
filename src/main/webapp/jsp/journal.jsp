<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String rolesid=request.getParameter("rolesid");
String journalid = request.getParameter("journalid");
String journaltype = request.getParameter("journaltype");
%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>质检日报</title>
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
	    top: 50px;
	    left: 0px;
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
    overflow:auto;
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
  .personName{
        position: relative;
	    background-color: #fff;
	    text-align: left;
	    height: 100px;
	    top: -20px;
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
    <div class="top3">
        <div class="page-header">
    <h1><small>质检日报</small></h1>
   	<a style="display:block;position:relative;left:85%;top:-30px;height:1px;width:100px;"href="javascript:history.go(-1);">返回上层</a>
  </div>
  <div id="headTable">
    <table id="Table1">
      <tr>
        <td>日期</td>
        <td><input id="date" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>班次</td>
        <td><input id="banci" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>日报类型</td>
        <td><input id="type1" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>质检人员</td>
        <td><input id="qcperson" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
      </tr>
      <tr>
        <td>上班时间</td>
        <td><input id="timeup" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>下班时间</td>
        <td><input id="timedown" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>上班时长(H)</td>
        <td><input id="timedate" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>状态</td>
        <td><input id="status" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
      </tr>
      <tr>
        <td>检验批次</td>
        <td><input id="allpici" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>合格批次</td>
        <td><input id="hegepici" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td>检验合格率</td>
        <td><input id="hegelv" style="width:100%;border:0;" type="text" value="暂无数据" readonly></input></td>
        <td></td>
        <td></td>
      </tr>
    </table>

  </div>

  <ul id="myTab1" class="nav nav-tabs" style="font-size:17px">
    <li class="active"><a href="#home1" data-toggle="tab">质检明细</a></li>
    <!-- <li><a href="#profile1" data-toggle="tab">质检汇总</a></li>
	<li ><a href="#home2" data-toggle="tab">人员</a></li> -->
  </ul>
  <div id="myTabContent1" class="tab-content" style="background-color: #fff;height:400px;">
    <div class="tab-pane fade in active" id="home1">

       <table id="tb_departments" class="table table-bordered" ></table>
      </div>
    <div class="tab-pane fade" id="profile1">
    
     
      
      </div>
    <div class="tab-pane fade" id="home2">
      <div class="personName">
      <h1>xz</h1>
      	 <!-- <table id="tb_department" class="table table-bordered" ></table> -->
      </div>
    </div>
    
  </div>
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
  <input  id="rolesid" type="hidden" value=<%=rolesid%>> 
  <input  id="journalid" type="hidden" value=<%=journalid%>> 
  <input  id="journaltype" type="hidden" value=<%=journaltype%>> 
  <input  id="type" type="hidden" value=""> 
</body>
<script type="text/javascript">
var userid = $("#rolesid").val();


list($("#journalid").val());

$("#type").change(function(){

	list($("#type").val());
	var type = $("#type").val();
	var journalid = $("#journalid").val();
	
	var opt = {
	        url: 'journarlGetDetailByid.list?id='+journalid+'&journalType='+type,
	        silent: true,
	        query:{	
	        	journalType:type,
	            level:2
	        }
	    };

	    $("#tb_departments").bootstrapTable('refresh', opt);
})

function list(i){ 
	
	 $.ajax({
	   		url:encodeURI(encodeURI("journarlGetMainByid.list?journalId="+i)),
	   		dataType: "json",
	   		async: false,
	   		success:function(data){
	   			
	   			$("#type").val(data[0].type);
	   			$("#journalid").val(data[0].id);
	   			$("#date").val(data[0].dWorkDate);
	   			$("#banci").val(data[0].cClasses);
	   			$("#type1").val(data[0].iJournalType);
	   			$("#qcperson").val(data[0].iQcPersonnelName);
	   			$("#timeup").val(data[0].dUpworkTime);
	   			$("#timedown").val(data[0].dDownloadTime);
	   			$("#timedate").val(data[0].cWorkingHours);
	   			$("#status").val(data[0].iStatus);
	   			$("#allpici").val(data[0].sumAmount);
	   			$("#hegepici").val(data[0].qualifiedAmount);
	   			$("#hegelv").val(data[0].hgl);
	   			}
	   		})
}

    
    //初始化Table
    function creatTable() {
    	var journalid = $("#journalid").val();
    	var type = $("#type").val();
    	//alert(journalid);
      $('#tb_departments').bootstrapTable({
        url: 'journarlGetDetailByid.list?id='+journalid+'&journalType='+type,         //请求后台的URL（*）
        method: 'post',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: false,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        //queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        //clickToSelect: true,                //是否启用点击选中行
        height: 40,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
        columns: [{
          field: 'RowNum',
          title: '序号'
        } , {
          field: 'dQcTime',
          title: '检验时间'
        } , {
          field: 'type',
          title: '检验类型'
        }, {
          field: 'cBillCode',
          title: '质检单号'
        },{
          field: 'cBillCode_Buy',
          title: '来源单号'
        },{
          field: 'iJournalType',
          title: '来源类型'
        },{
          field: 'cMaterialName',
          title: '检验名称'
        },{
          field: 'cMaterialUnit',
          title: '单位'
        },{
          field: 'nAmount',
          title: '送检数量'
        },{
          field: 'nSamplingAmount',
          title: '抽检数量'
        },{
          field: 'nBadAmount',
          title: '不合格数量',
          formatter:function(value,row,index){
        	  		if(row.iJournalType=="成品出库"){
        	  			return row.nSamplingAmount-row.nBadAmount;
        	  		}else{
        	  			return row.nBadAmount;
        	  		}
        		     
        		 }
        },{
          field: 'iResult',
          title: '检验结果'
        },{
          field: 'laiyuan',
          title: '来源单位'
        } ]
      });
      
      $('#tb_departments').bootstrapTable('refresh');
      
    };
	creatTable();
	

    //得到查询的参数
    /*  function creatTable1() {
    	var journalid = $("#journalid").val();
    	var type = $("#type").val();
    	//alert(journalid);
      $('#tb_department').bootstrapTable({
        url: 'js/json.json',         //请求后台的URL（*）
        method: 'post',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        //queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        //clickToSelect: true,                //是否启用点击选中行
        height: 40,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
        columns: [{
          field: 'Level2',
          title: '姓名'
        } , {
          field: 'Level1',
          title: '上班时间'
        }  ]
      });
      
      $('#tb_departments').bootstrapTable('refresh');
    };
	creatTable1(); */
</script>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

  </body>
</html>
