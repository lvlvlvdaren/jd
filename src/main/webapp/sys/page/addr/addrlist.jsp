<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>地址维护</title>
</head>
<body>
<div class="layui-collapse">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">地址信息-查询条件</h2>
    <div class="layui-colla-content layui-show">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 0px; padding: 5px">
        <legend>地址信息-查询</legend>
        <form class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="usercode" placeholder="请输入账号" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">收件人</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" placeholder="请输入收件人" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">电话</label>
                <div class="layui-input-inline">
                    <input type="text" name="tel" placeholder="请输入电话" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">省</label>
                <div class="layui-input-inline">
                    <input type="text" name="addr1" placeholder="请输入省" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">市</label>
                <div class="layui-input-inline">
                    <input type="text" name="addr2" placeholder="请输入市" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">区</label>
                <div class="layui-input-inline">
                    <input type="text" name="addr3" placeholder="请输入区" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="addr4" placeholder="请输入地址" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label"></label> 
                <span> <input type="button" class="layui-btn"
                    lay-submit lay-filter="addr_search" value="查询" /> <input type="reset"
                    class="layui-btn" value="重置" /> <input type="button" class="layui-btn" value="添加"
                    onclick="openAddAddr()" />
                </span>
            </div>
            <input type="hidden" name="action" value="list" />
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
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
                <col width="10%">
                <col width="10%">
				<col width="15%">
                <col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>账号</th>
					<th>收件人</th>
					<th>电话</th>
					<th>省</th>
                    <th>市</th>
                    <th>区</th>
                    <th>地址</th>
                    <th>操作</th>
				</tr>
			</thead>
			<tbody id="addr_tbody"></tbody>
		</table>
		<div id="pageInfoAddr" style="text-align: right;padding-right: 30px"></div>
	</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
formSubmit('/AddrServlet', 'submit(addr_search)', 'json', function(data) {
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
        html+="<tr><td>"+(i+1+(curr-1)*limit)+"</td><td>"+dom.username+"</td><td>"+dom.name+"</td><td>"+dom.tel+"</td><td>"+dom.addr1name+"</td><td>"+dom.addr2name+"</td><td>"+dom.addr3name+"</td><td>"+dom.addr4+"</td><td>"
            +"<input type='button' class='layui-btn' onclick='openUpdAddr(\""+id+"\")' value='修改' />&nbsp;"
            +"<input type='button' class='layui-btn' onclick='delAddr(\""+id+"\")' value='删除' />&nbsp;"
            +"</td></tr>";
    });
    $("#addr_tbody").html(html);
});
function refresh(){
    $("input[value='查询']").click();
}
refresh();
function openAddAddr(){
	openLayer('/web/page/addr/addradd.jsp',refresh)
}
function openUpdAddr(id){
	openLayer('/web/page/addr/addrupd.jsp?id='+id,refresh)
}
function delAddr(id){
	openConfirm(function(index){
	ajax('/AddrServlet', {action:'del',id:id}, 'text', function(data){
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