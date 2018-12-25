<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>基础数据维护</title>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 20px;padding:15px;">
    <legend>基础数据--修改信息</legend>

<form class="layui-form" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">上级</label>
        <div class="layui-input-inline">
            <select name="parentcode" lay-verify="" lay-search>
            </select>     
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">编码</label>
        <div class="layui-input-inline">
            <input type="text" name="code" 
            lay-verify="required" placeholder="请输入账号" 
            autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">名称</label>
        <div class="layui-input-inline">
            <input type="text" name="name" 
            lay-verify="required" placeholder="请输入名称" 
            autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"></label>
        <div class="layui-input-inline">
            <input type="button" class="layui-btn" 
            lay-submit lay-filter="upd" value="确定" />
            <input type="button" class="layui-btn" 
            onclick="closeThis()" value="取消" />
        </div>
    </div>
    <input type="hidden" name="action" value="upd" />
</form>
</fieldset>
<script type="text/javascript">
ajax('/DictServlet', {action:'listall'}, 'json'
		, function(data){
    var html = "<option value=''>无上级</option>" ;
    $.each(data,function(i, dom) {
        html += "<option value='"+dom.code+"'>"+dom.name+"</option>" ;
    });
    $("select[name='parentcode']").html(html);
    form.render('select'); //刷新select选择框渲染
    init();
})
function init(){
	var code = '<%=request.getParameter("code")%>';
	ajax('/DictServlet', {action:'search',code:code}, 'json'
		, function(data){
		$("input[name='code']").val(data.code);
        $("input[name='name']").val(data.name);
        $("option[value='"+data.parentcode+"']").prop('selected','selected');
        form.render('select');
        $("input[name='code']").prop("readonly","readonly");
    })
}
formSubmit('/DictServlet', 'submit(upd)', 'text', function(data) {
	if (data == 1) {
        layer.msg('修改成功');
        closeThis(3000);
    } else {
        layer.msg('修改失败');
    }
});
</script>
</body>
</html>