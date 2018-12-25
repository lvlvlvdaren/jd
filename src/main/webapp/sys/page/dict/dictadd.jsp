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
    <legend>基础数据--添加信息</legend>

<form class="layui-form" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">上级</label>
        <div class="layui-input-inline">
            <select name="parentcode" lay-verify='' lay-search>
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
            lay-submit lay-filter="add" value="确定" />
            <input type="button" class="layui-btn" 
            onclick="closeThis()" value="取消" />
        </div>
    </div>
    <input type="hidden" name="action" value="add" />
</form>
</fieldset>
<script type="text/javascript">
ajax('/DictServlet', {action:'listall'}, 'json', function(data){
    var html = "<option value=''>无上级</option>" ;
    $.each(data,function(i, dom) {
        html += "<option value='"+dom.code+"'>"+dom.name+"</option>";
//      html += getlaytpl('#option',{name:dom.name,code:dom.code});//laytpl($("#tradd").html()).render(d);
    });
    $("select[name='parentcode']").html(html);
    form.render('select'); //渲染刷新select选择框
})
formSubmit('/DictServlet', 'submit(add)', 'text', function(data) {
	if (data == 0) {
        layer.msg('添加成功');
        closeThis(3000);
    } else if (data == 1) {
        layer.msg('编码已存在');
    } else {
        layer.msg('添加失败');
    }
});
</script>
<script id="option" type="text/html">
<option value='{{d.code}}'>{{d.name}}</option>
</script>
</body>
</html>