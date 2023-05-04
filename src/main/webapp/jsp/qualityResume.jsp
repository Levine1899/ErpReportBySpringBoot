<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String rolesid=request.getParameter("rolesid");
    String techname = request.getParameter("techname");
    String productcode = request.getParameter("productcode");
%>
<%@ page import="java.NET.*" %>
<%@ page import="Java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>质量履历</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="Css/jquery.page.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style1.css" />
    <link rel="stylesheet" href="Css/signature-pad.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
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
    .divStyle {
        position: static;
        float: left;
        height: 300px;
        width: 1000px;
        border-style: solid;
        border-width: thin;
        border-color: White;
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

    #Table1 tr{
        height:30px;
    }
    #Table1 td{
        border-width: 1px;
        padding:3px;
        border-style: solid;
        border-color:#ddd;
        text-align: center;
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
</style>
<body>

<div class="top2">
    <div class="logo">
        <img src="img/logo1.png" style="width: 214px;height: 36px;position: relative;left: -12%;" title="悟略科技" />
    </div>
    <div class="top3">
        <div class="page-header">
            <h1 style="height:50px;background:#F79646;line-height: 45px;text-align: center;color:#FFFFFF">产品质量履历</h1>
            <div style="margin-top:30px">
            </div>
        </div>
        <div id="headTable">
            <table id="tb_departments" class="table table-bordered" ></table>
        </div>
    </div>
    <%--查看框--%>
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="height: 700px;width:1020px;margin-left:-210px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="updateModalLabel">
                        浏览图片
                    </h4>
                </div>
                <div class="modal-body" style="height: 100%;">
                    <div class="form-group">
                        <div id="showPhoto"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input  id="rolesid" type="hidden" value=<%=rolesid%>>
    <input  id="techname" type="hidden" value=<%=techname%>>
    <input  id="productcode" type="hidden" value=<%=productcode%>>
</body>
<script type="text/javascript">
    var path=$("#path").val();
    var rolesid =$("#rolesid").val();
    var techname = $("#techname").val();
    var productcode =$("#productcode").val();



    function firstList(){

        var dOnDate = "0";
        var Top = "0";
        var pCode = "";

        var opt = {
            url: 'resumeGetMain.list?techname='+techname+'&productcode='+productcode+'&Top='+Top+'&dOnDate='+dOnDate+'&pCode='+pCode,  silent: true,
        };
        $('#tb_departments').bootstrapTable('removeAll');
        $("#tb_departments").bootstrapTable('refresh', opt);
    }


    function creatTable() {
        $('#tb_departments').bootstrapTable({
            url: 'resumeGetMain.list?techname='+techname+'&productcode='+productcode+'&Top='+3+'&dOnDate='+1, //请求后台的URL（*）
            method: 'post',                     //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            theadClasses: "thead-light",         //这里设置表头样式
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: false,                   //是否显示分页（*）
            sortable: false,                    //是否启用排序
            sortOrder: "asc",                   //排序方式
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            //search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            // showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            //showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,					//是否显示父子表
            columns: [{
                title : '序号',
                align: "center",
                width: 80,
                formatter: function (value, row, index) {
                    //获取每页显示的数量
                    var pageSize=$('#tb_departments').bootstrapTable('getOptions').pageSize;
                    //获取当前是第几页
                    var pageNumber=$('#tb_departments').bootstrapTable('getOptions').pageNumber;
                    //返回序号，注意index是从0开始的，所以要加上1
                    return pageSize * (pageNumber - 1) + index + 1;
                }},
                {
                    field: 'dOnDate',
                    title: '发生时间'
                } , {
                    field: 'cSourceType',
                    title: '反馈来源'
                }  , {
                    field: 'cProduceOrder',
                    title: '生产订单'
                }, {
                    field: 'cProductCode',
                    title: '产品编号'
                } , {
                    field: 'cRespCorp',
                    title: '责任厂商',
                    visible:false
                }, {
                    field: 'iVers',
                    title: '产品版本',
                }, {
                    field: 'cRespTech',
                    title: '责任工序',
                }, {
                    field: 'cProblem',
                    title: '问题反馈信息'
                }, {
                    field: 'cReason',
                    title: '原因',
                    visible:false
                }, {
                    field: 'nLossMoney',
                    title: '损失金额'
                }, {
                    field: 'cRespPerson',
                    title: '责任人'
                },
                {
                    field: 'operate',
                    title: '操作',
                    width: 120,
                    align: 'center',
                    valign: 'middle',
                    formatter: actionFormatter,
                }
            ]
        });
    };

    function actionFormatter(value, row, index) {
        var id = index;
        var data = JSON.stringify(row);
        var result = "";
        result += "<a href='javascript:;' class='btn btn-xs green' onclick=\"EditViewById('" + row + "','" + id + "')\" title='查看图片'><span class='glyphicon glyphicon-search'>&nbsp;查看图片</span></a>";
        return result;
    }
    function EditViewById(row, index){
        var data = JSON.stringify($("#tb_departments").bootstrapTable('getData')); //获取全部数据
        var data_json = JSON.parse(data);
        //根据index找到对应行数据
        var  cBillCode = data_json[index].cBillCode;
        var jsonParamsSlt;

        $.ajax({

            dataType: "json",
            url: '<%=basePath%>/resumePicture/qualityGet.do?cBillCode='+cBillCode,
            type:"POST",
            async: false,
            data: {},
            dataType: "json",
            success:function(data){
                jsonParamsSlt = data.jsonParamsSlt;
            }
        })

        //弹出修改模态框，非新增模态框
        $('#updateModal').modal('show');
        document.getElementById("showPhoto").innerHTML = "";
        //var jsonParamsSlt = "/images/temporary/SLT_P_20190809_171342-1565342056034.jpg,/images/temporary/SLT_P_20190809_171346-1565342055774.jpg,/images/temporary/SLT_P_20190809_171342-1565342056034.jpg";
        var resultPicture = jsonParamsSlt.split(",");
        var divImg = '<div class="divStyle">';
        for (var i = 0; i < resultPicture.length; i++) {
            divImg += '<img src="' + resultPicture[i] + '" />';
        }
        divImg += '</div>';
        document.getElementById("showPhoto").innerHTML += divImg;
    }
    $(function(){creatTable();})
</script>
<script src="js/signature_pad.js"></script>
</body>
</html>
