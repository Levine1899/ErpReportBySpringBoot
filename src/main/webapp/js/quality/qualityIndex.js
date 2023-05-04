/**
 * 获取当前要显示的机台 */
function getWorkshops(dataList, outPut) {
    //第一屏
    if ("0" == outPut) {
        var machinesNum = dataList.length;
        if (machinesNum >= 20) {var newNum = 20;} else {var newNum = dataList.length;}
        for (var n = 0; n < newNum; n++) {
            if( dataList[n].iJobStatus == "0" && dataList[n].Result_1 == ""){
                var mydate = new Date(dataList[n].dFirstTime)
                new Date(mydate.setMinutes(mydate.getMinutes() +  parseInt(dataList[n].iQCPatrolInterval)));
                dataList[n].Time_1 = (mydate.getHours()+':'+mydate.getMinutes());

                var mydate1 = new Date(dataList[n].dFirstTime)
                new Date(mydate1.setMinutes(mydate1.getMinutes() + (2 * parseInt(dataList[n].iQCPatrolInterval))));
                dataList[n].Time_2 = (mydate1.getHours()+':'+mydate1.getMinutes());

                var mydate2 = new Date(dataList[n].dFirstTime)
                new Date(mydate2.setMinutes(mydate2.getMinutes() + (3 * parseInt(dataList[n].iQCPatrolInterval))));
                dataList[n].Time_N = (mydate2.getHours()+':'+mydate2.getMinutes());

            }
            $("#uid").append("<li class='machine'>" +
                "<h3 class='MachineName'>" + dataList[n].cJzmc + "</h3>" +
                "<p class=bianqian> <span id='s" + n + "' class='shou'>" + "首" + "</span>" +
                "<span id='x1" + n + "' class='time1'>" + dataList[n].Time_1 +
                "</span><span id='x2" + n + "' class='time2'>" + dataList[n].Time_2 +
                "</span><span id='x3" + n + "'class='time3'>" + dataList[n].Time_N + "</span></p>" +
                "<h4 class='ProductName'>" + dataList[n].cProductName + "</h4>" +
                "<ol id='olid" + n + "' class='circle'></ol></li>"
            );
            if (dataList[n].iJobStatus == "-1") {
                //未首检
                document.getElementById("s" + n).style.background = "#999";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#999";
                document.getElementById("x3" + n).style.background = "#999";
            } else if (dataList[n].iJobStatus == "0") {
                   //首检合格+巡检+巡检+巡检
                    document.getElementById("s" + n).style.background = "#13bc1f";
                   //巡检1
                    if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                        document.getElementById("x1" + n).style.background = "#999";
                    }else if(dataList[n].Result_1 == "0"){
                        document.getElementById("x1" + n).style.background = "#13bc1f";
                    }else if(dataList[n].Result_1 == "1"){
                        document.getElementById("x1" + n).style.background = "#ea5420";
                    }else if(dataList[n].Result_1 == "2"){
                        document.getElementById("x1" + n).style.background = "#e6c302";
                    }
                    //巡检2
                    if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                        document.getElementById("x2" + n).style.background = "#999";
                    }else if(dataList[n].Result_2 == "0"){
                        document.getElementById("x2" + n).style.background = "#13bc1f";
                    }else if(dataList[n].Result_2 == "1"){
                        document.getElementById("x2" + n).style.background = "#ea5420";
                    }else if(dataList[n].Result_2 == "2"){
                        document.getElementById("x2" + n).style.background = "#e6c302";
                    }
                   //巡检3
                    if(dataList[n].Result_N == "-1" || dataList[n].Result_N == ""){
                        document.getElementById("x3" + n).style.background = "#999";
                    }else if(dataList[n].Result_N == "0"){
                        document.getElementById("x3" + n).style.background = "#13bc1f";
                    }else if(dataList[n].Result_N == "1"){
                        document.getElementById("x3" + n).style.background = "#ea5420";
                    }else if(dataList[n].Result_N == "2"){
                        document.getElementById("x3" + n).style.background = "#e6c302";
                    }

            } else if(dataList[n].iJobStatus == "1") {
                document.getElementById("s" + n).style.background = "#ea5420";
                //巡检1
                if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                    document.getElementById("x1" + n).style.background = "#999";
                }else if(dataList[n].Result_1 == "0"){
                    document.getElementById("x1" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_1 == "1"){
                    document.getElementById("x1" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_1 == "2"){
                    document.getElementById("x1" + n).style.background = "#e6c302";
                }
                //巡检2
                if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                    document.getElementById("x2" + n).style.background = "#999";
                }else if(dataList[n].Result_2 == "0"){
                    document.getElementById("x2" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_2 == "1"){
                    document.getElementById("x2" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_2 == "2"){
                    document.getElementById("x2" + n).style.background = "#e6c302";
                }
                //巡检3
                if(dataList[n].Result_N == "-1" || dataList[n].Result_N == ""){
                    document.getElementById("x3" + n).style.background = "#999";
                }else if(dataList[n].Result_N == "0"){
                    document.getElementById("x3" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_N == "1"){
                    document.getElementById("x3" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_N == "2"){
                    document.getElementById("x3" + n).style.background = "#e6c302";
                }
            }else{
                document.getElementById("s" + n).style.background = "#e6c302";
                //巡检1
                if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                    document.getElementById("x1" + n).style.background = "#999";
                }else if(dataList[n].Result_1 == "0"){
                    document.getElementById("x1" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_1 == "1"){
                    document.getElementById("x1" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_1 == "2"){
                    document.getElementById("x1" + n).style.background = "#e6c302";
                }
                //巡检2
                if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                    document.getElementById("x2" + n).style.background = "#999";
                }else if(dataList[n].Result_2 == "0"){
                    document.getElementById("x2" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_2 == "1"){
                    document.getElementById("x2" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_2 == "2"){
                    document.getElementById("x2" + n).style.background = "#e6c302";
                }
                //巡检3
                if(dataList[n].Result_N == "-1" || dataList[n].Result_N== ""){
                    document.getElementById("x3" + n).style.background = "#999";
                }else if(dataList[n].Result_N == "0"){
                    document.getElementById("x3" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_N == "1"){
                    document.getElementById("x3" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_N == "2"){
                    document.getElementById("x3" + n).style.background = "#e6c302";
                }
            }

            var XjNum = dataList[n].xjmapson.length;
            if (XjNum >= 10) { XjNum = 10;} else { XjNum = dataList[n].xjmapson.length;}
             if (XjNum<=0){
                 $("#olid" + n).append(
                     " <li style='background-color: #999;' ></li>"
                 );
             }else{

                 for (var u = 0; u < XjNum; u++) {
                     $("#olid" + n).append(
                         " <li id='lid" + n + "" + u + "'></li>"
                     );
                     if (dataList[n].xjmapson[u].iJobStatus == "0") {
                         document.getElementById("lid" + n + u).style.background = "#13bc1f";
                     } else if (dataList[n].xjmapson[u].iJobStatus == "1") {
                         document.getElementById("lid" + n + u).style.background = "#ea5420";
                     } else {
                         document.getElementById("lid" + n + u).style.background = "#e6c302";
                     }

                 }

             }


        }
    } else {
        //第n屏
        if (dataList.length > 20) {
            $('#uid').html("");
        }
        var machinesNum = dataList.length;
        var newNum = machinesNum - (outPut * 4);
        var fs = machinesNum - (outPut * 4);
        if (newNum >= 20) {
            var newNum = (outPut / 5) * 20 + 20;
        } else {
            var newNum = dataList.length;
        }
        for (var n = (outPut * 4); n < newNum; n++) {
            if( dataList[n].iJobStatus == "0" && dataList[n].Result_1 == ""){
                var mydate = new Date(dataList[n].dFirstTime)
                new Date(mydate.setMinutes(mydate.getMinutes() +  parseInt(dataList[n].iQCPatrolInterval)));
                dataList[n].Time_1 = (mydate.getHours()+':'+mydate.getMinutes());

                var mydate1 = new Date(dataList[n].dFirstTime)
                new Date(mydate1.setMinutes(mydate1.getMinutes() + (2 * parseInt(dataList[n].iQCPatrolInterval))));
                dataList[n].Time_2 = (mydate1.getHours()+':'+mydate1.getMinutes());

                var mydate2 = new Date(dataList[n].dFirstTime)
                new Date(mydate2.setMinutes(mydate2.getMinutes() + (3 * parseInt(dataList[n].iQCPatrolInterval))));
                dataList[n].Time_N = (mydate2.getHours()+':'+mydate2.getMinutes());

            }
            $("#uid").append("<li class='machine'>" +
                "<h3 class='MachineName'>" + dataList[n].cJzmc + "</h3>" +
                "<p class=bianqian><span id='s" + n + "' class='shou'>" + "首" + "</span>" +
                "<span id='x1" + n + "' class='time1'>" + dataList[n].Time_1 +
                "</span><span id='x2" + n + "' class='time2'>" + dataList[n].Time_2 +
                "</span><span id='x3" + n + "'class='time3'>" + dataList[n].Time_N + "</span></p>" +
                "<h4 class='ProductName'>" + dataList[n].cProductName + "</h4>" +
                "<ol id='olid" + n + "' class='circle'></ol></li>"
            );
            if (dataList[n].iJobStatus == "-1") {
                //未首检
                document.getElementById("s" + n).style.background = "#999";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#999";
                document.getElementById("x3" + n).style.background = "#999";
            } else if (dataList[n].iJobStatus == "0") {
                //首检合格+巡检+巡检+巡检
                document.getElementById("s" + n).style.background = "#13bc1f";
                //巡检1
                if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                    document.getElementById("x1" + n).style.background = "#999";
                }else if(dataList[n].Result_1 == "0"){
                    document.getElementById("x1" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_1 == "1"){
                    document.getElementById("x1" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_1 == "2"){
                    document.getElementById("x1" + n).style.background = "#e6c302";
                }
                //巡检2
                if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                    document.getElementById("x2" + n).style.background = "#999";
                }else if(dataList[n].Result_2 == "0"){
                    document.getElementById("x2" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_2 == "1"){
                    document.getElementById("x2" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_2 == "2"){
                    document.getElementById("x2" + n).style.background = "#e6c302";
                }
                //巡检3
                if(dataList[n].Result_N == "-1" || dataList[n].Result_N == ""){
                    document.getElementById("x3" + n).style.background = "#999";
                }else if(dataList[n].Result_N == "0"){
                    document.getElementById("x3" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_N == "1"){
                    document.getElementById("x3" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_N == "2"){
                    document.getElementById("x3" + n).style.background = "#e6c302";
                }

            } else if(dataList[n].iJobStatus == "1") {
                document.getElementById("s" + n).style.background = "#ea5420";
                //巡检1
                if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                    document.getElementById("x1" + n).style.background = "#999";
                }else if(dataList[n].Result_1 == "0"){
                    document.getElementById("x1" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_1 == "1"){
                    document.getElementById("x1" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_1 == "2"){
                    document.getElementById("x1" + n).style.background = "#e6c302";
                }
                //巡检2
                if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                    document.getElementById("x2" + n).style.background = "#999";
                }else if(dataList[n].Result_2 == "0"){
                    document.getElementById("x2" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_2 == "1"){
                    document.getElementById("x2" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_2 == "2"){
                    document.getElementById("x2" + n).style.background = "#e6c302";
                }
                //巡检3
                if(dataList[n].Result_N == "-1" || dataList[n].Result_N == ""){
                    document.getElementById("x3" + n).style.background = "#999";
                }else if(dataList[n].Result_N == "0"){
                    document.getElementById("x3" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_N == "1"){
                    document.getElementById("x3" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_N == "2"){
                    document.getElementById("x3" + n).style.background = "#e6c302";
                }
            }else{
                document.getElementById("s" + n).style.background = "#e6c302";
                //巡检1
                if(dataList[n].Result_1 == "-1" || dataList[n].Result_1 == ""){
                    document.getElementById("x1" + n).style.background = "#999";
                }else if(dataList[n].Result_1 == "0"){
                    document.getElementById("x1" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_1 == "1"){
                    document.getElementById("x1" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_1 == "2"){
                    document.getElementById("x1" + n).style.background = "#e6c302";
                }
                //巡检2
                if(dataList[n].Result_2 == "-1" || dataList[n].Result_2 == ""){
                    document.getElementById("x2" + n).style.background = "#999";
                }else if(dataList[n].Result_2 == "0"){
                    document.getElementById("x2" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_2 == "1"){
                    document.getElementById("x2" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_2 == "2"){
                    document.getElementById("x2" + n).style.background = "#e6c302";
                }
                //巡检3
                if(dataList[n].Result_N == "-1" || dataList[n].Result_N == ""){
                    document.getElementById("x3" + n).style.background = "#999";
                }else if(dataList[n].Result_N == "0"){
                    document.getElementById("x3" + n).style.background = "#13bc1f";
                }else if(dataList[n].Result_N == "1"){
                    document.getElementById("x3" + n).style.background = "#ea5420";
                }else if(dataList[n].Result_N == "2"){
                    document.getElementById("x3" + n).style.background = "#e6c302";
                }
            }
            var XjNum = dataList[n].xjmapson.length;
            if (XjNum >= 10) { XjNum = 10;} else { XjNum = dataList[n].xjmapson.length;}

            if (XjNum<=0){
                $("#olid" + n).append(
                    " <li style='background-color: #999;' ></li>"
                );
            }else{
                for (var u = 0; u < XjNum; u++) {
                    $("#olid" + n).append(
                        " <li id='lid" + n + "" + u + "'></li>"
                    );
                    if (dataList[n].xjmapson[u].iJobStatus == "0") {
                        document.getElementById("lid" + n + u).style.background = "#13bc1f";
                    } else if (dataList[n].xjmapson[u].iJobStatus == "1") {
                        document.getElementById("lid" + n + u).style.background = "#ea5420";
                    } else {
                        document.getElementById("lid" + n + u).style.background = "#e6c302";
                    }

                }

            }


        }

    }

}


function initData() {

    var num = 0;
    var outPut = 0;
    var screenTime = 5;
    var outTime;

    $.ajax({
        url: basePath + '/quality.list',
        dataType: "json",
        async: false,
        success: function (data) {
            result = data;
        }
    });


    //控制输出屏数
    if (result.length > 20) {
        outTime = (parseInt(result.length / 20)) * 5;
    } else {
        outTime = 5;
    }

    getWorkshops(result, outPut);
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
            getWorkshops(result, outPut);
            num = 0;
            if (outPut < outTime) {
                setTimeout(getScreen, 1000)
            }
        }
    }

}

