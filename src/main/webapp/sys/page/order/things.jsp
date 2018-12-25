<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>订单商品</title>
</head>
<body>
<div class="layui-collapse">
</div>
	<div class="layui-form">
		<table class="layui-table">
			<colgroup>
				<col width="20%">
				<col width="25%">
				<col width="15%">
				<col width="15%">
                <col width="25%">
			</colgroup>
			<thead>
				<tr>
					<th>订单</th>
					<th>商品</th>
					<th>数量</th>
					<th>金额</th>
                    <th>操作</th>
				</tr>
			</thead>
			<tbody id="addr_tbody"></tbody>
		</table>
	</div>

<script type="text/javascript">
init();
function init() {
var ordercode='<%=request.getParameter("ordercode")%>';
console.log(ordercode);
	$.ajax({
		url:con.app+'/tingsController/getThings.do',
		data:{ordercode:ordercode},
		dataType:'json',
		type:'post',
		success : function(data){
			  var html = "" ;
			    $.each(data,function(i, dom) {
				console.log(dom);
			    	var id = dom.id;
			        html+="<tr><td>"+dom.ordercode+"</td><td>"+dom.proname+"</td>"
			        	+"<td>"+dom.procount+"</td><td>"+dom.prices+"</td><td>"
			            +"<input type='button' class='layui-btn' onclick='delPro(\""+id+"\")' value='删除' />&nbsp;"
			            +"</td></tr>";
			    });
			    $("#addr_tbody").html(html);
		}
	})
   
};


function delPro(id){
	openConfirm(function(index){
	ajax('/thingsController/del.do', {id:id}, 'text', function(data){
 		var data = $.parseJSON(data).msg;
		if (data == 1) {
            layer.msg('删除成功');
            refresh();
        } else {
            layer.msg('删除失败');
        }
	})
	});
}
</script>
</body>
</html>