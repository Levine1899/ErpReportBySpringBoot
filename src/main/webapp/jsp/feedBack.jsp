<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>异常反馈单</title>

    <link rel="stylesheet" type="text/css" href="Css/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="Css/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Css/bootstrap-table/1.14.2/bootstrap-table.js"></script>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-table/1.14.2/bootstrap-table.css"/>
    <script type="text/javascript" src="Css/bootstrap-table/1.14.2/locale/bootstrap-table-zh-CN.js"></script>

    <link rel="stylesheet" type="text/css" href="Css/bootstrap-editable.css"/>
    <script type="text/javascript" src="js/bootstrap-editable.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-editable.js"></script>


</head>
<style type="text/css">
    body {
        font-family: "微软雅黑";
        margin-left: 20px;
        margin-right: 20px;
        margin-top: 20px;
        margin-bottom: 50px;
    }

    .main_col1, .main_col2, .main_col3, .main_col4, .main_row4 {
        border: 0px solid;
        display: inline-block;
        padding-left: 5px;
        padding-right: 5px;
        margin-left: 5px;
        margin-right: 5px;
        min-width: 140px;
    }

    .main_row4 {
        max-width: 650px;
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

    #judgeresult {
        flex: 2;
        -ms-flex: 2;
        -moz-box-flex: 2;
        -webkit-box-flex: 2;
        margin-left: 10px;
        min-width: 300px;
    }

    .table {
        font-size: 16px;
    }

    .btn.btn-default.btn-sm.editable-cancel	{
        margin-left: 0px;
        visibility: hidden;
    }

    .btn.btn-primary.btn-sm.editable-submit {
        width: 100%;
        height: 100%;
    }

    .editableform .form-control {
        width: auto;
        height: auto;
        font-size: 18px;
    }

    tr .table.table-striped.table-bordered.table-hover {
        margin-bottom: 20px !important;
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

    .photo-btn{
        width: 96px;
        height: 34px;
        background-color: #46b8da;
        border:1px solid #eee;
        color:#fff;
        border-radius:5px;
    }
    .divStyle {
        position: static;
        float: left;
        height: 200px;
        width: 1000px;
        border-style: solid;
        border-width: thin;
        border-color: White;
    }
</style>
<body>
<div class="panel panel-danger">
    <input type="hidden" id="basePictures" value="">
    <div class="panel-heading">
        <h3 class="panel-title" style="text-align: center; font-weight: bold">异常反馈单</h3>
    </div>
    <div class="panel-body">
        <!-- 模态框（Modal） -->
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
        <!-- 模态选择框 -->
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
                                <!--<label><input type="text"/></label>-->
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
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
<%--		<div id="errorinfo" class="panel panel-danger hidden"> --%>
<%--			<div class="panel-heading">--%>
<%--				<h3 class="panel-title">页面错误</h3>--%>
<%--			</div>--%>
<%--			<div class="panel-body">--%>
<%--				<div id="errorcontent" class="name"></div>--%>
<%--			</div>--%>
<%--		</div>			--%>
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
                        <div id="gp_ordercode" class="main_row2">
                            <div id="name_ordercode" class="name">生产订单</div>
                            <div id="value_ordercode">暂无数据</div>
                        </div>
                        <div id="gp_workcenter" class="main_row3">
                            <div id="name_workcenter" class="name">工作中心</div>
                            <div id="value_workcenter">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col2">
                        <div id="gp_department" class="main_row1">
                            <div id="name_department" class="name">反馈部门</div>
                            <div id="value_department">暂无数据</div>
                        </div>
                        <div id="gp_productcode" class="main_row2">
                            <div id="name_productcode" class="name">产品编号</div>
                            <div id="value_productcode">暂无数据</div>
                        </div>
                        <div id="gp_station" class="main_row3">
                            <div id="name_station" class="name">机台</div>
                            <div id="value_station">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col3">
                        <div id="gp_person" class="main_row1">
                            <div id="name_person" class="name">反馈人</div>
                            <div id="value_person">暂无数据</div>
                        </div>
                        <div id="gp_productname" class="main_row2">
                            <div id="name_productname" class="name">产品名称</div>
                            <div id="value_productname">暂无数据</div>
                        </div>
                        <div id="gp_shift" class="main_row3">
                            <div id="name_shift" class="name">班次</div>
                            <div id="value_shift">暂无数据</div>
                        </div>
                    </div>
                    <div class="main_col4">
                        <div id="gp_billcode" class="main_row1">
                            <div id="name_date" class="name">反馈时间</div>
                            <div id="value_date">暂无数据</div>
                        </div>
                        <div id="gp_ver" class="main_row2">
                            <div id="name_ver" class="name">版本</div>
                            <div id="value_ver">暂无数据</div>
                        </div>
                        <div id="gp_tech" class="main_row3">
                            <div id="name_tech" class="name">作业工序</div>
                            <div id="value_tech">暂无数据</div>
                        </div>
                    </div>
                    <div class="row4">
                        <div id="gp_remark" class="main_row4">
                            <div id="name_remark" class="name">备注说明</div>
                            <div id="value_remark" style="width:600px; height:150px; overflow-y:scroll; border:1px solid #66AFE9; border-radius:5px">暂无数据</div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="judgeresult" class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">现场判断</h3>
                </div>
                <div class="panel-body">
                    <div class="checkbox" style="margin-bottom: 30px">
                        <label><input id="feedbackonlyflag" type="checkbox" onclick="onFeedbackOnlyFlagChanged()"/>仅做反馈记录</label>
                    </div>
                    <div style="margin-bottom: 30px">
                        <label class="checkbox-inline"><input id="lackflag" type="checkbox"
                                                              onclick="onLackFlagChanged()" disabled="false"/>成品缺数
                        </label>
                        <label class="number-inline"><input id="lacknum" type="number" oninput="onLackNumChanged()"
                                                            readonly="false"
                                                            style="width: 80px; text-align: right"/></label>
                        <label id="lblackflag">单位</label>
                    </div>
                    <div class="checkbox" style="margin-bottom: 30px">
                        <label class="checkbox-inline"><input id="replenishmflag" type="checkbox" onclick="onReplenishMFlagChanged()"
                                                              disabled="false"/>补料</label>
                        <label class="checkbox-inline"><input id="replenishpflag" type="checkbox"  onclick="onReplenishPFlagChanged()"
                                                              disabled="false"/>补版</label>
                    </div>
                    <div class="checkbox" style="margin-bottom: 30px">
                        <label class="checkbox-inline" style="color: #0a0"><input id="deviationflag" type="checkbox"
                                                                                  disabled="true"/>偏差</label>
                        <label class="checkbox-inline" style="color: #fc0"><input id="reworkflag" type="checkbox"
                                                                                  disabled="true"/>返工</label>
                        <label class="checkbox-inline" style="color: #f00"><input id="scrapflag" type="checkbox"
                                                                                  disabled="true"/>报废</label>
                    </div>
                </div>
            </div>
        </div>




        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div id="zj"  class="panel-heading" style="background-color: #f2dede; border-color: #f2dede; display: none">
                <h3 class="panel-title" >异常反馈拍照</h3>
            </div>
            <div id="pz" style="display: none" class="panel-body">
                <input class="photo-btn" type="button" value="拍照" onclick="getPhoto()"/>
                <div id="showPhoto"></div>
            </div>

        </div>

        <div class="panel panel-warning" style="margin-bottom: 10px">
            <div class="panel-heading">
                <h3 class="panel-title">异常明细</h3>
            </div>
            <div class="panel-body">
                <div id="dt_toolbar" class="btn-group">
                    <button id="btn_ex_add" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增异常
                    </button>
                    <button id="btn_ex_del" type="button" class="btn btn-warning">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除异常
                    </button>
                    <button id="btn_ex_expand" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-collapse-down" aria-hidden="true"></span>全部展开
                    </button>
                    <button id="btn_ex_collapse" type="button" class="btn btn-info">
                        <span class="glyphicon glyphicon-collapse-up" aria-hidden="true"></span>全部合并
                    </button>
                </div>
                <table id="tb_details" class="table table-striped"></table>
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

</div>
</body>

<script type="text/javascript">

    var jsonParamsYt = "";

	window.onerror = handelWinError;
	
	function handelWinError(message, source, lineno, colno, error) {
		var err ="<b>An error was thrown and caught.</b><p>";
		err+="message: " + message + "<br>";
		err+="lineno: " + lineno + "<br>";
		err+="source: " + source + "<br>";
		err+="colno: " + colno + "<br>";
		err+="error: " + error + "<br>";
		$('#errorcontent').html(err);
		$('#errorinfo').get(0).className="panel panel-danger show"
		return false;
	}	

    function hideNoFondTables(classname) {	// 用于隐藏指定标签
        $(classname).hide();
    }

    function loadData() {
        jsHead = JSON.parse('${jsData}').bill.head;
        jsDetails = JSON.parse('${jsData}').bill.details;
        jsExceptions = [];
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
                        mapSubTypeID[jsClasses[i].exceptionType + ":" + exSubClasses[j][item]] = item;
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
        // if(jsHead.buttenState=="0"){
        //     document.getElementById("btn_commit").style.display="";
        // }else{
        //     document.getElementById("btn_commit").style.display="none";
        // }
        $('#value_exfillcode').html(("" == jsHead.cBillCode) ? "-" : jsHead.cBillCode);
        $('#value_ordercode').html(("" == jsHead.cProduceOrder) ? "-" : jsHead.cProduceOrder);
        $('#value_workcenter').html(("" == jsHead.cWorkCenter) ? "-" : jsHead.cWorkCenter);
        $('#value_department').html(("" == jsHead.cFBDepartment) ? "-" : jsHead.cFBDepartment);
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

        if ((1 == editmode) || (2 == editmode)) {
            $('#value_remark').editable({
                type: 'textarea',
                title: '备注说明',
                mode: 'inline',
                success: function(response, newValue) {
                    jsHead.cEFBRemark = newValue;
                }
            });
            //设置备注编辑框宽度
            $('#value_remark').on("shown", function (element, textbox) {
                $(textbox.input.$input[0]).attr("cols", "80")
            });
        }

        if ((1 == editmode) && (1 == jsHead.iSourceBillType)) {
            $('#value_department').editable({
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
                    $('#value_person').html("<请选择反馈人>");
                }
            });
            $('#value_person').editable({
                type: 'select',
                title: '反馈人',
                mode: 'inline',
                source: function () {
                    var deptName =  $('#value_department').html();
                    if ("" == deptName)
                        return [];
                    else
                        return jsDeptPerson[deptName];
                },
                success: function(response, newValue) {
                    jsHead.cFBPerson = (("" == newValue) ? "<请选择反馈人>" : newValue);
                    if ("" == newValue)
                        jsHead.iFBPersonID = -1;
                    else
                        jsHead.iFBPersonID = mapPersonID[newValue];
                }
            });
        }

        if (jsHead.iFlagFeedBackOnly == 1) {
            $('#feedbackonlyflag').prop("checked", true);
            $('#lackflag').prop("disabled", true);
            $('#lacknum').prop("readonly", true);
            $('#replenishmflag').prop("disabled", true);
            $('#replenishpflag').prop("disabled", true);
        } else {
            $('#feedbackonlyflag').prop("checked", false);
            $('#lackflag').prop("disabled", false);

            if (jsHead.iState == 0) {
                $('#replenishmflag').prop("disabled", false);
                $('#replenishpflag').prop("disabled", false);
            } else {
                $('#replenishmflag').prop("disabled", true);
                $('#replenishpflag').prop("disabled", true);
            }
        }

        if (1 != editmode) {
            $('#feedbackonlyflag').prop("disabled", true);
            $('#lackflag').prop("disabled", true);
            $('#lacknum').prop("readonly", true);
        }

        if (jsHead.iFlagLack == 1)
            $('#lackflag').prop("checked", true);
        else
            $('#lackflag').prop("checked", false);

        $('#lacknum').val(jsHead.iLackNum);
        $('#lacknum').prop("readonly", !$('#lackflag').prop("checked"));

        if (jsHead.iFlagReplenishM == 1)
            $('#replenishmflag').prop("checked", true);
        else
            $('#replenishmflag').prop("checked", false);

        if (jsHead.iFlagReplenishP == 1)
            $('#replenishpflag').prop("checked", true);
        else
            $('#replenishpflag').prop("checked", false);

        if (jsHead.iFlagDeviation == 1)
            $('#deviationflag').prop("checked", true);
        else
            $('#deviationflag').prop("checked", false);

        if (jsHead.iFlagRework == 1)
            $('#reworkflag').prop("checked", true);
        else
            $('#reworkflag').prop("checked", false);

        if (jsHead.iFlagScrap == 1)
            $('#scrapflag').prop("checked", true);
        else
            $('#scrapflag').prop("checked", false);
    }

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

    function delException(row, hasConfirm) {
        if (!hasConfirm) {
            if (!confirm("删除异常明细的同时会将其下责任对象一同删除，是否继续？")) return;
        }
        var $table = $('#tb_details');
        var $subTable = $('#tb_resps_' + row.guid);

        if (1 == row.iEditState) {
            $subTable.bootstrapTable("removeAll");
            $table.bootstrapTable("remove", {
                field: 'guid',
                values: [row.guid]
            });
        } else {
            var subData = row.respons;
            $.each(subData, function (index, item) {
                if (1 == item.iEditState) {
                    $subTable.bootstrapTable("remove", {
                        field: 'guid',
                        values: [item.guid]
                    });
                } else if ((0 == item.iEditState) || (2 == item.iEditState)) {
                    $subTable.bootstrapTable("updateCell", {
                        index: item.rowindex,
                        field: 'iEditState',
                        value: 3
                    });
                    $subTable.bootstrapTable("hideRow", {
                        index: item.rowindex,
                    })
                }
            });
            $table.bootstrapTable("updateCell", {
                index: row.rowindex,
                field: 'iEditState',
                value: 3
            });
            $table.bootstrapTable("hideRow", {
                index: row.rowindex
            });
        }
        syncFlagsState('iDeviation');
        syncFlagsState('iRework');
        syncFlagsState('iScrap');
    }

    function delExceptions() {
        var selRows = $.map($('#tb_details').bootstrapTable('getSelections'), function (row) {
            if (3 != row.iEditState)
                return row;
        });
        if (0 == selRows.length) {
            showMessageBox("请选中您要删除的异常明细。");
        } else {
            if (confirm("删除异常明细的同时会将其下责任对象一同删除，是否继续？")) {
                for (var i = 0; i < selRows.length; i++) {
                    var row = selRows[i];
                    delException(row, true);
                }
            }
        }
    }

    function addRespObject($subTable, prow) {
        var position = prow.respons.length;
        newrow = {
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
            pguid: prow.guid,
            rowindex: position
        };
        $subTable.bootstrapTable("insertRow", {
            index: position,
            row: newrow
        });

        if (prow.respons.indexOf(newrow) < 0) {
            prow.respons.push(newrow);
        }
    }

    function delRespObject(row, hasConfirm) {
        if (!hasConfirm) {
            if (!confirm("正在删除责任对象，是否继续？")) return;
        }
        var $subTable = $('#tb_resps_' + row.pguid);
        if (1 == row.iEditState) {
            $subTable.bootstrapTable("remove", {
                field: 'guid',
                values: [row.guid]
            });
        } else if ((0 == row.iEditState) || (2 == row.iEditState)) {
            $subTable.bootstrapTable("updateCell", {
                index: row.rowindex,
                field: 'iEditState',
                value: 3
            });
            $subTable.bootstrapTable("hideRow", {
                index: row.rowindex,
            })
        }
    }

    function delRespObjects($subTable) {
        var selRows = $.map($subTable.bootstrapTable('getSelections'), function (row) {
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

    function tableExpandAll() {
        $('#tb_details').bootstrapTable('expandAllRows');
    }

    function tableCollapseAll() {
        $('#tb_details').bootstrapTable('collapseAllRows');
    }

    $(function () {
        loadData();
        initHeadData();
        createTable();
        detectOS();
        $('#btn_ex_add').bind("click", addException);
        $('#btn_ex_del').bind("click", delExceptions);
        $('#btn_ex_expand').bind("click", tableExpandAll);
        $('#btn_ex_collapse').bind("click", tableCollapseAll);
        if (1 != editmode) {
            $('#btn_ex_add').attr("disabled",true);
            $('#btn_ex_del').attr("disabled",true);
        }
        if (0 == editmode) {
            $('#btn_commit').attr("disabled",true);
            $('#btn_save').attr("disabled",true);
        }
    });

    function createTable() {
        $('#tb_details').bootstrapTable({
            toolbar: '#dt_toolbar',
            striped: true,
            cache: false,
            detailView: true,
            clickEdit: true,
            clickToSelect: false,
            onExpandRow: function (index, row, $detail) {
                createSubTable(index, row, $detail);
            },
            formatLoadingMessage: function () {	    // 设置加载提示
                return "";
            },
            formatNoMatches: function () {		    // 设置无数据提示
                return "请使用 '新增异常' 按钮添加异常明细数据。";
            },
            columns: [{
                checkbox: true,
                visible:  (1 == editmode)
            }, {
                field: 'iDetailID',
                title: 'iDetailID',
                visible: false
            }, {
                field: 'iParamsID',
                title: 'iParamsID',
                visible: false
            }, {
                field: 'iExceptionItemID',
                title: 'iExceptionItemID',
                visible: false
            }, {
                field: 'cExceptionType',
                title: '异常类型',
                width: '150px',
                // editable: {
                //     type: 'select',
                //     title: '异常类型',
                //     emptytext: '<请选择>',
                //     source: jsExceptionTypes,
                //     disabled: (1 != editmode)
                // }
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
                title: '子类型',
                width: '120px',
                // editable: {
                //     type: 'select',
                //     title: '子类型',
                //     emptytext: '<请选择>',
                //     disabled: (1 != editmode),
                //     source: function () {
                //         var index = this.parentNode.parentNode.rowIndex - 1;
                //         if (index >= 0) {
                //             var type = jsExceptions[index].cExceptionType;
                //             return jsSubExceptionTypes[type];
                //         } else {
                //             return [];
                //         }
                //     }
                // }
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
                field: 'iAmount',
                title: '不良数量',
                width: '80px',
                editable: {
                    type: 'number',
                    title: '不良数量',
                    emptytext: '<请输入>',
                    disabled: (1 != editmode),
                    min: 1,
                    validate: function (v) {
                        if (!v) return '请输入不良数量';
                    }
                }
            }, {
                field: 'cErrorUnit',
                title: '不良单位',
                width: '100px',
                editable: {
                    type: 'select',
                    title: '不良单位',
                    emptytext: '<请选择>',
                    disabled: (1 != editmode),
                    source: function () {
                        var exType = $(this.parentNode.parentElement).find('[data-name="cExceptionType"]').html();
                        if ("" != exType) {
                            return jsUnits[exType];
                        } else {
                            return [];
                        }
                    }
                }
            }, {
                field: 'iDeviation',
                title: '偏差',
                width: '50px',
                class: 'bs-checkbox',
                formatter: function (value, row, index) {
                    if (row.iDeviation == 1) {
                        return '<input id="iDeviation' + index + '" type="checkbox" onclick="onFlagsEdited(\'iDeviation\', ' + index + ', this)" ' + ((1 != editmode) ? 'disabled' : '') + '  checked>';
                    } else {
                        return '<input id="iDeviation' + index + '" type="checkbox" onclick="onFlagsEdited(\'iDeviation\', ' + index + ', this)" ' + ((1 != editmode) ? 'disabled' : '') + '>';
                    }
                }
            }, {
                field: 'iRework',
                title: '返工',
                width: '50px',
                disabled: (1 != editmode),
                class: 'bs-checkbox',
                formatter: function (value, row, index) {
                    if (row.iRework == 1) {
                        return '<input id="iRework' + index + '" type="checkbox" onclick="onFlagsEdited(\'iRework\', ' + index + ', this)" ' + ((1 != editmode) ? 'disabled' : '') + ' checked>';
                    } else {
                        return '<input id="iRework' + index + '" type="checkbox" onclick="onFlagsEdited(\'iRework\', ' + index + ', this)" ' + ((1 != editmode) ? 'disabled' : '') + '>';
                    }
                }
            }, {
                field: 'iScrap',
                title: '报废',
                width: '50px',
                disabled: (1 != editmode),
                class: 'bs-checkbox',
                formatter: function (value, row, index) {
                    if (row.iScrap == 1) {
                        return '<input id="iScrap' + index + '" type="checkbox" onclick="onFlagsEdited(\'iScrap\', ' + index + ', this)" '+ ((1 != editmode) ? 'disabled' : '') + ' checked>';
                    } else {
                        return '<input id="iScrap' + index + '" type="checkbox" onclick="onFlagsEdited(\'iScrap\', ' + index + ', this)" '+ ((1 != editmode) ? 'disabled' : '') + '>';
                    }
                }
            }, {
                field: 'cDescription',
                title: '描述',
                editable: {
                    type: 'textarea',
                    title: '描述',
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
            },{
                field: 'operate',
                title: '操作',
                align: 'center',
                width: '50px',
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
            onEditableShown: function(field, row, $el) {
                if (("iAmount" == field) && (0 == row.iAmount)) {
                    //$('.form-control').val(""); //清除效果
                    $('.form-control').select(); //选中效果
                }
            },
            data: jsExceptions
        })
    }

    function createSubTable(index, prow, $detail) {
        var guid = prow.guid;
        var resp = prow.respons;
        $detail.html('<div id="rsp_toolbar_' + guid + '" class="btn-group">\n' +
            '<button id="btn_rsp_add' + guid + '" type="button" class="btn btn-info">\n' +
            '<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增责任对象\n' +
            '</button>\n' +
            '<button id="btn_rsp_del' + guid + '" type="button" class="btn btn-warning">\n' +
            '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除责任对象\n' +
            '</button>\n' +
            '</div>\n' +
            '<table id="tb_resps_' + guid + '" class="table table-striped"></table>');

        if (0 == editmode) {
            $('#btn_rsp_add' + guid).attr("disabled",true);
            $('#btn_rsp_del' + guid).attr("disabled",true);
        }

        $('#tb_resps_' + guid).bootstrapTable({
            toolbar: '#rsp_toolbar_' + guid,
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
                // editable: {
                //     type: 'select',
                //     title: '责任工序',
                //     emptytext: '<请选择>',
                //     disabled: (1 != editmode),
                //     source: jsTechs
                // }
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
                // editable: {
                //     type: 'select',
                //     title: '责任部门',
                //     emptytext: '<请选择>',
                //     disabled: (1 != editmode),
                //     source: jsDepts
                // }

                // formatter: function (value, row, index) {
                //     var jsRow = JSON.stringify(row).replace(/"/g, '&quot;');
                //     var onclick = '\"showObjSelector(\'cRespDept\', \'' + jsRow + '\', ' + index + ')\"';
                //     if (null == value || "" == value) {
                //         value = (1 != editmode) ? "" : "<请选择>";
                //     }
                //     if (1 != editmode)
                //         return value;
                //     else
                //         return '<a onclick=' + onclick + '>' + value + '</a>';
                // }
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
                // editable: {
                //     type: 'select',
                //     title: '责任人',
                //     emptytext: '<请选择>',
                //     disabled: (1 != editmode),
                //     source: function () {
                //         var index = this.parentNode.parentNode.rowIndex - 1;
                //         if ((index >= 0) && (index < resp.length))  {
                //             var deptName = resp[index]['cRespDept'];
                //             return  jsDeptPerson[deptName];
                //         } else {
                //             return [];
                //         }
                //     }
                // }
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
                // editable: {
                //     type: 'select',
                //     title: '责任厂商',
                //     emptytext: '<请选择>',
                //     disabled: (1 != editmode),
                //     source: jsSuppliers
                // }
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
            onEditableShown: function(field, row, $el) {
                if ((("nAmount" == field) && (0 == row.nAmount)) || (("nPrice" == field) && (0 == row.nPrice))){
                    //$('.form-control').val(""); //清除效果
                    $('.form-control').select(); //选中效果
                }
            },
                data: resp
            }
        )
        $('#btn_rsp_add' + guid).bind("click", function () {
            addRespObject($('#tb_resps_' + guid), prow);
        });

        $('#btn_rsp_del' + guid).bind("click", function() {
            delRespObjects($('#tb_resps_' + guid));
        });
    }

    function onFeedbackOnlyFlagChanged() {
        var checked = $('#feedbackonlyflag').prop("checked");
        jsHead.iFlagFeedBackOnly = (checked ? 1 : 0);
        if (checked) {
            $('#lackflag').prop("disabled", true);
            $('#lackflag').prop("checked", false);
            jsHead.iFlagLack = 0;

            $('#lacknum').prop("readonly", true);
            $('#lacknum').val(0);
            jsHead.iLackNum = 0;

            $('#replenishmflag').prop("disabled", true);
            if (jsHead.iState == 0) {
                $('#replenishmflag').prop("checked", false);
                jsHead.iFlagReplenishM = 0;
            }

            $('#replenishpflag').prop("disabled", true);
            if (jsHead.iState == 0) {
                $('#replenishpflag').prop("checked", false);
                jsHead.iFlagReplenishP = 0;
            }

            $('.bs-checkbox input').prop("checked", false);
            for (var i = 0; i < jsExceptions.length; i++) {
                jsExceptions[i].iDeviation = 0;
                jsExceptions[i].iRework = 0;
                jsExceptions[i].iScrap = 0;
                if (0 == jsExceptions[i].iEditState)
                    jsExceptions[i].iEditState = 2;
            }
            syncFlagsState('iDeviation');
            syncFlagsState('iRework');
            syncFlagsState('iScrap');
        } else {
            $('#lackflag').prop("disabled", false);

            $('#lacknum').prop("readonly", !$('#lackflag').prop("checked"));

            if (jsHead.iState == 0)
                $('#replenishmflag').prop("disabled", false);

            if (jsHead.iState == 0)
                $('#replenishpflag').prop("disabled", false);
        }
    }

    function onReplenishMFlagChanged() {
        var checked = $('#replenishmflag').prop("checked");
        jsHead.iFlagReplenishM = (checked ? 1 : 0);
    }

    function onReplenishPFlagChanged() {
        var checked = $('#replenishpflag').prop("checked");
        jsHead.iFlagReplenishP = (checked ? 1 : 0);
    }

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

    function onExceptionItemEdited(field, row, oldValue, $el) {
        var iExceptionItemID = mapSubTypeID[row.cExceptionType + ":" + row.cExceptionItem];
        $('#tb_details').bootstrapTable("updateCell", {
            'index': row.rowindex,
            'field': 'iExceptionItemID',
            'value': iExceptionItemID
        });
        updateEditState(row);
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

    function getSelectData(field) {
        if ("cRespCorp" == field) {
            return jsSuppliers;
        }else if ("cRespTech" == field) {
            return jsTechs;
        } else if ("cRespDept" == field) {
            return jsDepts;
        } else if ("cRespPerson" == field) {
            var objRow = JSON.parse($.$jsRow);
            // var deptName = objRow.cRespDept;
            // return jsDeptPerson[deptName];
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
            $('.panel-heading').find('h4').html('请选择异常类型');
        else if ("cExceptionItem" == field)
            $('.panel-heading').find('h4').html('请选择异常小类');

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

    function validCheck(toState) {
        //检查表头信息
        if ("" == jsHead.cBillCode) {
            showMessageBox("未获取到反馈单号，请检查系统单号规则设置。");
            return false;
        }
        if ("" == jsHead.cFBDepartment) {
            showMessageBox("请选择反馈部门。");
            return false;
        }
        if ("" == jsHead.cFBPerson) {
            showMessageBox("请选择反馈人。");
            return false;
        }
        // if (0 == jsHead.iSourceBillType) {
        //     if ("" == jsHead.cWorkCenter) {
        //         showMessageBox("请选择工作中心。");
        //         return false;
        //     }
        //     if ("" == jsHead.cWorkStation) {
        //         showMessageBox("请选择工作机台。");
        //         return false;
        //     }
        //     if ("" == jsHead.cShift) {
        //         showMessageBox("请选择班次。");
        //         return false;
        //     }
        //     if ("" == jsHead.cProcesses) {
        //         showMessageBox("请选择作业工序。");
        //         return false;
        //     }
        // }
        //检查现场判断项目
        if ((0 == jsHead.iFlagFeedBackOnly) && (1 == jsHead.iFlagLack)) {
            if (0 >= jsHead.iLackNum) {
                showMessageBox("请填写缺数数量。");
                return false;
            }

            if ("" == jsHead.cLackUnit) {
                showMessageBox("未指定缺数单位，请检查产品档案。");
                return false;
            }
        }

        if (0 < toState) {
            if (jsExceptions.length == 0) {
                showMessageBox("请填写异常明细和责任对象。");
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
                if ("" == exItem.cMaterialType) {
                    showMessageBox("请选择异常物料类型。");
                    ret = false;
                    return false;
                }
                if ("" == exItem.cErrorUnit) {
                    showMessageBox("请选择异常单位。");
                    ret = false;
                    return false;
                }
                if (0 > exItem.iAmount) {
                    showMessageBox("请输入异常数量。");
                    ret = false;
                    return false;
                }
            }
            if ((0 == exItem.respons.length) && (0 < toState)){
                showMessageBox("第 " + (pIndex + 1) + " 行异常明细下没有设置责任对象。");
                ret = false;
                return false;
            }
            $.each(exItem.respons, function(cIndex, rspItem) {
                respCount = respCount + 1;
                if (3 == iEditState) {
                    //同步一下责任对象的编辑状态
                    rspItem.iEditState = 3;
                } else {
                    if ((("" == rspItem.cRespDept) || ("" == rspItem.cRespPerson)) && ("" == rspItem.cRespCorp)) {
                        showMessageBox("第 " + (pIndex + 1) + " 行异常明细下的第 " + (cIndex + 1) + " 行未选择责任对象。");
                        ret = false;
                        return false;
                    }
                }
            });
            if ((0 < toState) && (0 == respCount)) {
                showMessageBox("第 " + (pIndex + 1) + " 行异常明细下未指定责任对象。");
                ret = false;
                return false;
            }
        });

        if ((0 == jsHead.iState) && (0 < toState) && (0 == jsHead.iFlagFeedBackOnly)) {
            if ((0 == jsHead.iFlagLack) && (0 == jsHead.iFlagReplenishM) && (0 == jsHead.iFlagReplenishP)
                && (0 == jsHead.iFlagDeviation) && (0 == jsHead.iFlagRework) && (0 == jsHead.iFlagScrap)) {
                if (confirm("您没有在质检单上设置任何异常标记，质检单将被标记为 “仅做反馈记录”，是否继续？")) {
                    jsHead.iFlagFeedBackOnly = 1;
                    ret = false;
                } else {
                    ret = false;
                }
            }
        }
        return ret;
    }

    function commitForm(toState) {
        $('#btn_commit').prop("disabled", true);
        $('#btn_save').prop("disabled", true);
        if (validCheck(toState)) {
            var sHead = JSON.stringify(jsHead);
            var sExceptions = JSON.stringify(jsExceptions);
            var Pictures = $("#basePictures").val();
            //var Pictures = "/images/temporary/160438416855785-1604394951028.jpeg,/images/temporary/1604384168844455-1604394951148.jpeg,/images/temporary/1604384169445313-1604394951343.jpeg";

            $.ajax({
                url: "getQcAbnormality/saveData.do",
                type: "POST",
                cache: false,
                async: false,
               // dataType: 'json',  /*指定返回值的数据格式*/
                contentType : "application/json", /*指定提交数据的格式*/
                scriptCharset:'utf-8',
                data: '{"commitData":' + JSON.stringify({tostate: toState.toString(),basePictures: Pictures, head: sHead, exceptions: sExceptions})+ '}',
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

                        var sUserAgent = navigator.userAgent;
                        var bIsAndroid = sUserAgent.toLowerCase().match(/android/i) == "android";
                        if (bIsAndroid) {
                            showMessageBox("保存成功");
                            window.slifeJsAgent.invoke_native("getResult", "params", data);

                        }else{

                            if("1" == isuccessful) {
                                showMessageBox("保存成功");
                                window.history.go(-1)
                            }else{
                                showMessageBox("保存失败");
                            }

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
        // if (0 != editmode) {
        //     if (confirm("是否保存数据？")) {
        //         commitForm(0);
        //         return;
        //     }
        // }

        if (0 == jsHead.iSourceType) {
            //平板端
            window.slifeJsAgent.invoke_native("getResult","params","close");

        } else if (1 == jsHead.iSourceType) {
            //PC端
            alert("close");
        } else if (2 == jsHead.iSourceType) {
            // if(1 == jsHead.webType) {
            //     window.slifeJsAgent.invoke_native("getResult","params","close");
            // }else{
                //web端
                window.history.go(-1);
            //}

        }
    }

    function operateFormatter_ex(value, row, index) {
        return [
            '<a class="remove_ex" href="javascript:void(0)" title="删除异常明细">',
            '<i class="glyphicon glyphicon-trash"></i>',
            '</a>'
        ].join('');
    }

    function operateFormatter_rsp(value, row, index) {
        return [
            '<a class="remove_rsp" href="javascript:void(0)" title="删除责任对象">',
            '<i class="glyphicon glyphicon-trash"></i>',
            '</a>'
        ].join('');
    }

    window.operateEvents = {
        'click .remove_ex': function (e, value, row, index) {
            delException(row, false);
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

    function getPhoto() {
        if(1 == jsHead.webType){

            window.slifeJsAgent.invoke_native("getResult", "params", "qcPhotoFun");
        }else{
            MfsJSBridge.invoke('qcPhotoFun', 'abc', 'windowCallback');
        }

    }

    // function preView() {
    //     var jsonParamsSlt = "/images/temporary/160438416855785-1604394951028.jpeg,/images/temporary/1604384168844455-1604394951148.jpeg,/images/temporary/1604384169445313-1604394951343.jpeg";
    //     var resultPicture = jsonParamsSlt.split(",");
    //     var divImg = '<div class="divStyle">';
    //     for (var i = 0; i < resultPicture.length; i++) {
    //         divImg += '<img src="' + resultPicture[i] + '" />';
    //     }
    //     divImg += '</div>';
    //     document.getElementById("showPhoto").innerHTML += divImg;
    //     $("#basePictures").val(jsonParamsSlt);
    // }


    function submitPictures(jsonParams){


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



    // function jsMethod(jsonParams) {
    //
    //     var results = jsonParams.split("!");
    //     var jsonParamsSlt = results[1];
    //     var resultPicture = jsonParamsSlt.split(",");
    //     var divImg = '<div class="divStyle">';
    //     for (var i = 0; i < resultPicture.length; i++) {
    //         divImg += '<img src="' + resultPicture[i] + '" />';
    //     }
    //     divImg += '</div>';
    //     document.getElementById("showPhoto").innerHTML += divImg;
    //
    //     if(jsonParamsYt !="" ){
    //         jsonParamsYt=jsonParamsYt+",";
    //         jsonParamsYt += results[0];
    //     }else{
    //         jsonParamsYt += results[0];
    //     }
    //     $("#basePictures").val(jsonParamsYt);
    // }


    function detectOS() {
        var sUserAgent = navigator.userAgent;
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

</html>
