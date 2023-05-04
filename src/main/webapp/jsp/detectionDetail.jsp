<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首检单列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<!-- <link rel="stylesheet" href="Css/zhijianstyle.css"> -->
   <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">

    <script type="text/javascript" src="js/jquery.js"></script>
   <!-- <script type="text/javascript" src="Js/jquery2.sorted.js"></script>-->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.page.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
  </head>
  <style type="text/css">
       body {font-size: 20px;
            font-size: 20px;
            padding-bottom: 40px;
            background-color:#F3F6F9;
        }
        
        .top2 {
            position: relative;
            top: 0px;
            width: 100%;
            height: 77px;
            text-align: center;
            background-color: #2B3443
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
        }
         .aaaa tr:nth-child(even) {  
        	background: White;  
   		 }  
    	.aaaa tr:nth-child(odd) {  
        	background: #e8eff7;  
   		 }
   		 .table tr:nth-child(odd) {  
        	background: #e8eff7;  
   		 }
        .table tr:nth-child(even) {  
        	background: White;  
   		 } 
        .aaaa td{
            border-width: 1px;
            padding:0px;
            border-style: solid;
            border-color:#8888A1;
            text-align: center;
            /*  float: left; */
            position:relative;
            line-height: 30px;
            font-size:14px;
            vertical-align:middle
        }
      
        .table td{
            border-width: 1px;
            padding:0px;
            border-style: solid;
            border-color:#8888A1;
            font-family: 微软雅黑;
            text-align: center;
            /*  float: left; */
            position:relative;
            line-height: 30px;
            font-size:14px;
            vertical-align:middle
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
            position: relative;
            top: 1%;
            height: 40px;
            width: 100%;
            color: #3C3D3F;
            font-size: 22px;
            text-align: left;
        }
  

        input{
            font-family: 宋体;
            font-size:18px;
            border-radius: 0;
            text-align:center;

        }
        #signature-pad {
            visibility:hidden;
        }
        #showimg{
            position: relative;
            left: -28%;
            top: 35%;
        }
        .top1 {
               position: relative;
			    width: 100%;
			    height: 50px;
			    top: 0%;
			    text-align: center;
			    font-size: 17px;
			    font-family: 楷体;
			    color: #FFFFFF;
			    
        }
        .top3 {
                position: relative;
    			top: 8px;
    			width: 100%;
    			height: 45%;
    			overflow: auto;
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
        border-width: 1px;
            padding:0px;          
            border-color:#8888A1;
            font-family: 微软雅黑;
            text-align: center;
            /*  float: left; */
            position:relative;
            line-height: 30px;
            font-size:14px;
            vertical-align:middle
       }
       .formTable{
            /* position: relative;*/
            font-family: verdana,arial,sans-serif;
            color:#333333;
            border-width: 0px;
            border-color: #F0F0F0;
            border-collapse: collapse;
        }
        .sjxxxxmx{
        	position:relative;
        }
        #img1{
        	position:absolute;
        	background:url(img/qianming3.png) no-repeat center center;
        	width:230px;
        	height:88px;
        	left: 84%;
    		top: 0px;
    		display: none;
        }
        #img2{
        	position:absolute;
        	background:url(img/qianming3.png) no-repeat center center;
        	width:230px;
        	height:88px;
        	left: 84%;
    		top: 102px;
    		display: none;
        }
        #img3{
        	position:absolute;
        	background:url(img/qianming3.png) no-repeat center center;
        	width:230px;
        	height:88px;
        	left: 84%;
    		top: 204px;
    		display: none;
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
        <input type="hidden" id="userId" value="<%=request.getParameter("rolesid")%>">
        <input type="hidden" id="base64" value="1">
    </div> 
    </div>
    <div class="top1">
    	<table class="formTable" style="width:100%;height: 50px;font-size: 14px;">
    		<tr>
    			<td style="height:40px">生产订单:</td>
    			<td style="height:40px"><input id="order_num" type="text" value="" style="width:150px;height:30px;"></td>
    			<td style="height:40px">开始时间:</td>
    			<td style="height:40px"><input id="begin_time" type="date" value="" style="width:150px;height:30px;"></td>
    			<td style="height:40px">结束时间:</td>
    			<td style="height:40px"><input id="end_time" type="date" value="" style="width:150px;height:30px;"></td>
    			<td style="height:40px">单据类型:</td>
    			<td style="height:40px">   			
    			<select style="width:150px;height:30px;" id="checkType">
    				<option value="0">首检单</option>
    				<option value="1">巡检单</option>
    			</select>
    			</td style="height:40px">
    			<td style="height:40px"><input type="button" value="查询" style="width:50px;height:30px;" onclick="firstList(1)"></td>
    	
    		</tr>
    	</table>
    </div>
     <div class="top3">
        <div class="title2"><img src="img/grid.png" style="width: 24px;height: 24px;position: relative;left: 1%;top: 7%;"/> &nbsp;&nbsp;&nbsp;首检单列表</div>
        <table class="table"  style="width:98%;position:relative;left: 1%;">
        
                    
        </table>
        <div id="page"></div>
        </div>
    <div class="top4">
        <div class="sjxxxx"><img src="img/grid.png" style="width: 21px;height: 21px;position: relative;left: 1%;top: 9%;"/>&nbsp;&nbsp;&nbsp;首检详细信息</div>
        <div class="sjxxxxmx">
            <table id="bb" class="aaaa" STYLE="position: relative;top: 1%; width:80% ;left:1%">
                
            </table>
            <img id="img1" src="">
            <img id="img2" src="">
            <img id="img3" src="">
        </div>
        </div>
</div>
<input type="hidden" id="pages" value="">
</body>
<script type="text/javascript">
		
	firstList(1);
    function firstList(i){
    	var order_num = $("#order_num").val();
		var begin_time = $("#begin_time").val();
		var end_time = $("#end_time").val();
		var checkType = parseInt($("#checkType").val());
		var dhmc ;
		if(checkType==0){dhmc='首检单号'}else{dhmc='巡检单号'}
		$("table.table").empty();
		$("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
					'<td style="height:30px;">'+dhmc+'</td>'+
					'<td style="height:30px;">生产订单</td>'+
	                '<td style="height:30px;">作业名称</td>'+
	                '<td style="height:30px;">机台</td>'+
	                '<td style="height:30px;">工序</td>'+
	                '<td style="height:30px;">作业数量</td>'+
	                '<td style="height:30px;">已完成数量</td>'+
	                '<td style="height:30px;">作业状态</td>'+
	                '<td style="height:30px;">首检人</td>'+
	                '<td style="height:30px;">机台开始时间</td>'+
	                '<td style="height:30px;">首检时间</td>'
	            	);
    	 $.ajax({
       		 url:"selectDetectionMain.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&checkType="+checkType+"&indexPage="+i,	
       		dataType: "json",
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
           	            	getPage(page);
           	            }
           	        });
       			}
       			console.log(data);	
       			var i;
           		for(i=0;i<data.length;i++){	
					var status;
           			if(data[i].iJobStatus==0){
           				status='合格';
           			}else if(data[i].iJobStatus==1){
           				status='不合格';
           			}else if(data[i].iJobStatus==2){
           				status='让步接收';
           			}
           			
           			
           				$("table.table").append('<tr style="background-color:#E8EFF7"><td style="height:30px;display:none">'+data[i].ID+'</td>'+
           						'<td style="height:30px;">'+data[i].RowNum+'</td>'+
           						'<td style="height:30px;">'+data[i].iDetectionNum+'</td>'+
           		                '<td style="height:30px;">'+data[i].iOrder_Num+'</td>'+
           		                '<td style="height:30px;">'+data[i].cJob_name+'</td>'+
           		                '<td style="height:30px;">'+data[i].cjzmc+'</td>'+
           		                '<td style="height:30px;">'+data[i].cProcess+'</td>'+
           		                '<td style="height:30px;">'+data[i].iJob_Num+'</td>'+
           		                '<td style="height:30px;">'+data[i].iDone_Num+'</td>'+
           		                '<td style="height:30px;">'+status+'</td>'+
           		                '<td style="height:30px;">'+data[i].czgxm+'</td>'+
           		                '<td style="height:30px;">'+data[i].dBoard_Time+'</td>'+
           		                '<td style="height:30px;">'+data[i].dFirstTime+'</td>'
           		            	);
           			           			
           			}
           		$("table.table tr").not("table.table tr:first-child").click(function(){
         		  		  var $this = $(this);
         					var path =$('#aaa').val();
         		  		//alert($this.find('td:eq(0)').text());
         		  		//alert($this.find('td:eq(2)').text());
         					var id = $this.find('td:eq(0)').text();
         					$("table.aaaa").empty();
         					//alert(id);
         					 $.ajax({
         				   		 url:"selectDetectionDetail.list?id="+id,
         				   		dataType: "json",
         				   		async: false,
         				   		success:function(data){
         				   			$("table.aaaa").append('<tr style="background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
         				   		            '<td style="height:30px;">检验项目</td>'+
         				   		            '<td style="height:30px;">标准范围值</td>'+
         				   		            ' <td style="height:30px;">检验值</td>'+
         				   		            '<td style="height:30px;">结果</td>'+
         				   		            '<td style="height:30px;">备注</td>');
         				   			var aa = data;
         				   			var i;
         				   		if(checkType==0){
         				   		var img1=data[0].nBase_Name;
     				   			var img2=data[0].nBase_Name1;
     				   			var img3=data[0].nBase_Name2;
     				   			if(data[0].nBase_Name==1){
     				   			img1='';
     				   			}if(data[0].nBase_Name1==1){
     				   			img2='';
     				   			}if(data[0].nBase_Name2==1){
     				   			img3='';
     				   			}
     				   			$("#img1").attr('src', img1);
     				   			$("#img2").attr('src', img2);
     				  		 	$("#img3").attr('src', img3);
  				   				$("#img1").show();
     				   			$("#img2").show();
     				   			$("#img3").show();
     				   			}else{
     				   			$("#img1").hide();
     				   			$("#img2").hide();
     				   			$("#img3").hide();
     				   				}

         				   			
         				   			
									
         				       		for(i=0;i<data.length;i++){
         				       		var cfinally ;
         				   			if(aa[i].cFinally==0){
         				   				cfinally="合格";
         				   			}else if(aa[i].cFinally==1){
             				   			cfinally="不合格";
             				   		}else{
             				   			cfinally="未判断";
             				   		}
         				   			
         				       			$("table.aaaa").append('<tr style="background-c olor: #ffffff;"><td style="height:30px;">'+(i+1)+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cProgram_Name+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cStandard_Value+'</td>'+
         				    		            ' <td style="height:30px;">'+aa[i].cActual_Value+'</td>'+
         				    		            '<td style="height:30px;">'+cfinally+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cRemarks+'</td>');
         				        }
         				   		}
         				   	})     
         		  		  })
            	
            }
       		
       	}) 
    }
    
    function getLocalTime(nS) {
  	  var mm = new Date(nS);
        var tt= mm.format('yyyy-MM-dd h:m:s');
        return tt; 
    }
    function getPage(i){
    	var order_num = $("#order_num").val();
		var begin_time = $("#begin_time").val();
		var end_time = $("#end_time").val();
		var checkType = $("#checkType").val();
		$("table.table").empty();
		$("table.table").append('<tr style="font-weight: bold; background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
					'<td style="height:30px;">首检单号</td>'+
					'<td style="height:30px;">生产订单</td>'+
	                '<td style="height:30px;">作业名称</td>'+
	                '<td style="height:30px;">机台</td>'+
	                '<td style="height:30px;">工序</td>'+
	                '<td style="height:30px;">作业数量</td>'+
	                '<td style="height:30px;">已完成数量</td>'+
	                '<td style="height:30px;">作业状态</td>'+
	                '<td style="height:30px;">首检人</td>'+
	                '<td style="height:30px;">机台开始时间</td>'+
	                '<td style="height:30px;">首检时间</td>'
	            	);
		console.log("selectDetectionMain.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&checkType="+checkType+"&indexPage="+i);
    	 $.ajax({
       		 url:"selectDetectionMain.list?order_num="+order_num+"&begin_time="+begin_time+"&end_time="+end_time+"&checkType="+checkType+"&indexPage="+i,	
       		dataType: "json",
       		async: false,
       		success:function(data){
       			var detectionJson = data;//eval(data);
       			
       			var i;
           		for(i=0;i<data.length;i++){	
					var status;
           			if(data[i].iJobStatus==0){
           				status='合格';
           			}else if(data[i].iJobStatus==1){
           				status='不合格';
           			}else if(data[i].iJobStatus==2){
           				status='让步接收';
           			}
           					
           				$("table.table").append('<tr style="background-color:#ffffff"><td style="height:30px;display:none">'+data[i].ID+'</td>'+
           						'<td style="height:30px;">'+data[i].RowNum+'</td>'+
           						'<td style="height:30px;">'+data[i].iDetectionNum+'</td>'+
           		                '<td style="height:30px;">'+data[i].iOrder_Num+'</td>'+
           		                '<td style="height:30px;">'+data[i].cJob_name+'</td>'+
           		                '<td style="height:30px;">'+data[i].cjzmc+'</td>'+
           		                '<td style="height:30px;">'+data[i].cProcess+'</td>'+
           		                '<td style="height:30px;">'+data[i].iJob_Num+'</td>'+
           		                '<td style="height:30px;">'+data[i].iDone_Num+'</td>'+
           		                '<td style="height:30px;">'+status+'</td>'+
           		                '<td style="height:30px;">'+data[i].czgxm+'</td>'+
           		                '<td style="height:30px;">'+data[i].dBoard_Time+'</td>'+
           		                '<td style="height:30px;">'+data[i].dFirstTime+'</td>'
           		            	);			        
               			
           			}
           		$("table.table tr").not("table.table tr:first-child").click(function(){
         		  		  var $this = $(this);
         					var path =$('#aaa').val();
         		  		//alert($this.find('td:eq(0)').text());
         		  		//alert($this.find('td:eq(2)').text());
         					var id = $this.find('td:eq(0)').text();
         					$("table.aaaa").empty();
         					//alert(id);
         					 $.ajax({
         				   		 url:"selectDetectionDetail.list?id="+id,
         				   		dataType: "json",
         				   		async: false,
         				   		success:function(data){
         				   			$("table.aaaa").append('<tr style="background-color: #3E6390; color: #FFFFFF;"><td style="height:30px;">序号</td>'+
         				   		            '<td style="height:30px;">检验项目</td>'+
         				   		            '<td style="height:30px;">标准范围值</td>'+
         				   		            ' <td style="height:30px;">检验值</td>'+
         				   		            '<td style="height:30px;">结果</td>'+
         				   		            '<td style="height:30px;">备注</td>');
         				   			var aa = data;
         				   			var i;
         				   			var img1=data[0].nBase_Name;
         				   			var img2=data[0].nBase_Name1;
         				   			var img3=data[0].nBase_Name2;
         				   			if(data[0].nBase_Name==1){
         				   			img1='';
         				   			}if(data[0].nBase_Name1==1){
         				   			img2='';
         				   			}if(data[0].nBase_Name2==1){
         				   			img3='';
         				   			}
         				   			$("#img1").attr('src', img1);
         				   			$("#img2").attr('src', img2);
         				  		 	$("#img3").attr('src', img3);
      				   				$("#img1").show();
         				   			$("#img2").show();
         				   			$("#img3").show();
         				   			
									
         				       		for(i=0;i<data.length;i++){
         				       		var cfinally ;
         				   			if(aa[i].cFinally==0){
         				   				cfinally="合格";
         				   			}else if(aa[i].cFinally==1){
             				   			cfinally="不合格";
             				   		}else{
             				   			cfinally="未判断";
             				   		}
         				   			
         				       			$("table.aaaa").append('<tr style="background-c olor: #ffffff;"><td style="height:30px;">'+(i+1)+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cProgram_Name+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cStandard_Value+'</td>'+
         				    		            ' <td style="height:30px;">'+aa[i].cActual_Value+'</td>'+
         				    		            '<td style="height:30px;">'+cfinally+'</td>'+
         				    		            '<td style="height:30px;">'+aa[i].cRemarks+'</td>');
         				        }
         				   		}
         				   	})     
         		  		  })
            	
            }
       		
       	}) 
    }
    
   
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);
</script>
<script src="js/signature_pad.js"></script>
<script src="js/app.js"></script>

  </body>
</html>
