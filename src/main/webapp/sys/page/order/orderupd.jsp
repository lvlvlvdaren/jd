<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>信息</title>
</head>
<body>
	<fieldset class="layui-elem-field" style="margin: 10px; padding: 15px;">
		<legend>商品维护--修改信息</legend>

		<form class="layui-form" method="post">
			<div class="layui-form-item"></div>
			<div class="layui-form-item"></div>
			<div class="layui-form-item">
				<label class="layui-form-label">一级分类</label>
				<div class="layui-input-inline">
					<select name="proclass1" lay-verify="" lay-filter="proclass1"
						lay-search></select>
				</div>
				<label class="layui-form-label">二级分类</label>
				<div class="layui-input-inline">
					<select name="proclass2" lay-verify="" lay-filter="proclass2"
						lay-search></select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">编号</label>
				<div class="layui-input-inline">
					<input type="text" name="procode" lay-verify="required" readonly
						placeholder="请输入编号" autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label">名称</label>
				<div class="layui-input-inline">
					<input type="text" name="proname" lay-verify="required" id="test"
						placeholder="请输入名称" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">单价</label>
				<div class="layui-input-inline">
					<input type="text" name="price" lay-verify="required"
						placeholder="请输入单价" autocomplete="off" class="layui-input">
				</div>
				<label class="layui-form-label">库存</label>
				<div class="layui-input-inline">
					<input type="text" name="amount" lay-verify="required"
						placeholder="请输入库存" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">状态</label>
				<div class="layui-input-inline">
					<select name="state" lay-verify="" lay-filter="state" lay-search>
						<option value="上架">上架</option>
						<option value="下架">下架</option>
					</select>
				</div>
				<label class="layui-form-label">描述</label>
				<div class="layui-input-inline">
					<input type="text" name="descr" lay-verify="required"
						placeholder="请输入库存" autocomplete="off" class="layui-input">
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
// 		ajax('/productController/searchPcname.do', {

// 		}, 'json', function(data) {
			
// 			var html = "<option value=''>请选择分类</option>";
// 			$.each(data, function(i, dom) {
// 				html += "<option value='"+dom.proclass1+"'>" + dom.proclassname
// 						+ "</option>";
// 			});
// 			$("select[name='proclass1']").html(html);
// 			form.render('select'); //刷新select选择框渲染
// 		})
getClass('proclass1','ss',init);
function getClass(clas,up,func){
ajax('/productController/searchPcname.do', {up:up}, 'json', function(data){
		
        var html = "<option value=''>请选择</option>" ;
        $.each(data,function(i, dom) {
            html += "<option value='"+dom.proclass1+"'>"+dom.proclassname+"</option>" ;
//         console.log("proclass1"+dom.proclass1)
        });
        $("select[name='"+clas+"']").html(html);
        form.render('select'); //刷新select选择框渲染
        func();
    })
}

function init(){
	var id = '<%=request.getParameter("id")%>';
			ajax('/productController/searchById.do', {id : id}, 'json', function(data) {
				$("select[name='proclass1']>option[value='"+ data[0].proclass2 + "']").prop('selected','selected');
				$("input[name='procode']").val(data[0].procode);
				$("input[name='proname']").val(data[0].proname);
				$("input[name='price']").val(data[0].price);
				$("input[name='amount']").val(data[0].amount);
				$("input[name='descr']").val(data[0].descr);
				$("select[name='state']>option[value='" + data[0].state + "']").prop("selected", 'selected');
				// 	        getAddr('proclass2',data[0].proclass1);
				getClass('proclass2', data[0].proclass2, function() {
					$("select[name='proclass2']>option[value='"+ data[0].proclass1 + "']").prop('selected', 'selected');
					 form.render('select');
				})
			});
		}
form.on('select(proclass1)', function(data){
   $("select[name='proclass2']").empty();
	form.render('select');
	getClass('proclass2',data.value,function(){});
}); 
		// form.on('select(proclass2)', function(data){
		//   console.log(data.elem); //得到select原始DOM对象
		//  console.log(data.value); //得到被选中的值
		//   console.log(data.othis); //得到美化后的DOM对象
		//     $("select[name='proclass1']").empty();
		// 	form.render('select');
		// 	getAddr('proclass1',data.value);
		// }); 
		/* select[name='proclass1'] */

		// 		$(document).ready(function(){
		// 		$("#test").change(function() {
		// 			alert("123");
		// 			console.log(111);return;
		// 			$.ajax({
		// 				url : '/productController/searchProclass2.do',
		// 				type : 'post',
		// 				data : {
		// 					proclass2 : $(this).val()
		// 				},
		// 				dataType:'json',
		// 				success:function(data){
		// 					console.log(data);
		// 					var html = "";
		// 					$.each(data, function(i,dom){
		// 						html += "<option value = '"+dom.proclass1+"'>"+dom.proclassname+"</option>"
		// 					});
		// 					$("select[name='proclass2']").html(html);
		// 				}
		// 			});
		// 		});
		// 		})
		formSubmit('/productController/updProd.do', 'submit(add)', 'text',
				function(data) {
					var data = $.parseJSON(data).msg;
					if (data == 1) {
						layer.msg('修改成功');
						closeThis(3000);
						//     } else if (data == 1) {
						//         layer.msg('已存在');
					} else {
						layer.msg('修改失败');
					}
				});
	</script>
</body>
</html>