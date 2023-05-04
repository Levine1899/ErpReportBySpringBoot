 var table ;
 //查看目录的子菜单
    function format ( d ) {
   	    var id = d.id;
   	    var lastString =[];
   	    $.ajax({
   	    	url:"digital/mcyd/getChildMenu"+"?id="+id,
   	    	async:false,
   	    	success: function(data){
   	    		var dd = eval(data);
				for(var i=0;i<dd.length;i++){
					lastString.push('<tr>');
				 	lastString.push('<td width="400">' + dd[i].cname+ '</td>');
	             	lastString.push('<td width="240">' + dd[i].curl+ '</td>');
	             	lastString.push('<td width="280">' + dd[i].cstyle+ '</td>');
	             	lastString.push('<td width="240">'+'<input type="button" onclick="showWindow('+dd[i].id+')" value="修改">'+'</td>');
	             	lastString.push('</tr>');
					}
   	    	}
   	    })
   	 return '<table  id="childTable" cellpadding="0" cellspacing="0" border="0" >'+
 	 lastString.join('')+
     '</table>';
   }
    //创建dataTable
    function aa(){
       var url = 'digital/mcyd/getMenu';
        table   = $('#example').DataTable( {
            "ajax": url,
            "columnDefs": [
                           { className: "my_class", "targets": [ 3 ]},
                           { className: "details-control", "targets": [ 0 ]}
                       ],
            "columns": [
                { "data": "cname" },
                { "data": "curl" },
                { "data": "chint" },
                { "data": "id"     	,
                    "render": function ( data, type, full ) {
                        return '<input type="button" onclick="aaa('+data+')" value="添加菜单">';
                    }
               	}
            ],
            "order": [[1, 'asc']]
        } );
        // Add event listener for opening and closing details
        $('#example tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = table.row( tr );
            if ( row.child.isShown() ) {
                // This row is already open - close it
                row.child.hide();
                tr.removeClass('shown');
            }
            else {
                // Open this row
                row.child( format(row.data()) ).show();
                tr.addClass('shown');
            }
        } );
    } 
    //修改子菜单
    function showWindow(fn){
    	$("#abc").attr("onclick","submitFrom();");
        $('#div1').show();
        $('#hiddenf').val(fn);
        //$('#mapBgLayer').show();
    }
  //关闭子菜单
    function closeWindow(){
        document.getElementById("div1").style.display="none";
    }
    //增加子菜单事件
    function aaa(fn){
    	$("#abc").attr("onclick","addChild();");
    	$('#div1').show();  
    	 $('#hiddenf').val(fn);
    }
    //关闭目录
    function closeDiv2(){
        document.getElementById("div2").style.display="none";
    }
   // function creatDiv(){
      //  $("#example_wrapper").prepend("<div id='div3'><input type='button' value='按钮'/></div>")
      //  alert('添加成功')
   // }
    //提交更改的子菜单
    function submitFrom(){
    	var id = $('#hiddenf').val();
    	var name = $('#cdmcf').val();
    	var url = $('#urlf').val();
    	var style = $('#ysf').val();
    	var index = $('#xhf').val();
    	url = 'digital/mcyd/updateChildMenu'+'?id='+id+'&name='+name+'&url='+url+'&style='+style+'&index='+index;
    	$.ajax({
    		type:"post",
    		url:url,
    		success:function(data){
 				if(data='success'){
    			closeWindow();
    			alert("修改成功");
    			window.location.reload();
 				}else{
 					alert("修改失败");
 				}
    		}
    	})
    }
    //增加目录
    function addMenu(fn){
    	var name = $('#mlf').val();
		if(name =='' || name == 'null'){
			alert("目录名称不能为空")
		}else{
    	$.ajax({
    		type:"post",
    		url:"digital/mcyd/addMenu?name="+name,
    		success:function(data){
    			if(data='success'){
    				closeDiv2();
        			alert("添加成功");
        			window.location.reload();
     				}else{
     					alert("添加失败");
     				}
    		}
    	})
		}
    }
    //增加子菜单
    function addChild(){
    	alert("增加子菜单");
    }
	