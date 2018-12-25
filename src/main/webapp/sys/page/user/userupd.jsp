<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>用户维护</title>
</head>
<body>
    <fieldset class="layui-elem-field" style="margin: 20px;padding:15px;">
        <legend>用户维护--修改信息</legend>
    <form class="layui-form" lay-filter="upduser" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-inline">
                <input type="text" name="account" readonly lay-verify="required" placeholder="账号" autocomplete="off"
                    class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="name" placeholder="请输入姓名" autocomplete="off"
                    class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                <input type="button" class="layui-btn" lay-submit lay-filter="updUser" value="确定" />
                <input type="button" class="layui-btn" onclick="closeThis()" value="取消" />
            </div>
        </div>
    
    </form>
    </fieldset>
<script type="text/javascript">
init();
function init(){
    var account = '<%=request.getParameter("account")%>';
	$.ajax({
        url:con.app+'/userController/searchOne.do',
        data : {account:account},
        dataType : 'json',
        type : 'post',
        success : function(data) {
        	/* form.val("upduser", 
        		{username: data.name,account: data.account})*/
        		
          $("input[name='account']").val(data[0].account);
          $("input[name='name']").val(data[0].name);
//          $("input[name='usercode']").prop("readonly","readonly");
        }
    })
}
formSubmit('/userController/modifyUser.do', 'submit(updUser)', 'text', function(data) {
	var data = $.parseJSON(data).msg;
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