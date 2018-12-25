<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>收货地址维护</title>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 20px;padding:15px;">
    <legend>收货地址--添加修改信息</legend>

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
            <input type="button" class="layui-btn" lay-submit lay-filter="upd" value="确定" />
            <input type="button" class="layui-btn" onclick="closeThis()" value="取消" />
        </div>
    </div>
    <input type="hidden" name="action" value="upd" />
    <input type="hidden" name="id" value="" />
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
    getAddr('addr1','p',init);
})
function getAddr(addr,up,func){
	ajax('/DictServlet', {action:'listUp',up:up}, 'json', function(data){
        var html = "<option value=''>请选择</option>" ;
        $.each(data,function(i, dom) {
            html += "<option value='"+dom.code+"'>"+dom.name+"</option>" ;
        });
        $("select[name='"+addr+"']").html(html);
        form.render('select'); //刷新select选择框渲染
        func();
    })
}
function init(){
    var id = '<%=request.getParameter("id")%>';
    $("input[name='id']").val(id);
    ajax('/AddrServlet', {action:'search',id:id}, 'json', function(data){
        $("input[name='tel']").val(data.tel);
        $("input[name='name']").val(data.name);
        $("input[name='addr4']").val(data.addr4);
    	$("select[name='usercode']>option[value='"+data.usercode+"']").prop('selected','selected');
        $("select[name='addr1']>option[value='"+data.addr1+"']").prop('selected','selected');
        
        getAddr('addr2',data.addr1,function(){
            $("select[name='addr2']>option[value='"+data.addr2+"']").prop('selected','selected');
            getAddr('addr3',data.addr2,function(){
                $("select[name='addr3']>option[value='"+data.addr3+"']").prop('selected','selected');
                form.render('select');
            });
        });
    })
}
form.on('select(addr1)', function(data){
    $("select[name='addr2']").empty();
    $("select[name='addr3']").empty();
    form.render('select');
	getAddr('addr2',data.value,function(){});
}); 
form.on('select(addr2)', function(data){
	$("select[name='addr3']").empty();
    form.render('select');
    getAddr('addr3',data.value,function(){});
}); 
formSubmit('/AddrServlet', 'submit(upd)', 'text', function(data) {
    if (data == 1) {
        layer.msg('添加成功');
        closeThis(3000);
//     } else if (data == 0) {
//         layer.msg('已存在');
    } else {
        layer.msg('添加失败');
    }
});
</script>
</body>
</html>