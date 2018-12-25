<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>基础数据维护</title>
</head>
<body>
<div class="layui-collapse">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">基础数据-查询条件</h2>
    <div class="layui-colla-content layui-show">
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 0px; padding: 5px">
		<legend>基础数据-查询条件</legend>
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">编号</label>
				<div class="layui-input-inline">
					<input type="text" name="code" 
					placeholder="请输入编号" 
					autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label">名称</label>
				<div class="layui-input-inline">
					<input type="text" name="name" 
					placeholder="请输入名称" 
					autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label">上级编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="parentcode" 
                    placeholder="请输入上级编号" 
                    autocomplete="off" class="layui-input">
                </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label"></label>
			    <span> 
			    <input type="button" class="layui-btn"
                    lay-submit lay-filter="dict_search" 
                    value="查询" /> 
                <input type="reset" class="layui-btn" 
                    value="重置" /> 
                <input type="button" class="layui-btn" 
                    value="添加" onclick="openAddDict()" />
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
			<col width="10%"><col width="20%">
			<col width="20%"><col width="20%"><col>
		</colgroup>
		<thead>
			<tr>
				<th>序号</th><th>编号</th>
				<th>名称</th><th>上级编号</th><th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody_dict"></tbody>
	</table>
	<div id="pageInfoDict" style="text-align: right;padding-right: 30px"></div>
</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
formSubmit('/DictServlet', 'submit(dict_search)', 'json' 
		,function(data) {
    var curr = $("input[name='pageIndex']").val();
    var limit = $("input[name='pageLimit']").val();
    setPageInfo('pageInfoDict',data.count,curr,limit
    		,function(obj, first){
        $("input[name='pageIndex']").val(obj.curr);
        $("input[name='pageLimit']").val(obj.limit);
        if(!first){ refresh(); }//首次不执行
    })
    var html = "" ;
    $.each(data.list,function(i, dom) {
        var d={i:(i+1+(curr-1)*limit),name:dom.name,code:dom.code,parentcode:dom.parentcode};
        html += getlaytpl('#tradd',d);//laytpl($("#tradd").html()).render(d);
    });
    $("#tbody_dict").html(html);
});
refresh();
function refresh(){
    $("input[value='查询']").click();
}
// html+="<tr><td>"+(i+1+(curr-1)*limit)+"</td><td>"+dom.code+"</td><td>"+dom.name+"</td><td>"+dom.parentcode+"</td><td>"
//     +"<input type='button' class='layui-btn' onclick='openUpdDict(\""+dom.code+"\")' value='修改' />&nbsp;"
//     +"<input type='button' class='layui-btn' onclick='delDict(\""+dom.code+"\")' value='删除' />&nbsp;"
//     +"</td></tr>";
function openAddDict(){
	openLayer('/web/page/dict/dictadd.jsp',refresh)
}
function openUpdDict(code){
	openLayer('/web/page/dict/dictupd.jsp?code='+code,refresh)
}
function delDict(code){
	openConfirm(function(index){
		ajax('/DictServlet', {action:'del',code:code}, 'text',
		    function(data){
	        if (data == 1) {
	            layer.msg('删除成功');
	            $("input[name='pageIndex']").val(1);
	            refresh();
            } else {
                layer.msg('删除成功，该编号已被使用');
	        }
	    })
    })
}
</script>
<script id="tradd" type="text/html">
<tr>
<td>{{ d.i }}</td><td>{{ d.code }}</td>
<td>{{ d.name }}</td><td>{{ d.parentcode }}</td>
<td>
    <input type='button' value='修改' class='layui-btn' 
           onclick='openUpdDict("{{ d.code }}")'/>&nbsp;
    <a href="javascript:delDict('{{ d.code }}')" 
       class="layui-btn layui-btn-xs layui-btn-danger">
        <i class="layui-icon layui-icon-delete"></i></a>
</td>
</tr>
</script>
</body>
</html>