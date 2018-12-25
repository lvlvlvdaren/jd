<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>商品分类维护</title>
</head>
<body>
<div class="layui-collapse">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">商品分类信息-查询条件</h2>
    <div class="layui-colla-content layui-show">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 0px; padding: 5px">
        <legend>商品分类信息-查询</legend>
        <form class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="scode" placeholder="编号" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="sclassname" placeholder="名称" autocomplete="off" class="layui-input">
                </div>
            
            </div>
            <div class="layui-form-item">
               <label class="layui-form-label">上级编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="parentcode" placeholder="请输入上级编号" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">描述</label>
                <div class="layui-input-inline">
                    <input type="text" name="descr" placeholder="请输入描述" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"></label> 
                <span> <input type="button" class="layui-btn"
                    lay-submit lay-filter="addr_search" value="查询" /> <input type="reset"
                    class="layui-btn" value="重置" /> <input type="button" class="layui-btn" value="添加"
                    onclick="openAddProClass()" />
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
				
				<col width="15%">
				<col width="15%">
				<col width="25%">
                <col width="25%">
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>编号</th>
					<th>名称</th>
					<th>上级编号</th>
					<th>描述</th>
                   
                    <th>操作</th>
				</tr>
			</thead>
			<tbody id="addr_tbody"></tbody>
		</table>
		<div id="pageInfoAddr" style="text-align: right;padding-right: 30px"></div>
	</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
formSubmit('/proclassController/getList.do', 'submit(addr_search)', 'json', function(data) {
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
    	
        html+="<tr><td>"+(i+1+(curr-1)*limit)+"</td><td>"+dom.scode+"</td><td>"+dom.sclassname+"</td><td>"+dom.parentcode+"</td><td>"+dom.descr+"</td>"
            +"<td><input type='button' class='layui-btn' onclick='openUpdProClass(\""+id+"\")' value='修改' />&nbsp;"
            +"<input type='button' class='layui-btn' onclick='delAddr(\""+id+"\")' value='删除' />&nbsp;"
            +"</td></tr>";
    });
    $("#addr_tbody").html(html);
});
function refresh(){
    $("input[value='查询']").click();
}
refresh();
function openAddProClass(){
	openLayer('/sys/page/prod/proclassadd.jsp',refresh)
}
function openUpdProClass(id){
	openLayer('/sys/page/prod/proclassupd.jsp?id='+id,refresh)
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