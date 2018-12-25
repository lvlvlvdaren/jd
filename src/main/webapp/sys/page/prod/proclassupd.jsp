<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>分类维护</title>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 10px; padding: 15px;">
		<legend>商品分类--修改信息</legend>

		<form class="layui-form" method="post">
			<div class="layui-form-item"></div>
			<div class="layui-form-item"></div>
			<div class="layui-form-item">
				<label class="layui-form-label">所属分类</label>
				<div class="layui-input-inline">
					<select name="parentcode" lay-verify="" lay-filter="parentcode"
						lay-search></select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">编号</label>
				<div class="layui-input-inline">
					<input type="text" readonly name="scode" lay-verify="required"
						placeholder="请输入编号" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">名称</label>
				<div class="layui-input-inline">
					<input type="text" name="sclassname" lay-verify="required"
						placeholder="请输入名称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">描述</label>
				<div class="layui-input-inline">
					<input type="text" name="descr" lay-verify="required"
						placeholder="请输入描述" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"></label>
				<div class="layui-input-inline">
					<input type="button" class="layui-btn" lay-submit lay-filter="add"
						value="确定" /> <input type="button" class="layui-btn"
						onclick="closeThis()" value="取消" />
				</div>
			</div>
			
		</form>
	</fieldset>
<script type="text/javascript">
ajax('/proclassController/searchPcname.do', {
	
}, 'json', function(data) {
	console.log(data)
	var html = "<option value=''>请选择分类</option>";
	$.each(data, function(i, dom) {
		
		html += "<option value='"+dom.scode+"'>" + dom.sclassname
				+ "</option>";
	});
	$("select[name='parentcode']").html(html);
	form.render('select'); //刷新select选择框渲染
})
init();
function init(){
    var id = '<%=request.getParameter("id")%>';
    ajax('/proclassController/searchById.do', {id:id}, 'json', function(data){
//     	console.log(data)
    	
        $("input[name='scode']").val(data[0].scode);
        $("input[name='sclassname']").val(data[0].sclassname);
        $("input[name='descr']").val(data[0].descr);
    	$("select[name='parentcode']>option[value='"+data[0].parentcode+"']").prop('selected',true);
    	form.render('select');
        
        });
    
}

formSubmit('/proclassController/updClass.do', 'submit(add)', 'text', function(data) {
	var data = $.parseJSON(data).msg;
    if (data == 1) {
        closeThis(3000);
        layer.msg('修改成功');
//     } else if (data == 0) {
//         layer.msg('已存在');
    } else {
        layer.msg('修改失败');
    }
});
</script>
</body>
</html>