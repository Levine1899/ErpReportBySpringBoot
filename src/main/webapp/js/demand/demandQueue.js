function getWorkshops(dataList, outPut) {
    //第一屏
    if ("0" == outPut) {
        var machinesNum = dataList.length;
        if (machinesNum >= 20) {var newNum = 20;} else {var newNum = dataList.length;}

        $("#tableId  tr:not(:first)").remove();

        for (var n = 0; n < newNum; n++) {

            $("#tableId").append('<tr>'+
                '<td class="th1">'+dataList[n].iNO+'</td>'+
                '<td class="th2">'+dataList[n].cJzmc+'</td>'+
                // '<td class="th3">'+dataList[n].cJobCode+'</td>'+
                '<td class="th3">'+dataList[n].cJobName+'</td>'+
                '<td class="th3">'+dataList[n].nTotalAmount+'</td>'+
                '<td class="th3">'+dataList[n].nReqAmount+'</td>'+
                '<td class="th3">'+dataList[n].iReqPallet+'</td>'+
                '<td class="th3">'+dataList[n].cPaperName+'</td>'+
                '<td class="th3">'+dataList[n].dPlanStart+'</td></tr>'
        );
      }
    } else {
        //第n屏

        var machinesNum = dataList.length;
        var newNum = machinesNum - (outPut * 4);

        if (newNum >= 20) {
            var newNum = (outPut / 5) * 20 + 20;
        } else {
            var newNum = dataList.length;
        }
        $("#tableId  tr:not(:first)").remove();

        for (var n = (outPut * 4); n < newNum; n++) {
            $("#tableId").append('<tr>'+
                '<td class="th1">'+dataList[n].iNO+'</td>'+
                '<td class="th2">'+dataList[n].cJzmc+'</td>'+
                // '<td class="th3">'+dataList[n].cJobCode+'</td>'+
                '<td class="th3">'+dataList[n].cJobName+'</td>'+
                '<td class="th3">'+dataList[n].nTotalAmount+'</td>'+
                '<td class="th3">'+dataList[n].nReqAmount+'</td>'+
                '<td class="th3">'+dataList[n].iReqPallet+'</td>'+
                '<td class="th3">'+dataList[n].cPaperName+'</td>'+
                '<td class="th3">'+dataList[n].dPlanStart+'</td></tr>'
            );

        }

    }

}



function initData() {
    var num = 0;
    var outPut = 0;
    var screenTime = 5;
    var outTime;
    //数据来源
    var tableResult;
    //表格数据源
    $.ajax({
        url: basePath + '/demandQueue.list',
        dataType: "json",
        async: false,
        success: function (data) {
            tableResult = data;
        }
    });

    //控制输出屏数
    if (tableResult.length > 20) {
        outTime = (parseInt(tableResult.length / 20)) * 5;
    } else {
        outTime = 5;
    }

    getWorkshops(tableResult, outPut);
    setTimeout(time, 1000);
    setTimeout(getScreen, 1000);

    function time() {
        outPut++;
        if (outPut < outTime) {
            setTimeout(time, 1000)
        }
    }

    function getScreen() {
        num++;
        if (num < screenTime) {
            setTimeout(getScreen, 1000)
        } else {
            getWorkshops(tableResult, outPut);
            num = 0;
            if (outPut < outTime) {
                setTimeout(getScreen, 1000)
            }
        }
    }

}





