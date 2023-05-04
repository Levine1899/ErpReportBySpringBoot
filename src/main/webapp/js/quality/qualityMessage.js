/**
 * 获取当前要显示的机台 */
function getWorkshops(dataList, outPut) {
    //第一屏
    if ("0" == outPut) {
        var machinesNum = dataList.length;
        if (machinesNum >= 20) {var newNum = 20;} else {var newNum = dataList.length;}
        for (var n = 0; n < newNum; n++) {
            $("#uid").append("<li class='machine'>" +
                "<h3  id='Mname" + n + "' class='MachineName'>" + dataList[n].cJzmc + "</h3>" +
                "<p class=bianqian><span id='x1" + n + "' class='time1'>" +
                "</span><span id='x2" + n + "' class='time2'>" +
                "</span></p><h4 id='Pname" + n + "' class='ProductName'>" + dataList[n].cJobName + "</h4>" +
                "<h6 id='Cname" + n + "' class='circle'>" + dataList[n].cPaperName +"</h6></li>"

            );
            if (dataList[n].numb == "0") {
                document.getElementById("Mname" + n).style.background = "#ea5420";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#999";
                document.getElementById("Pname" + n).style.background = "#ea5420";
            }else if(dataList[n].numb == "1"){
                document.getElementById("Mname" + n).style.background = "#e6c302";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#e6c302";
                document.getElementById("Pname" + n).style.background = "#e6c302";
            }else if(dataList[n].numb == "2"){
                document.getElementById("Mname" + n).style.background = "#13bc1f";
                document.getElementById("x1" + n).style.background = "#13bc1f";
                document.getElementById("x2" + n).style.background = "#13bc1f";
                document.getElementById("Pname" + n).style.background = "#13bc1f";
            }else{
                document.getElementById("Mname" + n).style.background = "#13bc1f";
                document.getElementById("x1" + n).style.background = "#13bc1f";
                document.getElementById("x2" + n).style.background = "#13bc1f";
                document.getElementById("Pname" + n).style.background = "#13bc1f";
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

            $("#uid").append("<li class='machine'>" +
                "<h3  id='Mname" + n + "' class='MachineName'>" + dataList[n].cJzmc + "</h3>" +
                "<p class=bianqian><span id='x1" + n + "' class='time1'>" +
                "</span><span id='x2" + n + "' class='time2'>" +
                "</span></p><h4 id='Pname" + n + "' class='ProductName'>" + dataList[n].cJobName + "</h4>" +
                "<h6 id='Cname" + n + "' class='circle'>" + dataList[n].cPaperName +"</h6></li>"
            );

            if (dataList[n].numb == "0") {
                document.getElementById("Mname" + n).style.background = "#ea5420";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#999";
                document.getElementById("Pname" + n).style.background = "#ea5420";
                document.getElementById("Cname" + n).style.background = "#1A3E69";
            }else if(dataList[n].numb == "1"){
                document.getElementById("Mname" + n).style.background = "#e6c302";
                document.getElementById("x1" + n).style.background = "#999";
                document.getElementById("x2" + n).style.background = "#e6c302";
                document.getElementById("Pname" + n).style.background = "#e6c302";
                document.getElementById("Cname" + n).style.background = "#1A3E69";
            }else if(dataList[n].numb == "2"){
                document.getElementById("Mname" + n).style.background = "#13bc1f";
                document.getElementById("x1" + n).style.background = "#13bc1f";
                document.getElementById("x2" + n).style.background = "#13bc1f";
                document.getElementById("Pname" + n).style.background = "#13bc1f";
                document.getElementById("Cname" + n).style.background = "#1A3E69";
            }else{
                document.getElementById("Mname" + n).style.background = "#13bc1f";
                document.getElementById("x1" + n).style.background = "#13bc1f";
                document.getElementById("x2" + n).style.background = "#13bc1f";
                document.getElementById("Pname" + n).style.background = "#13bc1f";
                document.getElementById("Cname" + n).style.background = "#1A3E69";
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
        url: basePath + '/qualityMessage.list',
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

