<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>订单信息维护</title>
</head>
<body>
<div class="layui-collapse">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">订单信息-查询条件</h2>
    <div class="layui-colla-content layui-show">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 0px; padding: 5px">
        <legend>订单信息-查询</legend>
        <form class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="ordcode" placeholder="编号" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">用户名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" placeholder="用户名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"></label> 
                <span> <input type="button" class="layui-btn"
                    lay-submit lay-filter="pro_search" value="查询" /> <input type="reset"
                    class="layui-btn" value="重置" /> 
                </span>
            </div>
           
            <input type="hidden" name="pageIndex" value="1" />
            <input type="hidden" name="pageLimit" value="10" />
        </form>
    </fieldset>
    </div>
  </div>
</div>
	<div class="layui-form">
		<table class="layui-table">
			<colgroup>
				<col width="5%">
				<col width="15%">
				<col width="10%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
                <col width="25%">
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>编号</th>
					<th>用户</th>
					<th>地址</th>
					<th>状态</th>
					<th>时间</th>
                    <th>操作</th>
				</tr>
			</thead>
			<tbody id="addr_tbody"></tbody>
		</table>
		<div id="pageInfoAddr" style="text-align: right;padding-right: 30px"></div>
	</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
formSubmit('/orderController/getList.do', 'submit(pro_search)', 'json', function(data) {
    var curr = $("input[name='pageIndex']").val();
    var limit = $("input[name='pageLimit']").val();
    setPageInfo('pageInfoAddr',data.count,curr,limit,function(obj, first){
        $("input[name='pageIndex']").val(obj.curr);
        $("input[name='pageLimit']").val(obj.limit);
        if(!first){//首次不执行
               refresh();
        }
    })
    var html = "" ;
    $.each(data.list,function(i, dom) {
    	var id = dom.id;
    	console.log(dom);
        html+="<tr><td>"+(i+1+(curr-1)*limit)+"</td><td>"+dom.ordcode+"</td><td>"+dom.username+"</td>"
        	+"<td>"+dom.addr+"</td><td>"+dom.state+"</td><td>"+dom.time+"</td>"
            +"<td><input type='button' class='layui-btn' onclick='openUpdPro(\""+id+"\")' value='修改' />&nbsp;"
            +"<input type='button' class='layui-btn' onclick='delPro(\""+dom.ordcode+"\")' value='删除' />&nbsp;"
            +"<input type='button' class='layui-btn' onclick='thingsPro(\""+dom.ordcode+"\")' value='商品' />&nbsp;"
            +"</td></tr>";
    });
    $("#addr_tbody").html(html);
});
function refresh(){
    $("input[value='查询']").click();
}
refresh();
function thingsPro(ordercode){
	openLayer('/sys/page/order/things.jsp?ordercode='+ordercode,refresh)
}
function openUpdPro(id){
	openLayer('/sys/page/prodinfo/proinfoupd.jsp?id='+id,refresh)
}
function delPro(ordcode){
	openConfirm(function(index){
	ajax('/orderController/del.do', {ordcode:ordcode}, 'text', function(data){
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