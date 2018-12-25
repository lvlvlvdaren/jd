<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>用户维护</title>
</head>
<body>
<div class="layui-collapse">
  <div class="layui-colla-item">
    <h2 class="layui-colla-title">用户信息-查询条件</h2>
    <div class="layui-colla-content layui-show">
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 0px; padding: 5px">
		<legend>用户信息-查询条件</legend>
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">账号</label>
				<div class="layui-input-inline">
					<input type="text" name="account" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="name" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label"></label> 
				<span> 
				<input type="button" class="layui-btn" lay-submit lay-filter="user_search" value="查询" /> 
				<input type="reset" class="layui-btn" value="重置" /> 
				<input type="button" class="layui-btn" value="添加" onclick="openUserAdd()" />
				</span>
			</div>
			<input type="hidden" name="action" value="list" />
			<input type="hidden" name="pageIndex" value="1" />
			<input type="hidden" name="pageLimit" value="10" />
		</form>
	</fieldset>
	</div></div></div>
	<div class="layui-form">
		<table class="layui-table">
			<colgroup>
				<col width="10%">
				<col width="20%">
				<col width="20%">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>账号</th>
					<th>姓名</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="user_tbody"></tbody>
		</table>
		<div id="pageInfoUser" style="text-align: right;padding-right: 30px"></div>
	</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
//laypage.render({
//elem : 'pageInfoUser',
//count : data.count,// 数据总数
//curr : curr,// 当前页
//limit : limit,// 每页显示的条数
//layout : [ 'count', 'prev', 'page', 'next', 'limit', 'skip' ],
//jump : function(obj, first){}
//});
//     	console.log(data)
formSubmit('/userController/list.do','submit(user_search)','json'
		,function(data) {
// 	console.log(data)
    var curr = $("input[name='pageIndex']").val();
    var limit = $("input[name='pageLimit']").val();
    
    setPageInfo('pageInfoUser',data.count,curr,limit
    		,function(obj, first){
//     	 console.log(obj.curr);
        $("input[name='pageIndex']").val(obj.curr);
        $("input[name='pageLimit']").val(obj.limit);
          if(!first){refresh();}//首次不执行 
    })
    var html = "" ;//加载表格中数据
    $.each(data.list,function(i, dom) {
//     	console.log(dom.name);
        var d={i:(i+1+(curr-1)*limit),name:dom.name,code:dom.account};
//      html += laytpl($("#tradd").html()).render(d);
        html += getlaytpl('#tradd',d);
    });
    $("#user_tbody").html(html);
});
//var code = dom.code;
//html+="<tr><td>"+(i+1+(curr-1)*limit)+"</td><td>"+code+"</td><td>"+dom.name+"</td><td>"//'openUserUpd("aaa")'
//+"<input type='button' class='layui-btn' onclick='openUserUpd(\""+code+"\")' value='修改' />&nbsp;"
//+"<input type='button' class='layui-btn' onclick='delUser(\""+code+"\")' value='删除' />&nbsp;"
//+"<input type='button' class='layui-btn' onclick='openUserPas(\""+code+"\")' value='重置密码' />&nbsp;"
//+"</td></tr>";
refresh();
function refresh(){
    $("input[value='查询']").click();
}
function openUserAdd(){
	openLayer('/sys/page/user/useradd.jsp',refresh)
}
function openUserUpd(code){
	openLayer('/sys/page/user/userupd.jsp?account='+code,refresh)
}
function openUserPas(code){
    openLayer('/sys/page/user/userpass.jsp?account='+code,refresh)
}
function delUser(code){
	openConfirm(function(index){
		ajax('/userController/delUser.do', {account:code}, 'text', function(data){
			var data = $.parseJSON(data).msg;
	        if (data == 1) {
	            layer.msg('删除成功');
	            $("input[name='pageIndex']").val(1);
	            refresh();
	        } else if (data == 2){
	            layer.msg('删除失败--账号已被使用');
	        } else if (data == 3){
                layer.msg('删除失败--当前账号不允许删除');
            }
	    })
	})
}
</script>
<script id="tradd" type="text/html">
<tr>
<td>{{ d.i }}</td>
<td>{{ d.code }}</td>
<td>{{ d.name }}</td>
<td>
    <input type='button' value='修改' class='layui-btn' 
           onclick='openUserUpd("{{ d.code }}")'/>&nbsp;
    <a href="javascript:delUser('{{ d.code }}')" 
       class="layui-btn layui-btn-xs layui-btn-danger">
        <i class="layui-icon layui-icon-delete"></i></a>&nbsp;
    <input type='button' class='layui-btn' value='重置密码' 
           onclick='openUserPas("{{ d.code }}")'/>
</td>
</tr>
</script>
</body>
</html>