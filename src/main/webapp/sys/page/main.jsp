<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>主页</title>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">JAVA-0000</div>
			<ul class="layui-nav layui-layout-left"></ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
				    <a href="javascript:;"> 
				        <img src="<%=path%>/img/fei.png"
				        class="layui-nav-img">用户${manageUser.name}
				    </a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:openUser()">基本资料</a>
						</dd>
						<dd>
							<a href="javascript:openPass()">修改密码</a>
						</dd>
					</dl>
				</li>
				<li class="layui-nav-item">
				    <a href="javascript:goLogout()">注销</a>
				</li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" >
					<li class="layui-nav-item layui-nav-itemed">
					    <a href="javascript:;">用户管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/sys/page/user/userlist.jsp">
								用户信息维护</a>
							</dd>
							<!-- <dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/sys/page/addr/addrlist.jsp">
								收货地址维护</a>
							</dd> -->
						</dl>
					</li>
					
					<li class="layui-nav-item layui-nav-itemed">
					    <a href="javascript:;">商品管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/sys/page/prod/proclass.jsp">
								商品分类维护</a>
							</dd>
							 <dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/sys/page/prodinfo/proinfo.jsp">
								商品信息维护</a>
							</dd> 
						</dl>
					</li>
					<li class="layui-nav-item layui-nav-itemed">
					    <a href="javascript:;">订单管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/sys/page/order/order.jsp">
								订单信息维护</a>
							</dd>
							
						</dl>
					</li>
					<!-- <li class="layui-nav-item">
					    <a href="javascript:;">基础配置</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/web/page/dict/dictlist.jsp">
								基础数据维护</a>
							</dd>
							<dd>
                                <a href="javascript:openURL('/web/404.jsp');" 
                                class="site-demo-active">其他2</a>
                            </dd>
							<dd>
								<a href="javascript:;" 
								class="site-demo-active" 
								data-url="/web/404.jsp">其他1</a>
							</dd>
						</dl>
					</li> -->
				</ul>
			</div>
		</div>
		<div class="layui-body"><!-- 内容主体区域 -->
			<iframe name="rightframe" width="99%" height="97%" src="#"></iframe>
		</div>
		<div class="layui-footer">© JAVA.com - 底部固定区域</div>
	</div>
<script type="text/javascript" src="<%=path%>/layui/layui.all.js"></script>
<script>
	$('.site-demo-active').click(function() {
		window.open(con.app + $(this).data('url'), "rightframe");
	});
	function openURL(url){
		window.open(con.app + url, "rightframe");
	}
	$('.site-demo-active:first').click();
	function openUser(){
		openLayer('/sys/page/user/userupd.jsp?account=${manageUser.account}'
			,function(){location.reload();})
	}
	function openPass(){
        openLayer('/sys/page/user/userpass.jsp?account=${manageUser.account}'
       		,function(){})
//  layer.open({
//      type : 2,
//      area : [ '800px', '450px' ],
//      fixed : false, // 不固定
//      maxmin : true,
//      end : function(){location.href=location.href;},
//      content : con.app 
//          + '/web/page/user/userpass.jsp?code=${user.code}'
//  });
    }
</script>
</body>
</html>