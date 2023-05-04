<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>送检单审核</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="Css/zhijianstyle.css">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css"/>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery2.js"></script>
    <script type="text/javascript" src="js/myJs.js"></script>
    <script type="text/javascript" src="jedate/jedate.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>

</head>
<style type="text/css">
    div.top1 input {
        border-color: #fff !important;
        box-shadow: inset 1 0px 0px rgba(0, 0, 0, 0.075) !important;
        background-color: #fff !important;
        box-shadow: 0px 0px 0px #888888 !important;
    }

    .table td {
        padding: 3px !important;
        line-height: 20px;
        text-align: center !important;
        vertical-align: middle !important;
        border-top: 1px solid #dddddd;
    }
</style>
<body>
<div id="hidden">
    <input id="hiid" type="hidden" value="">
</div>
<div class="top1">
    <button onclick="huitui()" class="btn-primary"
            style="background-image: url(img/111.png); width: 34px;height: 30px;"></button>
    <div class="top1-title">单据信息</div>
    <div class="top1-one">
        <div class="top1-one-1">送检单号 <input id="sjdh" type="text" value="QCK104235" readOnly="true"></div>
        <div class="top1-one-2"><span>采购单号 </span><input id="cgdh" type="text" value="CG044564" readOnly="true"></div>
        <div class="top1-one-3"><span>制单日期 </span><input id="zdrq" type="text" value="2016-11-13" readOnly="true"></div>

    </div>
    <div class="top1-two">
        <div class="top1-two-1"><span>制单人 </span><input id="zdr" type="text" value="王金凤" readOnly="true"></div>
        <div class="top1-two-2"><span>审核人 </span><input id="shr" type="text" value="" readOnly="true"></div>
        <div class="top1-two-3"><span>到货日期 </span><input id="dhrq" type="text" value="2016-11-13 10:42:52"
                                                         readOnly="true"></div>
    </div>
    <div class="top1-three">
        <div class="top1-three-1"><span>供货商 </span><input id="ghs" style="height:34px;width:291px" type="text" value=""
                                                          readOnly="true"></div>
        <div class="top1-three-2"><span>供货商编号 </span><input id="ghsbh" type="text" value="G0106" readOnly="true"></div>
        <div class="top1-three-3"><span>单据类型 </span><input id="djlx" type="text" value="辅料" readOnly="true"></div>
    </div>
    <div class="top-buttom">
        <div class="top-buttom-1"><span> 备注</span></div>
        <div class="top-buttom-2"><textarea id="bz" name="a" style="width:628px;height:80px;border-color:#FFFFFF">这里写内容</textarea>
        </div>
    </div>
    <div class="title2"><span>送检明细</span>
        <div class="rukutijiao">
            <input type="button" onclick="ruku()" style="height:30px;width:115px;position:absolute;top:-2px;left:-66px;"
                   value="提交入库通知单">
        </div>
    </div>
</div>
<div class="top2">
    <div id="tb">
        <table class="table" style="width:100% ">
            <tr>
                <td colspan="6">物料信息</td>

                <td colspan="2">送检信息</td>
                <td colspan="2">采购信息</td>
                <td colspan="3">检测信息</td>
                <td colspan="4">检测结果</td>
            </tr>
            <tr>
                <td style="width:2% ;height:30px;">序号</td>
                <td style="width:7% ;height:30px;">编号</td>
                <td style="width:8.2% ;height:30px;">名称</td>
                <td style="width:9% ;height:30px;">规格</td>
                <td style="width:5% ;height:30px;">类别</td>
                <td style="width:7% ;height:30px;">入库库房</td>
                <td style="width:5% ;height:30px;">标准数量</td>
                <td style="width:5% ;height:30px;">标准单位</td>
                <td style="width:5% ;height:30px;">数量</td>
                <td style="width:5% ;height:30px;">单位</td>
                <td style="width:7% ;height:30px;">抽检数量</td>
                <td style="width:6% ;height:30px;">不良数量</td>
                <td style="width:6.6% ;height:30px;">不良率</td>
                <td style="width:7% ;height:30px;">异常处理号</td>
                <td style="width:5% ;height:30px;">是否合格</td>
                <td style="width:5% ;height:30px;">特采数量</td>
                <td style="width:8.6% ;height:30px;">操作</td>

            </tr>

        </table>
    </div>
</div>
<div class="cd-popup2">
    <div class="cd-popup-container2">

        <div class="bigKuang">
            <div class="sub-title">
                <h2 class="sub-h">物料信息</h2>

                <div class="sub-bar">
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h"><span id="bzspan" style="position:relative;top:-72%;"></span>
                    <div id="rkxx-inp"><a onclick="baocuna()">保存质检项</a></div>
                </h2>

                <div class="sub-bar">
                    <table id="bb" class="bbbb" STYLE="position: relative;width:100%">

                    </table>
                </div>
            </div>
            <div class="sub-title">
                <h2 class="sub-h">判定信息</h2>
                <div class="sub-bar">
                    <table class="xxTable" style="width:88%; position:relative;left:5%;">
                        <tr>
                            <td style="width:128px;text-align:right"><span id="cjspan"></span></td>
                            <td style="width: 200px;"><input id="bzcjsl" type="text" value=""
                                                             style="border: 1px solid #A9A9A9;height:24px;width:100px;text-align:center;"
                                                             readonly></td>
                            <td style="width: 200px;">
                                <div id="moba"></div>
                            </td>
                            <td>
                                <div id="mobd"></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:auto;text-align:right"><span id="blspan"></span></td>
                            <td style="width: 200px;"><span id="cjspan"/><input id="bzblsl" type="text" value=""
                                                                                style="border: 1px solid #A9A9A9;height:24px;width:100px;text-align:center;">
                            </td>
                            <td>
                                <div id="mobb"></div>
                            </td>
                            <td>
                                <div id="mobd"></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:auto;text-align:right"><span>不良率（%）:</span></td>
                            <td style="width:200px;"><span id="cjspan"><input id="blv" type="text" value=""
                                                                              style="border: 1px solid #A9A9A9;height:24px;width:100px;text-align:center;"
                                                                              readonly/></td>
                            <td>
                                <div id="mobc"></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:auto;text-align:right"><span>结果说明:</span></td>
                            <td style="width:200px;" colspan="2"><span id="cjspan"><input id="xzbz" type="text" value=""
                                                                                          style="border: 1px solid #A9A9A9;height:24px;width:300px;text-align:center;"/>
                            </td>

                        </tr>
                    </table>

                </div>
            </div>
            <div class="sub-bottom">
                <input type="radio" name="reslut" value="1" style="width:20px;height:20px">合格<input type="radio"
                                                                                                    name="reslut"
                                                                                                    value="2"
                                                                                                    style="width:20px;height:20px">拒收<input
                    type="radio" name="reslut" value="3" style="width:20px;height:20px">偏差（特采）
                <button onclick="baocun()">保存</button>
                <button onclick="ckBillid()" ;>查看作业单图片</button>
            </div>

        </div>


    </div>
</div>
</div>


<div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     style="text-align: left;">
    <div class="modal-dialog" role="document" style="text-align: center;">
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
<div id="tecai">
    <input type="hidden" id="sl">
    <div id="Ttop"><a onclick="tecai()">保存 &nbsp;<a onclick="guanbi()">关闭 &nbsp;</a></a></div>
    <div id="Tneirong">
        <table class="Ttable" style="width: 100%;height: 100%;">
            <tr>
                <td style="width: 90px;">采购数量：</td>
                <td><input id="cg" type="text" value="2" style="background-color: #ffffff;border:none;text-align:center"
                           readonly></td>
            </tr>
            <tr>
                <td>特采数量：</td>
                <td><input id="tc" type="text" value="2"
                           style="border: 1px solid #A9A9A9;height:32px;text-align:center"></td>
            </tr>
            <tr>
                <td>异常单号：</td>
                <td><input id="ycdh" type="text" value="2"
                           style="border: 1px solid #A9A9A9;height:32px;text-align:center"></td>
            </tr>
            <tr>
                <td>结果说明：</td>
                <td><input id="jg" type="text" value="2"
                           style="border: 1px solid #A9A9A9;height:32px;text-align:center"></td>
            </tr>

        </table>
    </div>
</div>
<input id="rolesid" type="hidden" value=<%=session.getAttribute("rolesid") %>>
<input id="typeleixing" type="hidden" value=<%=session.getAttribute("typeleixing") %>>
<input id="zhijianId" type="hidden" value=<%=session.getAttribute("zhijianId") %>>
<input id="banci" type="hidden" value=<%=session.getAttribute("banci") %>>
<input id="workTime" type="hidden" value=<%=session.getAttribute("workTime") %>>
<input id="journalMainId" type="hidden" value=<%=session.getAttribute("journalMainId") %>>
<script type="text/javascript">
    var list = <%=session.getAttribute("list") %>;

    var Rlist = <%=session.getAttribute("Rlist") %>;
    var judge;
    var banci = $("#banci").val();
    var workTime = $("#workTime").val();
    var journalMainId = $("#journalMainId").val();

    //查看作业单图片
    function ckBillid() {
        var aa = eval(list);
        console.log(aa);
        var billid = aa[0].billid;
        //alert(billid);
        $.ajax({
            url: "getNumber/test.do?id=" + billid + "&type=1",
            dataType: "json",
            async: false,
            success: function (data) {
                console.log(data);
                $("#imgModal").empty();
                if (data.length == 0) {
                    $("#imgModal").append('暂未生成作业单图片');
                } else {
                    for (var i = 0; i < data.length; i++) {
                        $("#imgModal").append('<img id="test' + i + '" onmousewheel="return bigimg(this)" class="test1" width="100" height="100" src="' + data[i].img + '" />');
                    }

                }
                $('#myModal3').modal();
                $(".test1").click(function () {
                    //alert($(this).width());
                    if ($(this).width() > 100) {
                        $(this).css("height", 100);
                        $(this).css("width", 100);
                        $(this).css("zoom", '0');
                    } else {
                        $(this).css("height", 1300);
                        $(this).css("width", 1000);
                        $(this).css("zoom", '200%');
                    }
                })

            }
        })
    }

    //input只允许正负整数或者小数
    function justAllowNum(obj) {//用户只能输入正负数与小数
        if (isNaN(obj.value) && !/^-$/.test(obj.value)) {
            obj.value = "";
        }
        if (!/^[+-]?\d*\.{0,1}\d{0,1}$/.test(obj.value)) {
            obj.value = obj.value.replace(/\.\d{2,}$/, obj.value.substr(obj.value.indexOf('.'), 5));
        }
    }

    //alert(journalMainId+workTime+banci);
    function guanbi() {
        $("#tecai").hide();
    }

    function ruku() {
        var rolesid = $("#rolesid").val();
        var iType = $("#typeleixing").val();
        var zhijianId = $("#zhijianId").val();
        var aa = eval(list);
        var iid = aa[0].iid;
        var ifDone = aa[0].ifDone;
        var bz = $("#bz").val();
        if (ifDone == 1) {
            $.ajax({
                url: encodeURI(encodeURI("MakeWarehouseMess.list?rolesid=" + rolesid + "&iType=" + iType + "&zhijianId=" + zhijianId + "&bz=" + bz + "&iid=" + iid + "&zhijianId=" + zhijianId + "&journalMainId=" + journalMainId)),
                async: false,
                success: function (data) {
                    if (data == 1) {
                        alert("提交成功");

                        window.history.back();
                        windows.location.person.reload();
                        //self.opener.location.reload();
                    } else {
                        alert("提交不成功");

                        window.history.back();
                        windows.location.person.reload();
                    }
                }
            })
        } else {

            alert('已完成订单不允许重复提交');
        }
        // alert("MakeWarehouseMess.list?rolesid="+rolesid+"&iType="+iType+"&zhijianId="+zhijianId+"&bz="+bz);

    }

    //保存检测详细数据的按钮调用
    function baocuna() {
        var dd = $("#bb tr").length;
        var id = $("#hiid").val();
        for (var i = 1; i < dd; i++) {
            var w = $("#bb tr").eq(i).find("td:eq(0)").text();
            //var w1 = $("#bb tr").eq(i).find("td:eq(0)").text();
            var x = $("#bb tr").eq(i).find("td:eq(13)").children().val();
            var y = $("#bb tr").eq(i).find("td:eq(14)").children().val();
            var z = $("#bb tr").eq(i).find("td:eq(15)").children().val();
            //alert("updateDetail.list?id="+id+"&actual_Value="+x+"&finaly="+y+"&remake="+z+"&tip="+w);
            $.ajax({
                url: encodeURI(encodeURI("UpdateIncomMessage.list?id=" + id + "&actual_Value=" + x + "&finaly=" + y + "&remake=" + z + "&tip=" + w)),
                async: false,
                success: function (data) {
                }
            })
        }
        var cFeedBackSimpleCode = $("#newColumn1").val();
        var cFeedBackProduceBatchNum = $("#newColumn2").val();
        var cFeedBackComingMode = $("#newColumn3").val();
        var dFeedBackProduceDate = $("#newColumn4").val();
        var cFeedBackSimpleState = $("#newColumn5").val();
        var dFeedBackSimpleLevel = $("#newColumn6").val();
        var dFeedBackCheckData = $("#newColumn7").val();
        var zhjId = $("#zhijianId").val();
        $.ajax({
            url: encodeURI(encodeURI("updateQualityDetail.list?id=" + id + "&cFeedBackSimpleCode=" + cFeedBackSimpleCode + "&cFeedBackProduceBatchNum=" + cFeedBackProduceBatchNum + "&cFeedBackComingMode=" + cFeedBackComingMode + "&dFeedBackProduceDate=" + dFeedBackProduceDate + "&cFeedBackSimpleState=" + cFeedBackSimpleState + "&dFeedBackSimpleLevel=" + dFeedBackSimpleLevel + "&dFeedBackCheckData=" + dFeedBackCheckData)),
            async: false,
            success: function (data) {
            }
        })
        //alert("保存成功");
        $('.cd-popup2').removeClass('is-visible2');
        $("table.sjdTable").empty();
        $("div.sub-bar:first").empty();
        $("table.aaaa").empty();
        $("#moba").empty();
        $("#mobb").empty();
        $("#mobc").empty();
        $("#mobd").empty();
        window.location.reload();
    }

    jQuery(document).ready(function ($) {
        begin();
        //打开窗口
        $('.cd-popup-trigger2').on('click', function (event) {
            event.preventDefault();
            var i = this.parentNode.parentNode.rowIndex - 2;
            jiance(i);
            $('.cd-popup2').addClass('is-visible2');
            //var i=this.parentNode.parentNode;

            //alert(i.cells[2].innerHTML);
            //$(".dialog-addquxiao").hide()
        });
        //关闭窗口
        $('.cd-popup2').on('click', function (event) {
            if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2')) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
                $("div.sub-bar:first").empty();
                $("table.aaaa").empty();
                $("#moba").empty();
                $("#mobb").empty();
                $("#mobc").empty();
                $("#mobd").empty();
            }
        });
        //ESC关闭
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup2').removeClass('is-visible2');
            }
        });
    })

    function begin() {
        $("#tecai").hide();
        var aa = eval(list);
        var i;
        $("#sjdh").val(aa[0].cBillCode);
        $("#cgdh").val(aa[0].cBillCode_Buy);
        $("#zdrq").val(getLocalTime(aa[0].dCreateDate.time));
        $("#zdr").val(aa[0].cCreateManName);
        $("#shr").val(aa[0].cCheckManName);
        $("#dhrq").val(getLocalTime(aa[0].dArrival.time));
        $("#ghs").val(aa[0].cSupplier);
        $("#ghsbh").val(aa[0].cSuppliercode);
        $("#djlx").val(aa[0].cBillCode);
        $("#bz").val('[' + aa[0].cBillCode_Buy + ']' + aa[0].cRemark);
        for (i = 0; i < aa.length; i++) {
            var type;
            if (aa[i].iMaterialType == '0') {
                type = '辅料';
            } else if (aa[i].iMaterialType == '1') {
                type = '纸张';
            } else if (aa[i].iMaterialType == '2') {
                type = '成品(外加工)';
            } else {
                type = '半成品(外加工)';
            }
            var jieguo;
            if (aa[i].bQualified == '1') {
                jieguo = '合格';

            } else if (aa[i].iUnqualified == '1') {
                jieguo = '特采';

            } else if (aa[i].iUnqualified == '0' && aa[i].bQualified == '0') {
                jieguo = '拒收';

            }
            var judgeR;
            if (aa[i].judgeR == 1) {
                judgeR = '<a href="javascript:0;" class="cd-popup-trigger2" style="color:red">已检测</a>'
            } else {
                judgeR = '<a href="javascript:0;" class="cd-popup-trigger2">检测</a>'
            }
            $("table.table").append('<tr><td style="width:2% ;height:30px;">' + aa[i].iXh + '</td>' +
                '<td style="width:7% ;height:30px;">' + aa[i].cMaterialCode + '</td>' +
                ' <td style="width:8.2% ;height:30px;">' + aa[i].cMaterialName + '</td>' +
                '<td style="width:9% ;height:30px;">' + aa[i].cMaterialGG + '</td>' +
                '<td style="width:5% ;height:30px;">' + type + '</td>' +
                '<td style="width:7% ;height:30px;">' + aa[i].cRKF + '</td>' +
                '<td style="width:5% ;height:30px;">' + aa[i].nAmount + '</td>' +
                '<td style="width:5% ;height:30px;">' + aa[i].cMaterialUnit + '</td>' +
                '<td style="width:5% ;height:30px;">' + aa[i].nBuyAmount + '</td>' +
                '<td style="width:5% ;height:30px;">' + aa[i].cBuyUnit_Check + '</td>' +
                '<td style="width:7% ;height:30px;">' + aa[i].nSamplingPackAmount + '</td>' +
                '<td style="width:6% ;height:30px;">' + aa[i].nBadAmount + '</td>' +
                '<td style="width:6.6% ;height:30px;">' + aa[i].nBadRate + '</td>' +
                '<td style="width:7% ;height:30px;">' + aa[i].cACTION_CARD + '</td>' +
                '<td style="width:5% ;height:30px;">' + jieguo + '</td>' +
                '<td style="width:5% ;height:30px;">' + aa[i].nSpecialAmount + '</td>' +
                '<td style="width:8.6% ;height:30px;">' + judgeR + '</td></tr>');
        }
        $('.cd-popup2').removeClass('is-visible2');
    }


    function jiance(i) {
        var aa = eval(list);
        var ll = eval(Rlist);
        var type;
        if (aa[i].iMaterialType == '0') {
            type = '辅料';
        } else if (aa[i].iMaterialType == '1') {
            type = '纸张';
        } else if (aa[i].iMaterialType == '2') {
            type = '成品(外加工)';
        } else {
            type = '半成品(外加工)';
        }
        var scTime;
        var jyTime;
        if (aa[i].dFeedBackProduceDate == null) {
            scTime = Date.parse(new Date());
        } else {
            scTime = aa[i].dFeedBackProduceDate.time;
        }
        if (aa[i].dFeedBackCheckData == null) {
            jyTime = Date.parse(new Date());
        } else {
            jyTime = aa[i].dFeedBackCheckData.time;
        }
        $("div.sub-bar:first").empty();
        $("div.sub-bar:first").append('<table class="aaaa" style="width: 100%;position: relative;font-size: 15px">' +

            '<tr>' +
            '<td>样品编号：</td><td style="height:40px;">' + '<input type="text" id="newColumn1" value="' + aa[i].cFeedBackSimpleCode + '"style="width: 110px; height: 30px;border:1px solid #A9A9A9;"></td>' +
            '<td>生产批号：</td><td style="height:40px;width:120px;">' + '<input type="text" id="newColumn2" value="' + aa[i].cFeedBackProduceBatchNum + '"style="width: 110px; height: 30px;border:1px solid #A9A9A9;"></td>' +
            '<td style="">质检单号：</td><td style="height:30px;">' + aa[i].cBillCode + '</td>' +
            '<td style="">规格：</td><td style="height:30px;">' + aa[i].cMaterialGG + '</td>' +
            '</tr>' +
            '<tr>' +
            '<td>样品状态：</td><td style="height:40px;"><select  id="newColumn5" style="width: 110px; height: 30px;border:1px solid #A9A9A9;" >' + aa[i].cFeedBackSimpleState + '</select></td>' +
            '<td>样品等级：</td><td style="height:40px;width:120px;"><select  id="newColumn6" style="width: 110px; height: 30px;border:1px solid #A9A9A9;">' + aa[i].dFeedBackSimpleLevel + '</select></td>' +
            '<td style="height:30px;">物料编号：</td><td style="height:30px;">' + aa[i].cMaterialCode + '</td>' +
            '<td style="">版本：</td><td style="height:30px;">' + aa[i].cVers + '</td>' +
            '</tr>' +
            '<tr>' +
            '<td>检验日期：</td><td style="height:40px;">' + '<input type="text" id="newColumn7" value="' + getLocalTime(jyTime) + '"style="width: 132px; height: 30px;border:1px solid #A9A9A9;" onClick="jeDate({dateCell:\'#newColumn7\',isTime:true,format:\'YYYY-MM-DD\'})"  readonly></td>' +
            '<td>来样方式：</td><td style="height:40px;"><select  id="newColumn3" style="width: 110px; height: 30px;border:1px solid #A9A9A9;">' + aa[i].cFeedBackComingMode + '</select></td>' +
            '<td style="">抽样标准：</td><td style="height:30px;">' + aa[i].cSamplingStandard + '</td>' +
            '<td style="">送检数量：</td><td style="height:30px;">' + aa[i].nAmount + '</td>' +
            '</tr>' +
            '<tr>' +
            '<td>生产日期：</td><td style="height:40px;">' + '<input type="text" id="newColumn4" value="' + getLocalTime(scTime) + '"style="width: 132px; height: 30px;border:1px solid #A9A9A9;" onClick="jeDate({dateCell:\'#newColumn4\',isTime:true,format:\'YYYY-MM-DD\'})"  readonly></td>' +

            '<td>复核人:</td>' +
            '<td ><select name="reviewer_id" id="reviewer_id"  >' +
            '<option value="0" selected >请选择</option>' +
            '</select></td>' +

            '<td style="">物料类别：</td><td style="height:30px;">' + aa[i].cMaterialType + '</td>' +
            '<td>质检等级 : </td><td style="height:30px;">' + aa[i].cGrade + '</td>' +
            '</tr>' +
            '</table>');


        //复核人下拉填充数据
        for (var g = 0; g < ll.length; g++) {
            var id = ll[g].id;
            var textStr = ll[g].czgxm;
            $optionStr = $("<option>").attr({"value" : id}).text(textStr);
            $("#reviewer_id").append($optionStr);

        }

        var pp = aa[i].ID_Main;
        var iid = aa[i].iid;
        if (pp == null) {
            iid = aa[i].iid;
        } else {
            iid = pp;
        }

        $.ajax({
            url: "GetCall.list?iid=" + aa[i].iid + "&type=" + aa[i].iMaterialType + "&id_main=" + aa[i].ID_Main,
            async: false,
            success: function (data) {
                var retData = eval('(' + data + ')');
                var checkItems = retData.citemstr;
                $("table.bbbb").empty();
                $("table.bbbb").append('<tr style="background-color: #3E6390;color:#fff;">' +
                    '<td style="height: 30px;">检验项目</td>' +
                    '<td style="height: 30px;">检验说明</td>' +
                    '<td style="height: 30px;">检验标准</td>' +
                    '<td style="height: 30px;">检测属性</td>' +
                    '<td style="height: 30px;">标准值</td>' +
                    '<td style="height: 30px;">标准单位</td>' +
                    '<td style="height: 30px;">检验值</td>' +
                    '<td style="height: 30px;">结果</td>' +
                    '<td style="height: 30px;">备注</td>' +
                    '<td style="height: 30px;">缺陷等级</td>');
                var i;
                //console.log(dd);
                for (i = 0; i < checkItems.length; i++) {
                    var checkResult = checkItems[i].c;
                    if (checkResult == 1) {
                        var judgeResult = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="1"selected ="selected">合格</option><option value="0">不合格</option></select>';
                    } else if (checkResult == 0) {
                        var judgeResult = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1">未判定</option><option value="1">合格</option><option value="0" selected ="selected">不合格</option></select>';
                    } else {
                        var judgeResult = '<select style="text-align:center;height:99%;width:100%;border:0px;"><option value="-1" selected ="selected">未判定</option><option value="1">合格</option><option value="0" >不合格</option></select>';

                    }

                    if (checkItems[i].editorType == 'ComboBox') {
                        $("table.bbbb").append('<tr style="background-color: #ffffff;">' +
                            '<td style="height:30px;display:none;">' + checkItems[i].tip + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].operator + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].defaultValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].minValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].maxValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].dataType + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].precision + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].caption + '</td>' +
                            '<td style="height: 30px;max-width:400px;">' + checkItems[i].Propertys + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].checkrule + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].checkType + '</td>' +
                            '<td style="height: 30px;"></td>' +
                            '<td style="height: 30px;">' + checkItems[i].unit + '</td>' +
                            '<td style="height: 30px;"><select id="JYid' + i + '" style="text-align: center;width:100%;height:99%;width:100%;border:0px;">' + checkItems[i].enumString + '</select></td>' +
                            '<td style="height: 30px;min-width: 63px;">' + judgeResult + '</td>' +
                            '<td style="height: 30px;">' + '<input type="text"  value="' + checkItems[i].remake + '"style="border: none;width: 100%; height: 96%;text-align:center;">' + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].DefectLevel + '</td>');

                            document.getElementById("JYid"+i).options[1].selected = true;

                    } else {
                        var checkValue = '<input class="campare" type="text" value="' + checkItems[i].checkValue + '" style="border: none;width: 100%; height: 96%;text-align:center;" onkeyup="justAllowNum(this)">';

                        if (checkItems[i].dataType == 'String') {
                            checkValue = '<input class="campare" type="text" value="' + checkItems[i].checkValue + '" style="border: none;width: 100%; height: 96%;text-align:center;">';
                        }
                        $("table.bbbb").append(
                            '<tr style="background-color: #ffffff;">' +
                            '<td style="height:30px;display:none;">' + checkItems[i].tip + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].operator + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].defaultValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].minValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].maxValue + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].dataType + '</td>' +
                            '<td style="height: 30px; display: none;">' + checkItems[i].precision + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].caption + '</td>' +
                            '<td style="height: 30px;max-width: 400px;"><div id="mobaa">' + checkItems[i].Propertys + '</div></td>' +
                            '<td style="height: 30px;">' + checkItems[i].checkrule + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].checkType + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].standardValue + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].unit + '</td>' +
                            '<td style="height: 30px;">' + checkValue + '</td>' +
                            '<td style="height: 30px; min-width: 63px;">' + judgeResult + '</td>' +
                            '<td style="height: 30px;">' + '<input type="text"  value="' + checkItems[i].remake + '"style="border: none; width: 100%; height: 96%;text-align:center;">' + '</td>' +
                            '<td style="height: 30px;">' + checkItems[i].DefectLevel + '</td>');
                    }
                }

                $(".campare").keyup(function () {
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
                    //alert(defaultValue);
                    //alert(operator);
                    if ("大于" == operator) {
                        if (tureValue > defaultValue) {
                            //alert(tureValue+'>'+defaultValue);
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='-1'>未填写</option><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //$("#resause").val(1);
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='-1'>未填写</option><option value='1' >合格</option><option value='0'  selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("小于" == operator) {
                        if (tureValue < defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'   >合格</option><option value='0' selected = 'selected'>不合格</option></select>";
                        }
                    } else if ("介于" == operator) {
                        if (minValue <= tureValue && tureValue <= maxValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  >合格</option><option value='0' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("等于" == operator) {
                        if (defaultValue == tureValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  >合格</option><option value='0' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("大于等于" == operator) {
                        if (defaultValue < tureValue || tureValue == defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  >合格</option><option value='0' selected = 'selected' >不合格</option></select>";
                        }
                    } else if ("小于等于" == operator) {
                        if (defaultValue > tureValue || tureValue == defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  >合格</option><option value='0' selected = 'selected' >不合格</option></select>";
                        }

                    } else if ("不等于" == operator) {
                        if (tureValue != defaultValue) {
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  selected = 'selected' >合格</option><option value='0'>不合格</option></select>";
                        } else {
                            //this.parentNode.parentNode.cells[8].innerHTML="<input type='text' value='不合格' style='background-color:#ffffff' readonly>";
                            this.parentNode.parentNode.cells[14].innerHTML = "<select style='text-align: center;height:99%;width:100%;border:0px;'><option value='1'  >合格</option><option value='0' selected = 'selected' >不合格</option></select>";
                        }

                    }
                })
                //$("div.rkxx-neir").append('<table style="height: 100%;width: 100%;position: relative;"><tr><td>'+mm.citemstr+'</td></tr></table>');
                //$("#bzcjsl").val(mm.namount);

                judge = retData.judge;
            }
        })
        $("#moba").empty();
        $("#moba").append("抽检合格允许比例:" + aa[i].nQualifiedRateThreshold);
        $("#mobb").empty();
        $("#mobb").append("一般缺陷允许数量:" + aa[i].nAllowNormalDefectAmount);
        $("#mobc").empty();
        $("#mobc").append("重大缺陷允许数量:" + aa[i].nAllowGreatDefectAmount);
        $("#mobd").empty();
        $("#mobd").append("AQL等级:" + aa[i].cGrade);
        $("#bzcjsl").val(aa[i].nSamplingPackAmount);
        $("#cjspan").html("抽检数量（" + aa[i].cPackingUnit + "）:");
        $("#blspan").html("不良数量（" + aa[i].cPackingUnit + "）:");
        $("#bzspan").html("判定依据: " + aa[i].cTestStandard);
        if (aa[i].bQualified == '1') {
            $("input:radio[name='reslut']").eq(0).attr("checked", true);
        } else if (aa[i].iUnqualified == '1') {
            $("input:radio[name='reslut']").eq(2).attr("checked", true);
        } else {
            $("input:radio[name='reslut']").eq(0).attr("checked", true);
        }
        $("#cg").val(aa[i].nBuyAmount + aa[i].cBuyUnit_Check);
        $("#sl").val(aa[i].nBuyAmount);
        $("#tc").val(aa[i].nSpecialAmount);
        $("#ycdh").val(aa[i].cACTION_CARD);
        $("#jg").val(aa[i].cResultNote);
        $("#hiid").val(aa[i].iid);
        $("#bzblsl").val(aa[i].nBadAmount);
        $("#blv").val(aa[i].nBadRate);
        $("#xzbz").val(aa[i].cResultNote);

    }

    //input 监听改变合格率
    $("#bzblsl").keyup(function () {
        var a = parseFloat($("#bzcjsl").val());
        var b = parseFloat($("#bzblsl").val());
        // alert(judge);
        if (b > a || b < 0) {
            alert("输入不合法");
            $("#bzblsl").val(0);
        } else {
            $("#blv").val(((b / a) * 100).toFixed(2));
        }
        if (100 - (b / a) * 100 < judge) {

        }
    });
    //input 监听改变特采
    $("#tc").keyup(function () {
        var a = parseFloat($("#sl").val());
        var b = parseFloat($("#tc").val());
        // alert(judge);
        if (b > a) {
            alert("特采数量不能大于计划");
            $("#tc").val(0);
        }
    });

    function tecai() {
        var a = 100 - $("#blv").val();
        // console.log(a+'>'+judge);
        var badAmount = $("#bzblsl").val();
        var samplingAmount = $("#bzcjsl").val();
        var badRate = $("#blv").val();
        var iid = $("#hiid").val();
        var nSpecialAmount = $("#tc").val();
        var cResultNote = $("#jg").val();
        var cACTION_CARD = $("#ycdh").val();
        var mainId = $("#zhijianId").val();
        var rolesid = $("#rolesid").val();
        //console.log(url);
        //if(a>judge){
        $.ajax({
            url: encodeURI(encodeURI("Update.list?iid=" + iid + "&badAmount=" + badAmount + "&iUnqualified=1&samplingAmount=" + samplingAmount + "&nSpecialAmount=" + nSpecialAmount + "&cResultNote=" + cResultNote + "&cACTION_CARD=" + cACTION_CARD + "&bQualified=0&mainId=" + mainId + "&journalMainId=" + journalMainId + "&rolesid=" + rolesid)),
            async: false,
            success: function (data) {
                alert('保存成功');
                $("#tecai").hide();
                baocuna();
            }
        })
        //
        //$('.cd-popup2').removeClass('is-visible2');
        window.location.reload();
        //}
    }

    //保存合格与不合格或者特采按钮
    function baocun() {

        var zhuangtai = $("input[name='reslut']:checked").val();
        if (zhuangtai == undefined) {
            alert('该检测不合格请选择特采或拒收');
        } else if (zhuangtai == 3) {
            $("#tecai").show();
        } else if (zhuangtai == 2) {
            var rolesid = $("#rolesid").val();
            var iid = $("#hiid").val();
            var mainId = $("#zhijianId").val();
            var badAmount = $("#bzblsl").val();
            var samplingAmount = $("#bzcjsl").val();
            var badRate = $("#blv").val();
            //质检情况说明
            var xzbz = $("#xzbz").val();
            $.ajax({
                url: encodeURI(encodeURI("Rejection.list?iid=" + iid + "&rolesid=" + rolesid + "&zhuangtai=" + zhuangtai + "&mainId=" + mainId + "&journalMainId=" + journalMainId + "&samplingAmount=" + samplingAmount + "&badAmount=" + badAmount + "&badRate=" + badRate + "&xzbz=" + xzbz)),
                async: false,
                success: function (data) {
                    if (data == 2) {
                        alert("退回成功");
                        baocuna();
                        window.history.back();
                    }
                }
            })
        } else {
            var iUnqualified = -1;
            var bQualified = 1;
            if (zhuangtai == 2) {
                iUnqualified = 0;
                bQualified = 0;
            }
            var a = 100 - $("#blv").val();
            //console.log(a+'>'+judge);
            var badAmount = $("#bzblsl").val();
            var samplingAmount = $("#bzcjsl").val();
            var badRate = $("#blv").val();
            var iid = $("#hiid").val();
            var mainId = $("#zhijianId").val();
            var rolesid = $("#rolesid").val();
            var xzbz = $("#xzbz").val();

            var reviewerid = $("#reviewer_id").val();
            var reviewername = $("#reviewer_id").find("option:selected").text();
            //alert(rolesid);
            if (a > judge) {
                $.ajax({
                    url: encodeURI(encodeURI("Update.list?iid=" + iid + "&badAmount=" + badAmount + "&iUnqualified=" + iUnqualified + "&samplingAmount=" + samplingAmount + "&bQualified=" + bQualified + "&nSpecialAmount=0&cResultNote=" + xzbz + "&cACTION_CARD=&journalMainId=" + journalMainId + "&mainId=" + mainId + "&rolesid=" + rolesid+ "&reviewername=" + reviewername)),
                    async: false,
                    success: function (data) {
                        $("#tecai").hide();
                    }
                })
                alert('保存成功');
                baocuna();
                window.location.reload();
            } else {
                alert("合格率为0不允许合格操作");
            }
        }
    }

    //格式化时间戳
    function getLocalTime(nS) {
        var tt = new Date(nS).format('yyyy-MM-dd');
        return tt;
    }

    function huitui() {
        window.history.go(-1);
    }
</script>
</body>
</html>
