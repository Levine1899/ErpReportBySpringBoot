  Date.prototype.format = function(format) {
          var date = {
              "M+": this.getMonth() + 1,
              "d+": this.getDate(),
              "h+": this.getHours(),
              "m+": this.getMinutes(),
              "s+": this.getSeconds(),
              "q+": Math.floor((this.getMonth() + 3) / 3),
              "S+": this.getMilliseconds()
          };
          if (/(y+)/i.test(format)) {
              format = format.replace(RegExp.$1, (this.getFullYear() + '').substr(4 - RegExp.$1.length));
          }
          for (var k in date) {
              if (new RegExp("(" + k + ")").test(format)) {
                  format = format.replace(RegExp.$1, RegExp.$1.length == 1
                          ? date[k] : ("00" + date[k]).substr(("" + date[k]).length));
              }
          }
          return format;
      }
  
  
  function getLocalTime(nS) {
  	  var mm = new Date(nS);
        var tt= mm.format('yyyy-MM-dd');
        return tt; 
    }
  
  function daPDF(i){
	  $('#myModal4').modal();
	  //console.log(billid);
	  $.ajax({
			url:"getPDF/getList.do?id="+billid+"&type="+i,
	   		dataType: "json",
	   		async: false,
	   		success:function(data){
	   			//console.log(data);
	   			$("#daModal").empty();
	   			if(data.length==0){
						$("#daModal").append('<span>暂未上传PDF文件</span>');
					}  			
	   				else{
	   					for(var i=0;i<data.length;i++){
	   						var flag = data[i].flag;
	   						//console.log(flag);
	   						if(flag==1){
	   							$("#daModal").append('<span>暂未配置PDF数据库连接</span>');
	   						}else{
	   							$("#daModal").append('<a onclick="MfsJSBridge.invoke(\'pdfFun\',\''+data[i].cfilename+'\',\'windowCallback\')">'+data[i].cfilename+'</a><br/><br/>');
	   							/*var type = data[i].cfileext;
	   							console.log(type);
	   							if(type=='.pdf'){
	   								//console.log('<a onclick="MfsJSBridge.invoke(\'pdfFun\',\''+data[i].cfilename+'\',\'windowCallback\')">'+data[i].cfilename+'</a><br/><br/>');
	   								
	   							}else{
	   								$("#daModal").append('<a onclick="opJPG('+data[i].ifileid+')">'+data[i].cfilename+'</a><br/><br/>');
	   							}*/
	   							
	   						}
	   						
	   				}
	   				
	   			}
	   			
	   		}		
		})
  	
  	
  }
  
  


var id;
function opJPG(i){
	$("#daModal").empty();
  	id =i;
  	$("#daModal").append('<a onclick="refresh()">返回</a><br><iframe src="getPDF/getDate.do?id='+i+'" width="100%" height="100%" style="position:" name="myFrameName"></iframe>');
  	iflags=1;
}
function aclick(i){
  	$("#daModal").empty();
  	id =i;
  	//window.open(web/viewer.html)
  	$("#daModal").append('<a onclick="refresh()">返回</a><br><iframe id="frame3d" src="web/viewer.html" width="100%" height="100%" style="height" name="myFrameName"></iframe>');
  	// document.getElementById('frame3d').style.height = 100%; 
  	iflags=1;
  	//console.log('MYJS-------'+dianji.test);
  }
  function refresh(){
	  $.ajax({
			url:"getPDF/getList.do?id="+billid+"&type=0",
	   		dataType: "json",
	   		async: false,
	   		success:function(data){
	   			//console.log(data);
	   			$("#daModal").empty();
	   			if(data.length==0){
						$("#daModal").append('<span>暂未上传PDF文件</span>');
					}  			
	   				else{
	   					for(var i=0;i<data.length;i++){
	   						$("#daModal").append('<a onclick="MfsJSBridge.invoke(\'pdfFun\',\''+data[i].cfilename+'\',\'windowCallback\')">'+data[i].cfilename+'</a><br/><br/>');
	   						/*var type = data[i].cfileext;
   							console.log(type);
   							if(type=='.pdf'){
   								
   								$("#daModal").append('<a onclick="aclick('+data[i].ifileid+')">'+data[i].cfilename+'</a><br/><br/>');
   								$("#daModal").append('<a onclick="MfsJSBridge.invoke("pdfFun",'+data[i].ifileid+',"windowCallback")">'+data[i].cfilename+'</a><br/><br/>')
   								
   							}else{
   								$("#daModal").append('<a onclick="opJPG('+data[i].ifileid+')">'+data[i].cfilename+'</a><br/><br/>');
   							}*/
	   				}
	   				
	   			}
	   			
	   		}		
		})}
 
 // var testobj ={id:1}
  
  var dianji;
  (function(){
  dianji = {
		  test:1,
		  getDEFAULT_URL:function (i){
        	  var DEFAULT_URL = "";//注意，删除的变量在这里重新定义 
        	  var PDFData = "";  
        	      	$.ajax({  
        	      	    type:"post",  
        	      	    async:false,  //
        	      	    mimeType: 'text/plain; charset=x-user-defined',  
        	      	    url:"../getPDF/getDate.do?id="+i,  
        	      	    success:function(data){  
        	      	       PDFData = data;  
        	      	    }  
        	      	});  
        	      	var rawLength = PDFData.length;  
        	      	//转换成pdf.js能直接解析的Uint8Array类型,见pdf.js-4068  
        	      	var array = new Uint8Array(new ArrayBuffer(rawLength));    
        	      	var i ;
        	      	for(i = 0; i < rawLength; i++) {  
        	      	  array[i] = PDFData.charCodeAt(i) & 0xff;  
        	      	}  
        	      	DEFAULT_URL = array; 
        	      	return DEFAULT_URL;
          }
  }
  })()
  
  
  
  
  