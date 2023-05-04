
// 自定义时间格式 ：format
// "yyyy-MM-dd HH:mm:ss";"yyyy-MM-dd-HH-mm-ss"
// "yyyy-MM-ddTHH:mm:ss" ....
function formatDate (time, format) {
    if (!time) {
        return ''
    }

    if (typeof time === 'string') {
        time = time.replace('T', ' ').replace(new RegExp('-', 'gm'), '/')
    }

    var t = new Date(time)

    if (t.getTime() === 0) {
        t = new Date()
    }

    var tf = function (i) {
        return (i < 10 ? '0' : '') + i
    }
    if (!format) {
        format = 'yyyy-MM-dd HH:mm:ss'
    }

    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function (type) {
        switch (type) {
            case 'yyyy':
                return tf(t.getFullYear())
            case 'MM':
                return tf(t.getMonth() + 1)
            case 'mm':
                return tf(t.getMinutes())
            case 'dd':
                return tf(t.getDate())
            case 'HH':
                return tf(t.getHours())
            case 'ss':
                return tf(t.getSeconds())
        }
    })
}

function jumpTo(index) {
    parent.setDelay();
    var url = parent.rolllist[index];
    parent.rollIndex = index;
    parent.initDate(0,url);
}

function swiperTo(index) {
    parent.setDelay();
    parent.rollIndex = index;
    parent.swiper.slideTo(index);
}

//获取url上传的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
    var r = window.location.search.substr(1).match(reg);
    if (r!=null) return (r[2]); return null;
}

function loadTime() {

    var curDate = parent.curDate;

    if(undefined == curDate || null == curDate){
      setTimeout(loadTime,3000);
      return
    }

    //时间
    var hours = curDate.get('hour');//小时
    var minute = curDate.get('minute');//分
    $("#div-HMS").html(format00(hours) + ":" + format00(minute));

    //日期
    var year = curDate.get('year');//当前年份
    var month = curDate.get('month');//当前月份
    var date_ = curDate.get('date');//天
    $("#div-YMD").html(year + "-" + format00(month + 1) + "-" + format00(date_));

    //星期
    var day = curDate.day();//查询当前星期几
    var week = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
    $("#div-Week").html(week[day]);

    // $.get(kanbanCfg.url.getdate, function (res) {
    //     if (res.success) {
    //         //var date = new Date(res.result.records[0].time);
    //         var curDate = new moment(res.result);
    //         //时间
    //         var hours = curDate.get('hour');//小时
    //         var minute = curDate.get('minute');//分
    //         $("#div-HMS").html(format00(hours) + ":" + format00(minute));
    //
    //         //日期
    //         var year = curDate.get('year');//当前年份
    //         var month = curDate.get('month');//当前月份
    //         var date_ = curDate.get('date');//天
    //         $("#div-YMD").html(year + "-" + format00(month + 1) + "-" + format00(date_));
    //
    //         //星期
    //         var day = curDate.day();//查询当前星期几
    //         var week = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
    //         $("#div-Week").html(week[day]);
    //     }
    // });
}

//补位 当某个字段不是两位数时补0
function format00(str) {
    var num;
    str >= 10 ? num = str : num = "0" + str;
    return num;
}
