<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>收货地址维护</title>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 10px;padding:15px;">
    <legend>收货地址--添加信息</legend>

<form class="layui-form" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">账号</label>
        <div class="layui-input-inline">
            <select name="usercode" lay-verify="required" lay-search></select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">收件人</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="required" placeholder="请输入收件人" autocomplete="off"
                class="layui-input">
        </div>
        <label class="layui-form-label">电话</label>
        <div class="layui-input-inline">
            <input type="text" name="tel" lay-verify="required" placeholder="请输入电话" autocomplete="off"
                class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">省</label>
        <div class="layui-input-inline">
            <select name="addr1" lay-verify="" lay-filter="addr1" lay-search></select>
        </div>
        <label class="layui-form-label">市</label>
        <div class="layui-input-inline">
            <select name="addr2" lay-verify="" lay-filter="addr2" lay-search></select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">区</label>
        <div class="layui-input-inline">
            <select name="addr3" lay-verify="" lay-search></select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">地址</label>
        <div class="layui-input-block" style="width: 500px">
            <input type="text" name="addr4" lay-verify="required" placeholder="请输入地址" autocomplete="off"
                class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"></label>
        <div class="layui-input-inline">
            <input type="button" class="layui-btn" lay-submit lay-filter="add" value="确定" />
            <input type="button" class="layui-btn" onclick="closeThis()" value="取消" />
        </div>
    </div>
    <input type="hidden" name="action" value="add" />
</form>
</fieldset>
<script type="text/javascript">
ajax('/UserServlet', {action:'listAll'}, 'json', function(data){
    var html = "<option value=''>请选择账号</option>" ;
    $.each(data,function(i, dom) {
        html += "<option value='"+dom.code+"'>"+dom.name+"</option>" ;
    });
    $("select[name='usercode']").html(html);
    form.render('select'); //刷新select选择框渲染
})
getAddr('addr1','p');
function getAddr(addr,up){
	ajax('/DictServlet', {action:'listUp',up:up}, 'json', function(data){
        var html = "<option value=''>请选择</option>" ;
        $.each(data,function(i, dom) {
            html += "<option value='"+dom.code+"'>"+dom.name+"</option>" ;
        });
        $("select[name='"+addr+"']").html(html);
        form.render('select'); //刷新select选择框渲染
    })
}
form.on('select(addr1)', function(data){
//  console.log(data.elem); //得到select原始DOM对象
//  console.log(data.value); //得到被选中的值
//  console.log(data.othis); //得到美化后的DOM对象
    $("select[name='addr2']").empty();
	$("select[name='addr3']").empty();
	form.render('select');
	getAddr('addr2',data.value);
}); 
form.on('select(addr2)', function(data){
    $("select[name='addr3']").empty();
    form.render('select');
    getAddr('addr3',data.value);
});
formSubmit('/AddrServlet', 'submit(add)', 'text', function(data) {
    if (data == 0) {
        layer.msg('添加成功');
        closeThis(3000);
//     } else if (data == 1) {
//         layer.msg('已存在');
    } else {
        layer.msg('添加失败');
    }
});
</script>
</body>
</html>