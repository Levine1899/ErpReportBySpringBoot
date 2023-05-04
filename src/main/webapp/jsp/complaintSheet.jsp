<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>客户投诉反馈单</title>

    <link rel="stylesheet" type="text/css" href="Css/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="Css/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Css/bootstrap-table/1.14.2/bootstrap-table.js"></script>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-table/1.14.2/bootstrap-table.css"/>
    <script type="text/javascript" src="Css/bootstrap-table/1.14.2/locale/bootstrap-table-zh-CN.js"></script>

    <link rel="stylesheet" type="text/css" href="Css/bootstrap-editable.css"/>
    <script type="text/javascript" src="js/bootstrap-editable.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-editable.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
</head>
<style type="text/css">
    body {
        font-family: "微软雅黑";
        margin-left: 20px;
        margin-right: 20px;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .main_col1, .main_col2, .main_col3, .main_col4, .main_col5, .main_row4 {
        border: 0px solid;
        display: inline-block;
        padding-left: 120px;
        padding-right: 5px;
        margin-left: 5px;
        margin-right: 5px;
        min-width: 200px;
    }
    .main_row1, .main_row2, .main_row3 {
        margin-bottom: 10px;
    }
    .name {
        font-weight: bold
    }
    #headerinfo {
        display: flex;
        display: -ms-flexbox;
        display: -moz-box;
        display: -webkit-box;
    }
    #baseinfo {
        flex: 8;
        -ms-flex: 8;
        -moz-box-flex: 8;
        -webkit-box-flex: 8;
    }
    .table {
        font-size: 16px;
    }
    .editableform .form-control {
        width: auto;
        height: auto;
        font-size: 18px;
    }
    tr .table.table-striped.table-bordered.table-hover {
        margin-bottom: 20px !important;
    }
</style>
<body>
<div class="panel panel-danger">
    <div class="panel-heading">
        <h2 class="panel-title" style="text-align: center; font-weight: bold">客户投诉反馈单</h2>
    </div>
<%--    请选择窗口--%>
    <div class="panel-body">

        <!-- 模态框（Modal）删除责任对象提示框 -->
        <div class="modal fade" id="messageBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div id="modal-header-panel" class="panel panel-info" style="margin: 0px">
                            <div class="panel-heading">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h3 class="modal-title" id="myModalLabel" style="text-align: center">
                                    异常反馈单 - 提示
                                </h3>
                            </div>
                            <div class="modal-body msgContent">
                                <!--提示内容的位置-->
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭
                                </button>
                            </div>
                        </div>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="modal fade" id="modalSelector" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div id="toolbarSelector" class="btn-group">
                            <button type="button" class="btn btn-primary" onclick="modalSelected()">
                                <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>确定
                            </button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true" ></span>取消
                            </button>
                        </div>
                        <div class="panel panel-info" style="margin: 0px">
                            <div class="panel-heading">
                                <button type="button btn-info" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h4 class="modal-title" style="text-align: center">
                                    请初始化标题
                                </h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-striped table-hover" id="tableSelector">
                                </table>
                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="headerinfo">
            <div id="baseinfo" class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">基本信息</h3>
                </div>
                <div class="panel-body">
                    <div class="main_col1">
                        <div id="gp_exfillcode" class="main_row1">
                            <div id="name_exfillcode" class="name">反馈单号</div>
                            <div id="value_exfillcode">暂无数据</div>
                        </div>
                        <div id="gp_ordercode1" class="main_row2">
                            <div id="name_ordercode1" class="name">销售订单</div>
                            <div id="value_ordercode1">暂无数据</div>
                        </div>
                        <div id="gp_ordercode2" class="main_row2">
                            <div id="name_ordercode2" class="name">产品编号</div>
                            <div id="value_ordercode2">暂无数据</div>
                        </div>
                        <div id="gp_ordercode3" class="main_row2">
                            <div id="name_ordercode3" class="name">产品名称</div>
                            <div id="value_ordercode3">暂无数据</div>
                        </div>
                        <div id="gp_workcenter" class="main_row3">
                            <div id="name_workcenter" class="name">单位</div>
                            <div id="value_workcenter">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col2">
                        <div id="gp_department" class="main_row1">
                            <div id="name_department" class="name">客户名称</div>
                            <div id="value_department">暂无数据</div>
                        </div>
                        <div id="gp_productcode" class="main_row2">
                            <div id="name_productcode" class="name">客户品名</div>
                            <div id="value_productcode">暂无数据</div>
                        </div>
                        <div id="gp_station1" class="main_row3">
                            <div id="name_station1" class="name">客户料号</div>
                            <div id="value_station1">暂无数据</div>
                        </div>
                        <div id="gp_station2" class="main_row3">
                            <div id="name_station2" class="name">版本</div>
                            <div id="value_station2">暂无数据</div>
                        </div>
                        <div id="gp_station3" class="main_row3">
                            <div id="name_station3" class="name">合同号</div>
                            <div id="value_station3">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col3">
                        <div id="gp_person" class="main_row1">
                            <div id="name_person" class="name">反馈人</div>
                            <div id="value_person">暂无数据</div>
                        </div>
                        <div id="gp_productname" class="main_row2">
                            <div id="name_productname" class="name">反馈部门</div>
                            <div id="value_productname3">暂无数据</div>
                        </div>
                        <div id="gp_shift" class="main_row3">
                            <div id="name_shift" class="name">业务部门</div>
                            <div id="value_shift">暂无数据</div>
                        </div>
                        <div id="gp_shift1" class="main_row3">
                            <div id="name_shift1" class="name">业务员</div>
                            <div id="value_shift1">暂无数据</div>
                        </div>
                        <div id="gp_shift2" class="main_row3">
                            <div id="name_shift2" class="name">客服人员</div>
                            <div id="value_shift2">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col4">
                        <div id="gp_billcode" class="main_row1">
                            <div id="name_date" class="name">合同数量</div>
                            <div id="value_date">暂无数据</div>
                        </div>
                        <div id="gp_ver" class="main_row2">
                            <div id="name_ver" class="name">生产数量</div>
                            <div id="value_ver">暂无数据</div>
                        </div>
                        <div id="gp_tech" class="main_row3">
                            <div id="name_tech" class="name">已入库数量</div>
                            <div id="value_tech">暂无数据</div>
                        </div>
                        <div id="gp_tech3" class="main_row3">
                            <div id="name_tech3" class="name">已发货数量</div>
                            <div id="value_tech3">暂无数据</div>
                        </div>
                        <div id="gp_tech2" class="main_row3">
                            <div id="name_tech2" class="name" >反馈不良数量</div>
                            <input id="begin_num" type="text" style="width:90px;height:20px;cursor:pointer;background-color:#ffff00;">
                        </div>
                    </div>
                    <div class="main_col5">
                        <div id="gp_billcode1" class="main_row1">
                            <div id="name_date1" class="name">反馈时间</div>
                            <div id="value_date1">暂无数据</div>
                        </div>
                        <div id="gp_ver1" class="main_row2">
                            <div id="name_ver1" class="name">销售订单时间</div>
                            <div id="value_ver1">暂无数据</div>
                        </div>
                        <div id="gp_tech9" class="main_row3">
                            <div id="name_tech9" class="name">生产订单时间</div>
                            <div id="value_tech9">暂无数据</div>
                        </div>
                        <div id="gp_tech8" class="main_row3">
                            <div id="name_tech18" class="name">客户投诉时间</div>
                            <input id="begin_time" type="text" placeholder="请选择" style="width:90px;height:20px;cursor:pointer;background-color:#ffff00;" onClick="jeDate({dateCell:'#begin_time',isTime:true,format:'YYYY-MM-DD'})"  readonly>


                        </div>
                        <div id="gp_tech1" class="main_row3">
                            <div id="name_tech1" class="name">客户要求处理时间</div>
                            <input id="begin_times" type="text" placeholder="请选择" style="width:120px;height:20px;cursor:pointer;background-color:#ffff00;" onClick="jeDate({dateCell:'#begin_times',isTime:true,format:'YYYY-MM-DD'})"  readonly>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading">
                <h3 class="panel-title">客户反馈</h3>
            </div>
            <div class="panel-body">
                <div id="dt_toolbar" class="btn-group">
                    <button id="btn_ex_add" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                    </button>
                </div>
                <table id="tb_details" class="table table-striped"></table>
            </div>
            <div class="panel-body">
                <div class="checkbox" style="margin-bottom: 5px">
                       <label class="checkbox-inline" style="color: #f00"><input id="lackflag" type="checkbox" onclick="onLackFlagChanged()" />附不良样品</label>
                       <input id="lacknum" type="number" oninput="onLackNumChanged()" readonly="false" style="width: 100px; text-align: right"/></label>
                       <label id="lblackflag">单位</label>
                       <label class="checkbox-inline"style="color: #f00;padding-left: 100px; " ><input id="replenishmflag" type="checkbox"  />附不良(不合格)电子照片</label>
                </div>
            </div>
        </div>
        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading" style="background-color: #dff0d8">
                <h3 class="panel-title">客户诉求</h3>
            </div>
            <div class="panel-body">
                <div>
               <label>书面回复：</label>
                <label class="checkbox-inline" style="color: #000066"><input id="lackflags" type="checkbox"/>无需书面回复</label>
                <label class="checkbox-inline" style="color: #000066"><input id="lackflags1" type="checkbox"/>一般书面回复</label>
                <label class="checkbox-inline" style="color: #000066"><input id="lackflags2" type="checkbox"/>纠正预防措施报告</label>
                <label class="checkbox-inline" style="color: #000066"><input id="lackflags3" type="checkbox"/>8D报告</label>
            </div>
            <div>
                <label>备注说明：</label>
                <textarea class="form-control" id="value_remark6" rows="2" style="min-width: 70%;"style="text-indent:16px"></textarea>
            </div>
        </div>
            <div class="panel-body">
                <div>
                    <label>退/换货/扣款：</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lackflags10" type="checkbox"/>退货不需要补货</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lackflags11" type="checkbox"/>不退货就地销毁</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lackflags21" type="checkbox"/>须补货</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lackflags31" type="checkbox"/>安排现场返工/复检</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lackflagss" type="checkbox" onclick="onLackFlagChangeds()"/>折扣、扣款金额(元)</label>
                    <label class="number-inline"><input id="lacknums" type="number" oninput="onLackNumChangeds()" readonly="false" style="width: 100px; text-align: right"/></label>

                </div>
                <div >
                    <label>备注说明：</label>
                    <textarea class="form-control" id="value_remarks" rows="2" style="min-width: 70%;"style="text-indent:16px"></textarea>
                </div>
            </div>
        </div>
        <div id="headerinfos">
            <div id="baseinfos" class="panel panel-info">
                <div class="panel-heading" style="background-color: #FFE5F3">
                    <h3 class="panel-title">客户信用情况(金额人民币:元)</h3>
                </div>
                <div class="panel-body">
                    <div class="main_col2">
                        <div id="gp_departments" class="main_row1">
                            <div id="name_departments" class="name">客户级别</div>
                            <div id="value_departments"name="value_department" style="width:90px;height:20px;cursor:pointer;background-color:#ffff00;">暂无数据</div>
                        </div>
                        <div id="gp_productcodes" class="main_row2">
                            <div id="name_productcodes" class="name">发货未开票金额</div>
                            <div id="value_productcodes" name="value_productcode">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col1">
                        <div id="gp_exfillcodes" class="main_row1">
                            <div id="name_exfillcodes" class="name">上年度下单总额</div>
                            <div id="value_exfillcodes" name="value_exfillcode">暂无数据</div>
                        </div>
                        <div id="gp_ordercode" class="main_row2">
                            <div id="name_ordercode" class="name">本年度下单总额</div>
                            <div id="value_ordercode">暂无数据</div>
                        </div>
                    </div>

                    <div class="main_col3">
                        <div id="gp_persons" class="main_row1">
                            <div id="name_persons" class="name">欠款总额</div>
                            <div id="value_persons" name="value_person">暂无数据</div>
                        </div>
                        <div id="gp_productnames" class="main_row2">
                            <div id="name_productnames" class="name">超期欠款</div>
                            <div id="value_productnamebbbb"name="value_productnamedsbbbbb">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col4">
                        <div id="gp_billcodes" class="main_row1">
                            <div id="name_dates" class="name">库存总金额</div>
                            <div id="value_dates" name="value_date">暂无数据</div>
                        </div>
                        <div id="gp_vers" class="main_row2">
                            <div id="name_vers" class="name">金额</div>
                            <div id="value_vers" name="value_ver">暂无数据</div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading" style="background-color: #d8e6da">
                <h3 class="panel-title">初步判定</h3>
            </div>
            <div class="panel-body">
                <div>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack" type="checkbox"/>安排退回来直接报废</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack1" type="checkbox"/>退回后返工/复检后重新送货</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack2" type="checkbox"/>补货</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack3" type="checkbox"/>承担折扣、扣款</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack4" type="checkbox"/>安排现场返工/复检</label>
                    <label class="checkbox-inline" style="color: #000066"><input id="lack5" type="checkbox"/>其他</label>
                </div>
            </div>
        </div>

        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading">
                <h3 class="panel-title">部门意见</h3>
            </div>
            <div class="panel-body">
                <div id="dt_toolbara" class="btn-group">
                    <button id="btn_ex_adda" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                    </button>
                </div>
                <table id="tb_detailsa" class="table table-striped"></table>
            </div>
        </div>
        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading" style="background-color: #D1EEEE">
                <h3 class="panel-title">责任对象</h3>
            </div>
            <div class="panel-body">
                <div id="rsp_toolbar_" class="btn-group">
                    <button id="btn_rsp_add" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增责任对象
                    </button>
                    <button id="btn_rsp_del" type="button" class="btn btn-warning">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除责任对象
                    </button>

                </div>
                <table id="tb_resps_" class="table table-striped"></table>
            </div>
        </div>
        <div class="navbar navbar-default navbar-fixed-bottom">
            <div class="panel-heading" style="text-align: center; padding-top: 2px; padding-bottom: 2px">
                <button id="btn_commit" onclick="commitForm(10)" type="button" class="btn btn-success" style="width: 120px; height:40px">保存并提交
                </button>
                <button id="btn_save" onclick="commitForm(0)" type="button" class="btn btn-primary" style="width: 120px; height:40px">保存
                </button>
                <button id="btn_close" onclick="closeForm()" type="button" class="btn btn-danger" style="width: 120px; height:40px">关闭
                </button>
            </div>
        </div>
</div>
</body>

<script type="text/javascript">
     //加载数据
    $(function () {
        loadData();
        initHeadData();
        createTable();
        createTables();
        createTablea();
        $('#btn_ex_add').bind("click", addException);
        $('#btn_rsp_add').bind("click", addRespObject);
        $('#btn_rsp_del').bind("click", delRespObjects);
        $('#btn_ex_adda').bind("click", addExceptions);

        if (1 != editmode) {
            $('#btn_ex_adda').attr("disabled",true);
        }
        if (1 != editmode) {
            $('#btn_ex_add').attr("disabled",true);
            $('#btn_ex_del').attr("disabled",true);
        }
        if (1 != editmode) {
            $('#btn_rsp_add').attr("disabled",true);
            $('#btn_rsp_del').attr("disabled",true);
        }
        if (0 == editmode) {
            $('#btn_commit').attr("disabled",true);
            $('#btn_save').attr("disabled",true);
        }

    });
    // 用于隐藏指定标签
    function hideNoFondTables(classname) {
        $(classname).hide();
    }
    function loadData() {
        jsHead = JSON.parse('${jsData}').bill.head;
        jsDetails = JSON.parse('${jsData}').bill.details;
        jsExceptions = [];
        jsExceptionss = [];
        jsExceptionsa = [];
        for (var i in jsDetails) {
            jsDetails[i].exception["rowindex"] = i;
            jsDetails[i].exception['guid'] = getGUID();
            if (jsDetails[i].hasOwnProperty("respons")) {
                $.each(jsDetails[i].respons, function (index, respItem) {
                    respItem["rowindex"] = index;
                    respItem["guid"] = getGUID();
                    respItem["pguid"] = jsDetails[i].exception['guid'];
                });
            } else {
                jsDetails[i]["respons"] = [];
            }
            jsDetails[i].exception["respons"] = jsDetails[i].respons;
            jsExceptions.splice(jsExceptions.length, 0, jsDetails[i].exception);
        }
        jsClasses = JSON.parse('${jsData}').params.exclasses;
        jsExceptionTypes = [];
        mapTypeParamsID = {};
        jsSubExceptionTypes = {};
        mapSubTypeID = {};
        for (var i in jsClasses) {
            var exTypeItem = {};
            exTypeItem["value"] = jsClasses[i].exceptionType;
            exTypeItem["text"] = jsClasses[i].exceptionType;
            jsExceptionTypes.splice(jsExceptionTypes.length, 0, exTypeItem);
            mapTypeParamsID[jsClasses[i].exceptionType] = jsClasses[i].iParamsID;

            var exSubClasses = jsClasses[i].subclasses;
            var jsSubExceptionTypeGrp = [];
            for (var j in exSubClasses) {
                var exSubTypeItem = {};
                for (var item in exSubClasses[j]) {
                    exSubTypeItem["value"] = exSubClasses[j][item];
                    exSubTypeItem["text"] = exSubClasses[j][item];
                    if (!mapSubTypeID.hasOwnProperty(item))
                        mapSubTypeID[exSubClasses[j][item]] = item;
                }
                jsSubExceptionTypeGrp.splice(jsSubExceptionTypeGrp.length, 0, exSubTypeItem);
            }
            jsSubExceptionTypes[jsClasses[i].exceptionType] = jsSubExceptionTypeGrp;
        }
        jsUnits = JSON.parse('${jsData}').params.units;

        var techs = JSON.parse('${jsData}').params.techs;
        jsTechs = [];
        mapTechID = {};
        $.each(techs, function(key, tech) {
            var item = {};
            item["value"] = tech;
            item["text"] = tech;
            jsTechs.push(item);
            mapTechID[tech] = key;
        });

        var deptRaw = JSON.parse('${jsData}') .params.deptpersons;
        jsDepts = [];
        jsDeptPerson = {};
        mapDeptID = {};
        mapPersonID = {};
        $.each(deptRaw, function(index, dept) {
            var deptItem = {};
            deptItem["value"] = dept.cDeptName;
            deptItem["text"] = dept.cDeptName;
            jsDepts.push(deptItem);
            mapDeptID[dept.cDeptName] = dept.iDeptID;

            var persons = dept.persons;
            var deptPersons = [];
            $.each(persons, function(index, person) {
                var personItem = {};
                personItem["value"] = person.cPersonName;
                personItem["text"] = person.cPersonName;
                deptPersons.push(personItem);
                mapPersonID[person.cPersonName] = person.iPersonID;
            });
            jsDeptPerson[dept.cDeptName] = deptPersons;
        });

        var suppliersRaw = JSON.parse('${jsData}') .params.suppliers;
        jsSuppliers = [];
        mapSupplierID = {};
        $.each(suppliersRaw, function(key, supperlier) {
            var supplierItem = {};
            supplierItem["value"] = supperlier;
            supplierItem["text"] = supperlier;
            jsSuppliers.push(supplierItem);
            mapSupplierID[supperlier] = key;
        });

        editmode = JSON.parse('${jsData}') .params.editmode;
    }
    function initHeadData() {
        $('#value_exfillcode').html(("" == jsHead.cBillCode) ? "-" : jsHead.cBillCode);
        $('#value_ordercode').html(("" == jsHead.cProduceOrder) ? "-" : jsHead.cProduceOrder);
        $('#value_workcenter').html(("" == jsHead.cWorkCenter) ? "-" : jsHead.cWorkCenter);
        $('#value_department').html(("" == jsHead.cFBDepartment) ? "-" : jsHead.cFBDepartment);
        $('#value_departments').html(("" == jsHead.cFBDepartment) ? "-" : jsHead.cFBDepartment);
        $('#value_productcode').html(("" == jsHead.cProductNum) ? "-" : jsHead.cProductNum);
        $('#value_station').html(("" == jsHead.cWorkStation) ? "-" : jsHead.cWorkStation);
        $('#value_person').html(("" == jsHead.cFBPerson) ? "-" : jsHead.cFBPerson);
        $('#value_productname').html(("" == jsHead.cProductName) ? "-" : jsHead.cProductName);
        $('#value_shift').html(("" == jsHead.cShift) ? "-" : jsHead.cShift);
        $('#value_date').html(("" == jsHead.dFBDate) ? "-" : jsHead.dFBDate);
        $('#value_ver').html(("" == jsHead.cVer) ? "-" : jsHead.cVer);
        $('#value_tech').html(("" == jsHead.cProcesses) ? "-" : jsHead.cProcesses);
        $('#value_remark').html(("" == jsHead.cEFBRemark) ? "-" : jsHead.cEFBRemark);
        $('#lblackflag').html(("" == jsHead.cLackUnit) ? "-" : jsHead.cLackUnit);

        if ((1 == editmode) && (1 == jsHead.iSourceBillType)) {
            $('#value_departments').editable({
                type: 'select',
                title: '反馈部门',
                mode: 'inline',
                source: jsDepts,
                success: function(response, newValue) {
                    jsHead.cFBDepartment = (("" == newValue) ? "<请选择反馈部门>" : newValue);
                    if ("" == newValue)
                        jsHead.iFBDepartmentID = -1;
                    else
                        jsHead.iFBDepartmentID = mapDeptID[newValue];
                    jsHead.iFBPersonID = -1;
                    jsHead.cFBPerson = "";

                }
            });

        }


    }
    //创建客户反馈表格
    function createTable() {
        $('#tb_details').bootstrapTable({
            toolbar: '#dt_toolbar',
            striped: true,
            cache: false,
            // detailView: true, //是否显示父子表
            clickEdit: true,
            formatLoadingMessage: function () {	    // 设置加载提示
                return "";
            },
            formatNoMatches: function () {		    // 设置无数据提示
                return "请使用 '新增' 按钮添加数据。";
            },
            columns: [
                {
                    field: 'cExceptionType',
                    title: '反馈大类',
                    width: '200px',

                    formatter: function (value, row, index) {
                        var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                        var onclick = '\"showObjSelector(\'cExceptionType\', \'' + jsRow + '\', ' + index + ')\"';
                        if (null == value || "" == value) {
                            value = (1 != editmode) ? "" : "<请选择>";
                        }
                        if (1 != editmode)
                            return value;
                        else
                            return '<a data-name=\"cExceptionType\" onclick=' + onclick + '>' + value + '</a>';
                    }
                }, {
                    field: 'cExceptionItem',
                    title: '反馈小类',
                    width: '200px',
                    formatter: function (value, row, index) {
                        var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                        var onclick = '\"showObjSelector(\'cExceptionItem\', \'' + jsRow + '\', ' + index + ')\"';
                        if (null == value || "" == value) {
                            value = (1 != editmode) ? "" : "<请选择>";
                        }
                        if (1 != editmode)
                            return value;
                        else
                            return '<a onclick=' + onclick + '>' + value + '</a>';
                    }
                }, {
                    field: 'cMaterialType',
                    title: '物料类型',
                    width: '100px',
                    editable: {
                        type: 'select',
                        title: '物料类型',
                        emptytext: '<请选择>',
                        disabled: (1 != editmode),
                        source: [{"value": "辅料", "text": "辅料"},
                            {"value": "纸张", "text": "纸张"},
                            {"value": "成品", "text": "成品"},
                            {"value": "半成品", "text": "半成品"}]
                    }
                }, {
                    field: 'cDescription',
                    title: '具体反馈内容',
                    editable: {
                        type: 'textarea',
                        title: '反馈内容',
                        disabled: (0 == editmode)
                    }
                }, {
                    field: 'iEditState',
                    title: '编辑状态',
                    visible: false
                }, {
                    field: 'rowindex',
                    title: '行索引',
                    visible: false
                }, {
                    field: 'guid',
                    title: 'guid',
                    visible: false
                }, {
                    field: 'respons',
                    title: '责任对象',
                    visible: false
                }, {
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    width: '100px',
                    visible: (1 == editmode),
                    events: window.operateEvents,
                    formatter: operateFormatter_ex
                }],
            onEditableSave: function (field, row, oldValue, $el) {
                if ("cExceptionType" == field) {
                    onExceptionTypeEdited(field, row, oldValue, $el);
                } else if ("cExceptionItem" == field) {
                    onExceptionItemEdited(field, row, oldValue, $el);
                }

                updateEditState(row);
            },
            data: jsExceptions

        })
    }
    function createTablea() {
         $('#tb_detailsa').bootstrapTable({
             toolbar: '#dt_toolbara',
             striped: true,
             cache: false,
             // detailView: true, //是否显示父子表
             clickEdit: true,
             formatLoadingMessage: function () {	    // 设置加载提示
                 return "";
             },
             formatNoMatches: function () {		    // 设置无数据提示
                 return "请使用 '新增' 按钮添加数据。";
             },
             columns: [
                 {
                     field: 'cExceptionTypes',
                     title: '部门',
                     width: '200px',

                     formatter: function (value, row, index) {
                         var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                         var onclick = '\"showObjSelector(\'cExceptionType\', \'' + jsRow + '\', ' + index + ')\"';
                         if (null == value || "" == value) {
                             value = (1 != editmode) ? "" : "<请选择>";
                         }
                         if (1 != editmode)
                             return value;
                         else
                             return '<a data-name=\"cExceptionType\" onclick=' + onclick + '>' + value + '</a>';
                     }
                 }, {
                     field: 'cDescriptions',
                     title: '部门意见',
                     editable: {
                         type: 'textarea',
                         title: '部门意见',
                         disabled: (0 == editmode)
                     }
                 }, {
                     field: 'iEditState',
                     title: '编辑状态',
                     visible: false
                 }, {
                     field: 'rowindex',
                     title: '行索引',
                     visible: false
                 }, {
                     field: 'guid',
                     title: 'guid',
                     visible: false
                 }, {
                     field: 'respons',
                     title: '责任对象',
                     visible: false
                 }, {
                     field: 'operate',
                     title: '操作',
                     align: 'center',
                     width: '100px',
                     visible: (1 == editmode),
                     events: window.operateEvents,
                     formatter: operateFormatter_exs
                 }],
             onEditableSave: function (field, row, oldValue, $el) {
                 if ("cExceptionTypes" == field) {
                     onExceptionTypeEditeds(field, row, oldValue, $el);
                 } else if ("cExceptionItems" == field) {
                     onExceptionItemEditeds(field, row, oldValue, $el);
                 }
                 updateEditStates(row);
             },
             data: jsExceptionsa

         })
     }
    //创建责任对象表格
    function createTables() {
        $('#tb_resps_').bootstrapTable({
            toolbar: '#rsp_toolbar_',
            striped: true,
            cache: false,
            detailView: false,
            clickEdit: true,
            clickToSelect: false,
            formatNoMatches: function () {		    // 设置无数据提示
                return "请使用 '新增责任对象' 按钮添加责任对象。";
            },
            sidePagination: 'client',
            columns: [{
                checkbox: true,
                visible: (0 != editmode)
            },{
                field: 'iRespID',
                title: '责任对象ID',
                visible: false
            }, {
                field: 'iRespTechID',
                title: '责任工序ID',
                visible: false
            }, {
                field: 'iRespDeptID',
                title: '责任部门ID',
                visible: false
            },{
                field: 'iRespPersonID',
                title: '责任人ID',
                visible: false
            }, {
                field: 'iRespCorpID',
                title: '责任厂商ID',
                visible: false
            }, {
                field: 'cRespTech',
                title: '责任工序',
                width: '100px',
                formatter: function (value, row, index) {
                    var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                    var onclick = '\"showObjSelector(\'cRespTech\', \'' + jsRow + '\', ' + index + ')\"';
                    if (null == value || "" == value) {
                        value = (0 == editmode) ? "" : "<请选择>";
                    }
                    if (0 == editmode)
                        return value;
                    else
                        return '<a onclick=' + onclick + '>' + value + '</a>';
                }
            }, {
                field: 'cRespDept',
                title: '责任部门',
                width: '140px',
                formatter: function (value, row, index)  {
                    if (null == value || "" == value)
                        return "";
                    else
                        return value;
                }
            }, {
                field: 'cRespPerson',
                title: '责任人',
                width: '100px',
                formatter: function (value, row, index) {
                    var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                    var onclick = '\"showObjSelector(\'cRespPerson\', \'' + jsRow + '\', ' + index + ')\"';
                    if (null == value || "" == value) {
                        value = (0 == editmode) ? "" : "<请选择>";
                    }
                    if (0 == editmode)
                        return value;
                    else
                        return '<a onclick=' + onclick + '>' + value + '</a>';
                }
            }, {
                field: 'cRespCorp',
                title: '责任厂商',
                width: '300px',
                formatter: function (value, row, index) {
                    var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                    var onclick = '\"showObjSelector(\'cRespCorp\', \'' + jsRow + '\', ' + index + ')\"';
                    if (null == value || "" == value) {
                        value = (0 == editmode) ? "" : "<请选择>";
                    }
                    if (0 == editmode)
                        return value;
                    else
                        return '<a onclick=' + onclick + '>' + value + '</a>';
                }
            }, {
                field: 'nAmount',
                title: '数量',
                width: '80px',
                editable: {
                    type: 'text',
                    title: '数量',
                    emptytext: '<请输入>',
                    disabled: (0 == editmode),
                    min: 1,
                    validate: function (v) {
                        var patrn = /^([1-9]\d*\.\d{1,2}|0\.\d[1-9]|[1-9]\d*)$/;
                        if (!patrn.test(v)) {
                            return '请输入有效数字(最大有效精度为2位小数)';
                        }
                    }
                }
            }, {
                field: 'nPrice',
                title: '单价',
                width: '80px',
                editable: {
                    type: 'text',
                    title: '单价',
                    emptytext: '<请输入>',
                    disabled: (0 == editmode),
                    min: 1,
                    validate: function (v) {
                        var patrn = /^([1-9]\d*\.\d{1,2}|0\.\d[1-9]|[1-9]\d*)$/;
                        if (!patrn.test(v)) {
                            return '请输入有效数字(最大有效精度为2位小数)';
                        }
                    }
                }
            }, {
                field: 'nMoney',
                title: '金额',
                width: '80px',
            }, {
                field: 'cRespRemark',
                title: '备注说明',
                editable: {
                    type: 'textarea',
                    title: '备注说明',
                    disabled: (0 == editmode)
                }
            }, {
                field: 'iEditState',
                title: '编辑状态',
                visible: false
            }, {
                field: 'guid',
                title: 'guid',
                visible: false
            }, {
                field: 'pguid',
                title: 'pguid',
                visible: false
            },{
                field: 'operate',
                title: '操作',
                align: 'center',
                width: '50px',
                visible: (0 != editmode),
                events: window.operateEvents,
                formatter: operateFormatter_rsp
            }],
            onEditableSave: function (field, row, oldValue, $el) {
                if ('cRespTech' == field) {
                    onRespTechEdited(field, row, oldValue, $el);
                } else if ('cRespDept' == field) {
                    onRespDeptEdited(field, row, oldValue, $el);
                } else if ('cRespPerson' == field) {
                    onRespPersonEdited(field, row, oldValue, $el);
                } else if ('cRespCorp' == field) {
                    onRespCorpEdited(field, row, oldValue, $el);
                } else if (('nAmount' == field) || ('nPrice' == field)) {
                    onPriceOrAmountEdited(field, row, oldValue, $el);
                }

                updateRespObjEditState(row);
            },
            //data: jsExceptionss
        })
    }
    //增加客户反馈表格数据
    function addException() {
        $('#tb_details').bootstrapTable("insertRow", {
            index: jsExceptions.length,
            row: {
                iDetailID: -1,
                cExceptionType: '',
                iParamsID: -1,
                iExceptionItemID: -1,
                cExceptionItem: '',
                cErrorUnit: '',
                cMaterialType: '',
                iAmount: 0,
                iRework: 0,
                iScrap: 0,
                iDeviation: 0,
                cDescription: '',
                iEditState: 1,
                rowindex: jsExceptions.length,
                guid: getGUID(),
                respons: []
            }
        });
    }
    function addExceptions() {
         $('#tb_detailsa').bootstrapTable("insertRow", {
             index: jsExceptionsa.length,
             row: {
                 iDetailIDs: -1,
                 cExceptionTypes: '',
                 iParamsIDs: -1,
                 iExceptionItemIDs: -1,
                 cExceptionItems: '',
                 cErrorUnits: '',
                 cMaterialTypes: '',
                 iAmounts: 0,
                 iReworks: 0,
                 iScraps: 0,
                 iDeviations: 0,
                 cDescriptions: '',
                 iEditStates: 1,
                 rowindex: jsExceptionsa.length,
                 guid: getGUID(),
                 respons: []
             }
         });
     }
    //增加责任对象表格数据
    function addRespObject() {
        $('#tb_resps_').bootstrapTable("insertRow", {
             index: jsExceptions.length,
            row: {
                cRespCorp: '',
                cRespDept: '',
                cRespPerson: '',
                cRespRemark: '',
                cRespTech: '',
                guid: getGUID(),
                iEditState: 1,
                iRespCorpID: -1,
                iRespDeptID: -1,
                iRespID: -1,
                iRespPersonID: -1,
                iRespTechID: -1,
                nAmount: 0,
                nMoney: 0,
                nPrice: 0,
                rowindex:jsExceptions.length,
                respons: []
            }
        });
    }
    //删除客户反馈表格数据
    function delException(row, hasConfirm) {
        if (!hasConfirm) {
            if (!confirm("是否继续删除？")) return;
        }
        var $table = $('#tb_details');
        if (1 == row.iEditState) {
            $table.bootstrapTable("remove", {
                field: 'guid',
                values: [row.guid]
            });
        }
    }
    function delExceptions(row, hasConfirm) {
         if (!hasConfirm) {
             if (!confirm("是否继续删除？")) return;
         }
         var $table = $('#tb_detailsa');
         if (1 == row.iEditStates) {
             $table.bootstrapTable("remove", {
                 field: 'guid',
                 values: [row.guid]
             });
         }
     }
    //删除责任对象表格数据
    function delRespObject(row, hasConfirm) {
        if (!hasConfirm) {
            if (!confirm("正在删除责任对象，是否继续？")) return;
        }
        var $subTable = $('#tb_resps_');
        if (1 == row.iEditState) {
            $subTable.bootstrapTable("remove", {
                field: 'guid',
                values: [row.guid]
            });
        }
    }
    //删除多条责任对象表格数据
    function delRespObjects() {
        var selRows = $.map($('#tb_resps_').bootstrapTable('getSelections'), function (row) {
            if (3 != row.iEditState)
                return row;
        });
        if (0 == selRows.length) {
            showMessageBox("请选中您要删除的责任对象。");
        } else {
            if (confirm("正在删除所有选中的责任对象，是否继续？")) {
                for (var i = 0; i < selRows.length; i++) {
                    var row = selRows[i];
                    delRespObject(row, true);
                }
            }
        }
    }
    //附不良样品勾选
    function onLackFlagChanged() {
        var checked = $('#lackflag').prop("checked");
        $('#lacknum').prop("readonly", !checked);
        jsHead.iFlagLack = (checked ? 1 : 0);
    }
    function onLackNumChanged() {
        var retValue = $('#lacknum').val();
        if ($('#lackflag').prop("checked")) {
            if (retValue <= 0)
                retValue = 1;
        } else {
            retValue = 0;
        }
        $('#lacknum').val(retValue);
        jsHead.iLackNum = retValue;
    }
     //折扣扣款金额选填与数据填写
    function onLackFlagChangeds() {
        var checked = $('#lackflagss').prop("checked");
        $('#lacknums').prop("readonly", !checked);
        jsHead.iFlagLack = (checked ? 1 : 0);
    }
    function onLackNumChangeds() {
        var retValue = $('#lacknums').val();
        if ($('#lackflagss').prop("checked")) {
            if (retValue <= 0)
                retValue = 1;
        } else {
            retValue = 0;
        }
        $('#lacknums').val(retValue);
        jsHead.iLackNum = retValue;
    }
    function onExceptionTypeEdited(field, row, oldValue, $el) {
        var iParamsID = mapTypeParamsID[row.cExceptionType];
        $('#tb_details').bootstrapTable("updateCell", {
            'index': row.rowindex,  // 更新哪行
            'field': 'iParamsID',     // 更新那个字段
            'value': iParamsID        // 新值
        });

        var newTypeName = row.cExceptionType;
        //判断是否要清除异常子类
        var oldSubTypeName = row.cExceptionItem;
        var jsSubExceptionTypeGrp = jsSubExceptionTypes[newTypeName];
        var bExistsSameitem = false;
        for (var i in jsSubExceptionTypeGrp) {
            bExistsSameitem = jsSubExceptionTypeGrp[i]["text"] == oldSubTypeName;
            if (bExistsSameitem) break;
        }
        if (!bExistsSameitem) {
            $('#tb_details').bootstrapTable("updateCell", {
                'index': row.rowindex,
                'field': 'cExceptionItem',
                'value': ''
            });

            $('#tb_details').bootstrapTable("updateCell", {
                'index': row.rowindex,
                'field': 'iExceptionItemID',
                'value': -1
            });
        }
        //判断是否要清除不良单位
        var oldUnitName = row.cErrorUnit;
        var unitGrp = jsUnits[newTypeName];
        bExistsSameitem = false;
        for (var i in unitGrp) {
            bExistsSameitem = unitGrp[i] == oldUnitName;
            if (bExistsSameitem) break;
        }
        if (!bExistsSameitem) {
            $('#tb_details').bootstrapTable("updateCell", {
                'index': row.rowindex,
                'field': 'cErrorUnit',
                'value': ''
            });
        }
        updateEditState(row);
    }
    function onExceptionTypeEditeds(field, row, oldValue, $el) {
         var iParamsIDs = mapTypeParamsID[row.cExceptionType];
         $('#tb_detailsa').bootstrapTable("updateCell", {
             'index': row.rowindex,  // 更新哪行
             'field': 'iParamsIDs',     // 更新那个字段
             'value': iParamsIDs        // 新值
         });

         var newTypeName = row.cExceptionType;
         //判断是否要清除异常子类
         var oldSubTypeName = row.cExceptionItem;
         var jsSubExceptionTypeGrp = jsSubExceptionTypes[newTypeName];
         var bExistsSameitem = false;
         for (var i in jsSubExceptionTypeGrp) {
             bExistsSameitem = jsSubExceptionTypeGrp[i]["text"] == oldSubTypeName;
             if (bExistsSameitem) break;
         }
         if (!bExistsSameitem) {
             $('#tb_detailsa').bootstrapTable("updateCell", {
                 'index': row.rowindex,
                 'field': 'cExceptionItems',
                 'value': ''
             });

             $('#tb_detailsa').bootstrapTable("updateCell", {
                 'index': row.rowindex,
                 'field': 'iExceptionItemIDs',
                 'value': -1
             });
         }
         //判断是否要清除不良单位
         var oldUnitName = row.cErrorUnit;
         var unitGrp = jsUnits[newTypeName];
         bExistsSameitem = false;
         for (var i in unitGrp) {
             bExistsSameitem = unitGrp[i] == oldUnitName;
             if (bExistsSameitem) break;
         }
         if (!bExistsSameitem) {
             $('#tb_details').bootstrapTable("updateCell", {
                 'index': row.rowindex,
                 'field': 'cErrorUnit',
                 'value': ''
             });
         }
         updateEditStates(row);
     }
    function onExceptionItemEdited(field, row, oldValue, $el) {
        var iExceptionItemID = mapSubTypeID[row.cExceptionItem];
        $('#tb_details').bootstrapTable("updateCell", {
            'index': row.rowindex,
            'field': 'iExceptionItemID',
            'value': iExceptionItemID
        });
        updateEditState(row);
    }
    function onExceptionItemEditeds(field, row, oldValue, $el) {
         var iExceptionItemIDs = mapSubTypeID[row.cExceptionItem];
         $('#tb_detailsa').bootstrapTable("updateCell", {
             'index': row.rowindex,
             'field': 'iExceptionItemIDs',
             'value': iExceptionItemIDs
         });
         updateEditStates(row);
     }
    function updateEditState(row) {
        var currEditState = row.iEditState;
        if (0 == currEditState) {
            $('#tb_details').bootstrapTable("updateCell", {
                'index': row.rowindex,
                'field': 'iEditState',
                'value': 2
            });
        }
    }
    function updateEditStates(row) {
         var currEditState = row.iEditState;
         if (0 == currEditState) {
             $('#tb_detailsa').bootstrapTable("updateCell", {
                 'index': row.rowindex,
                 'field': 'iEditStates',
                 'value': 2
             });
         }
     }
    function syncFlagsState(flagName) {
        var tableData = $('#tb_details').bootstrapTable('getData');
        checked = 0;
        for (var i = 0; i < tableData.length; i++) {
            if (3 == tableData[i]['iEditState']) continue;
            checked = checked | tableData[i][flagName];
        }
        if ('iDeviation' == flagName) {
            $('#deviationflag').prop("checked", checked);
            jsHead.iFlagDeviation = (checked ? 1 : 0);
        }
        else if ('iRework' == flagName) {
            $('#reworkflag').prop("checked", checked);
            jsHead.iFlagRework = (checked ? 1 : 0);
        }
        else if ('iScrap' == flagName) {
            $('#scrapflag').prop("checked", checked);
            jsHead.iFlagScrap = (checked ? 1 : 0);
        }
    }
    function onRespTechEdited(field, row, oldValue, $el) {
        var iTechID = mapTechID[row.cRespTech];
        var $subTable = $('#tb_resps_'+row.pguid);
        $subTable.bootstrapTable("updateCell", {
            'index': row.rowindex,
            'field': 'iRespTechID',
            'value': iTechID
        });
        updateRespObjEditState(row);
    }
    function onRespDeptEdited(field, row, oldValue, $el) {
        var iDeptID = mapDeptID[row.cRespDept];
        var $subTable = $('#tb_resps_'+row.pguid);
        $subTable.bootstrapTable("updateRow", {
            'index': row.rowindex,
            'row': {
                iRespDeptID: iDeptID,
                iRespPersonID: -1,
                iRespCorpID: -1,
                cRespPerson: '',
                cRespCorp: ''
            }
        });
    }
    function onRespPersonEdited(field, row, oldValue, $el) {
        var iPersonID = mapPersonID[row.cRespPerson];
        var iDeptID = mapDeptID[row.cRespDept];
        var $subTable = $('#tb_resps_'+row.pguid);
        $subTable.bootstrapTable("updateRow", {
            'index': row.rowindex,
            'row': {
                'iRespPersonID': iPersonID,
                'iRespDeptID': iDeptID
            }
        });
        updateRespObjEditState(row);
    }
    function onRespCorpEdited(field, row, oldValue, $el) {
        var iSupplierID = mapSupplierID[row.cRespCorp];
        var $subTable = $('#tb_resps_'+row.pguid);
        $subTable.bootstrapTable("updateCell", {
            'index': row.rowindex,
            'field': 'iRespCorpID',
            'value': iSupplierID
        });
        updateRespObjEditState(row);
    }
    function onPriceOrAmountEdited(field, row, oldValue, $el) {
         var nPrice = row.nPrice;
         var nAmount = row.nAmount;
         var nMoney = (nPrice * nAmount).toFixed(2);
         var $subTable = $('#tb_resps_'+row.pguid);
         $subTable.bootstrapTable("updateRow", {
             'index': row.rowindex,
             'row': {
                 'nPrice': nPrice,
                 'nAmount': nAmount,
                 'nMoney': nMoney
             }
         });
     }
    //请选择的下拉框数据来源
    function getSelectData(field) {
         if ("cRespCorp" == field) {
             return jsSuppliers;
         }else if ("cRespTech" == field) {
             return jsTechs;
         } else if ("cRespDept" == field) {
             return jsDepts;
         } else if ("cRespPerson" == field) {
             var objRow = JSON.parse($.$jsRow);
             var allPerson = [];
             $.each(jsDeptPerson, function(key, persons) {
                 $.each(persons, function(index, person) {
                     var tempP = $.extend(true, {}, person);
                     tempP["value"] = key + ":" + tempP["value"];
                     allPerson.push(tempP);
                 }) ;
             });
             return allPerson;
         } else if ("cExceptionType" == field) {
             return jsExceptionTypes;
         } else if ("cExceptionItem" == field) {
             var objRow = JSON.parse($.$jsRow);
             var typeName = objRow.cExceptionType;
             return jsSubExceptionTypes[typeName];
         } else {
             return [];
         }
     }
    function initModalSelector(field) {
         if ("cRespCorp" == field)
             $('.panel-heading').find('h4').html('请选择责任厂商');
         else if ("cRespTech" == field)
             $('.panel-heading').find('h4').html('请选择责任工序');
         else if ("cRespDept" == field)
             $('.panel-heading').find('h4').html('请选择责任部门');
         else if ("cRespPerson" == field)
             $('.panel-heading').find('h4').html('请选择责任部门/人');
         else if ("cExceptionType" == field)
             $('.panel-heading').find('h4').html('请选择反馈大类');
         else if ("cExceptionItem" == field)
             $('.panel-heading').find('h4').html('请选择反馈小类');

         $('#tableSelector').bootstrapTable('destroy').bootstrapTable({
             toolbar: '#toolbarSelector',
             data: getSelectData(field),
             striped: true,
             cache: false,
             height: 500,
             singleSelect: true,
             search: true,
             strictSearch: false,
             clickToSelect: true,
             uniqueId: "value",
             columns: [{
                 checkbox: true
             }, {
                 field: 'value',
                 title: '名称'
             }
             ]
         });
     }
    function showObjSelector(field, jsRow, rowIndex) {
        $.$field = field;
        $.$jsRow = jsRow;
        $.$rowIndex =  rowIndex;
        initModalSelector(field);
        $('#modalSelector').modal('show');
    }
    function updateRespObjEditState(row) {
         var currEditState = row.iEditState;
         if (0 == currEditState) {
             $('#tb_resps_'+row.pguid).bootstrapTable("updateCell", {
                 'index': row.rowindex,
                 'field': 'iEditState',
                 'value': 2
             });
         }
     }
     // 反馈大类，反馈小类下拉查询
    function modalSelected() {
         var rows = $('#tableSelector').bootstrapTable("getSelections");
         if(rows.length == 0){
             return;
         }

         var selectValue = rows[0].value;
         var rowIndex = $.$rowIndex;
         var objRow = JSON.parse($.$jsRow);
         var $mainTable = $('#tb_details');
         var $subTable = $('#tb_resps_' + objRow.pguid);

         if ("cRespCorp" == $.$field) {
             $subTable.bootstrapTable("updateRow", {index: rowIndex, row: {cRespCorp: selectValue}});
             objRow.cRespCorp = selectValue;
             onRespCorpEdited($.$field, objRow, "", null);
         } else if ("cRespTech" == $.$field) {
             $subTable.bootstrapTable("updateRow", {index: rowIndex, row: {cRespTech: selectValue}});
             objRow.cRespTech = selectValue;
             onRespTechEdited($.$field, objRow, "", null);
         } else if ("cRespDept" == $.$field) {
             $subTable.bootstrapTable("updateRow", {index: rowIndex, row: {cRespDept: selectValue}});
             objRow.cRespDept = selectValue;
             onRespDeptEdited($.$field, objRow, "", null);
         } else if ("cRespPerson" == $.$field) {
             var deptName = selectValue.substring(0, selectValue.indexOf(":"));
             var personName = selectValue.substring(selectValue.indexOf(":") + 1)
             $subTable.bootstrapTable("updateRow", {'index': rowIndex, 'row': {'cRespPerson': personName, 'cRespDept': deptName}});
             objRow.cRespPerson = personName;
             objRow.cRespDept = deptName;
             onRespPersonEdited($.$field, objRow, "", null);
         } else if ("cExceptionType" == $.$field) {
             $mainTable.bootstrapTable("updateRow", {index: rowIndex, row:{cExceptionType: selectValue}});
             objRow.cExceptionType = selectValue;
             onExceptionTypeEdited($.$field, objRow, "", null);
         } else if ("cExceptionItem" == $.$field) {
             $mainTable.bootstrapTable("updateRow", {index: rowIndex, row:{cExceptionItem: selectValue}});
             objRow.cExceptionItem = selectValue;
             onExceptionItemEdited($.$field, objRow, "", null);
         }

         $('#modalSelector').modal('hide');
     }
    function showMessageBox(msg) {
        var $msgBox = $('#messageBox');
        $msgBox.modal('show');
        $('.msgContent').html(msg);
    }
    //检查表头信息
    function validCheck(toState) {
        //检查表头信息
        if ("" == jsHead.cBillCode) {
            showMessageBox("未获取到反馈单号，请检查系统单号规则设置。");
            return false;
        }
        if (0 == jsHead.iSourceBillType) {
            if ("" == jsHead.cWorkCenter) {
                showMessageBox("请选择工作中心。");
                return false;
            }
        }
        var ret = true;
        //检查异常明细项目以及责任对象
        $.each(jsExceptions, function(pIndex, exItem) {
            var respCount = 0;
            var iEditState = exItem.iEditState;
            if (3 != iEditState) {
                if ("" == exItem.cExceptionType) {
                    showMessageBox("请选择异常类型。");
                    ret = false;
                    return false;
                }
                if ("" == exItem.cExceptionItem) {
                    showMessageBox("请选择异常子类型。");
                    ret = false;
                    return false;
                }
            }
        });
        return ret;
    }
    function commitForm(toState) {
        $('#btn_commit').prop("disabled", true);
        $('#btn_save').prop("disabled", true);
        if (validCheck(toState)) {
            var sHead = JSON.stringify(jsHead);
            var sExceptions = JSON.stringify(jsExceptions);
            $.ajax({
                url: "getQcAbnormality/saveData.do",
                type: "POST",
                cache: false,
                async: false,
                // dataType: 'json',  /*指定返回值的数据格式*/
                contentType : "application/json", /*指定提交数据的格式*/
                scriptCharset:'utf-8',
                data: '{"commitData":' + JSON.stringify({tostate: toState.toString(), head: sHead, exceptions: sExceptions})+ '}',
                success:function(data){
                    var jsData = JSON.parse(data);
                    var isuccessful = jsData['isuccessful'];
                    if(0 == jsHead.iSourceType) {
                        window.slifeJsAgent.invoke_native("getResult", "params", data);
                    }else if(1 == jsHead.iSourceType) {
                        if("1" == isuccessful) {
                            alert("erp:success");
                        }else{
                            showMessageBox("保存失败");
                        }
                    }else if (2 == jsHead.iSourceType) {
                        if("1" == isuccessful) {
                            showMessageBox("保存成功");
                            window.history.go(-1)
                        }else{
                            showMessageBox("保存失败");
                        }
                    }
                },
                error:function(result) {
                    showMessageBox("请求失败");
                    $('#btn_commit').prop("disabled", false);
                    $('#btn_save').prop("disabled", false);
                }
            });
        } else {
            $('#btn_commit').prop("disabled", false);
            $('#btn_save').prop("disabled", false);
        }
    }
    function closeForm() {
        if (0 != editmode) {
            if (confirm("是否保存数据？")) {
                commitForm(0);
                return;
            }
        }
        if (0 == jsHead.iSourceType) {
            //平板端
            window.slifeJsAgent.invoke_native("getResult","params","close");
        } else if (1 == jsHead.iSourceType) {2
            //PC端
            alert("close");
        } else if (2 == jsHead.iSourceType) {
            //web端
            window.history.go(-1);
        }
    }
    //客户反馈删除方法
    function operateFormatter_ex(value, row, index) {
         return [
             '<a class="remove_ex" href="javascript:void(0)" title="删除投诉">',
             '<i class="glyphicon glyphicon-trash"></i>',
             '</a>'
         ].join('');
     }
    function operateFormatter_exs(value, row, index) {
         return [
             '<a class="remove_exs" href="javascript:void(0)" title="删除部门意见">',
             '<i class="glyphicon glyphicon-trash"></i>',
             '</a>'
         ].join('');
     }
    //责任对象删除方法
    function operateFormatter_rsp(value, row, index) {
        return [
            '<a class="remove_rsp" href="javascript:void(0)" title="删除责任对象">',
            '<i class="glyphicon glyphicon-trash"></i>',
            '</a>'
        ].join('');
    }
   //删除
    window.operateEvents = {
        'click .remove_ex': function (e, value, row, index) {
            delException(row, false);
        },
        'click .remove_exs': function (e, value, row, index) {
            delExceptions(row, false);
        },
        'click .remove_rsp': function (e, value, row, index) {
            delRespObject(row, false);
        }
    }
    function getGUID() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }

     function onReplenishMFlagChanged() {
         var checked = $('#replenishmflag').prop("checked");
         jsHead.iFlagReplenishM = (checked ? 1 : 0);
     }
     function onReplenishPFlagChanged() {
         var checked = $('#replenishpflag').prop("checked");
         jsHead.iFlagReplenishP = (checked ? 1 : 0);
     }
     function onFlagsEdited(flagName, index, obj) {
         var id = obj.id;
         var checked = 0;
         if ($('#' + id).is(':checked') && (!$('#feedbackonlyflag').prop('checked')))
             checked = 1;
         $('#tb_details').bootstrapTable("updateCell", {
             'index': index,
             'field': flagName,
             'value': checked
         });
         var rowData = $('#tb_details').bootstrapTable('getData')[index];
         updateEditState(rowData);
         syncFlagsState(flagName);
     }
</script>

</html>
