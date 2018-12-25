<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>
		<script>
			$(document).ready(function() {
				$(".login-tab-r").click(function(){
					$(".mc").css("display","block");
					$(".qrcode-img").css("display","none");
				});
				$(".login-tab-1").click(function(){
					$(".mc").css("display","none");
					$(".qrcode-img").css("display","block");
				})
				/*$("a").hover(function(){
					$("a").css("color","#e4393c");
				},function(){
					$("a").css("color","");
				})*/
			})
		</script>
		<style>
			.w {
				width: 990px;
				margin: 0 auto;
			}
			
			div {
				display: block;
			}
			
			#logo {
				position: relative;
				width: 300px;
				margin: 10px 0;
				height: 60px;
				float: left;
			}
			
			.b {
				font-size: 40px;
				line-height: 150%;
				font-family: Arial, Verdana, 宋体;
			}
			
			.login-wrap {
				position: absolute;
				left: 0;
				top: 85px;
				width: 100%;
				height: 475px;
				background: #1b0f28;
			}
			
			#footer-2018 {
				position: relative;
				padding-bottom: 30px;
				top: 570px;
			}
			
			a {
				font-size: 8px;
				color: #666;
				text-decoration: none;
			}
			
			.form {
				z-index: 8;
				float: right;
			}
			
			.login-form {
				height: 54px;
				font-size: 30px;
				font-family: "microsoft yahei";
				text-align: center;
				border-bottom: 1px solid #f4f4f4;
				position: relative;
				display: block;
				background: #fff;
				width: 346px;
				height: 400px;
				top: 100px;
				left: -230px;
			}
			
			.login-tab-1,
			.login-tab-r {
				height: 54px;
				width: 173px;
				float: left;
			}
			
			.login-tab-1 a,
			.login-tab-r a {
				font-weight: 700;
				font-size: 20px;
			}
			
			#user {
				position: relative;
				top: 30px;
			}
			
			#password {
				position: relative;
				top: 60px;
			}
			
			#login-btn {
				width: 304px;
				margin: auto;
				position: relative;
				top: 90px;
				background-color: #e4393c;
				text-align: center;
			}
			.regist-link{
				position: relative;
				width: 60px;
				height: 20px;
				
				top: 60px;
				left: 40px;
			}
			.regist-link a{
				font-size: 14px;
				color: #b61d1d;
			}
			#login-btn a {
				
				color: #fff;
				font-size: 20px;
				font-family: 'Microsoft YaHei';
			}
			
			#user input {
				width: 304px;
				margin: auto;
			}
			
			#password input {
				width: 304px;
				margin: auto;
			}
			.qrcode-img{
				position: relative;
				top: 80px;
			}
			#denglu{
	
	background-color: #e4393c;
	border: none;
	color: #fff;
	font-size: 20px;
	text-align: center;
	line-height: 35px;

	cursor: pointer;
	
	}
		</style>
		<script type="text/javascript">
		$().ready(function(){
			$("#denglu").click(function(){
				var account = $("[name=account]").val();
				
				if(account==""){
					showMsg("账号不能为空");
				}
				var password = $("[name=password]").val();
				if(password==""){
					showMsg("密码不能为空");
				}
			})
			setTimeout(function(){
					$("#msg").html("")
				}, 3000);
			function showMsg(msg){
				$("#tishi").html(msg);
				setTimeout(function(){
					$("#tishi").html("")
				}, 3000);
			}
			var p = $("#p").text();
			console.log(p)
			if(p=='1'){
				location.href="/jd/classController/searchClass.do";
			}
			
		})
		
		</script>
</head>
<body>
<div class="w">
			<div id="logo"><b class="b">欢迎登录</b></div>
		</div>

		<div class="login-wrap">
			<div class="w"><img alt="MAG" src="/jd/cust/common/img/1.jpg"></div>
		</div>
		<div class="form">
			<div class="login-form">
				<div class="login-tab-1">
					<a href="#">扫码登录</a>
				</div>
				<div class="login-tab-r">
					<a href="#" >账户登录</a>
				</div>
				<div class="mc" style="display: none;">
					<form id="formlogin" action="/jd/custController/login.do" method="post" >
						<div id="user"><input type="text" class="form-control" name="account" placeholder="用户账号/邮箱/已验证手机"></div>
						<div id="password"><input type="password" class="form-control" name="password" placeholder="密码"></div>
						<div id="login-btn" >
<!-- 						<input type="button" value="登     录"  id="denglu"/> -->
								<button id="denglu">登     录</button>
<!-- 							<a target=""  id = "denglu" href="#">登&nbsp;&nbsp;&nbsp;录</a> -->
						</div>
					</form>
				</div>
				
				<div class="qrcode-img" >
					<img alt="IMG" src="/jd/cust/common/img/2.png" />
				</div>
			</div>
			<div id = "tishi" style="position: relative;"></div>
			<div id = "msg" style="position: relative;"><p id = "p">${msg}</p></div>
			
			<div class = "regist-link">
				<a href="/jd/cust/register.jsp" target="_blank">立即注册</a>
			</div>
		</div>
		<div id="footer-2018">
			<div class="links">
				<a target="_blank" href="#">关于我们 | </a>
				<a target="_blank" href="#">联系我们 | </a>
				<a target="_blank" href="#">招聘人才 | </a>
				<a target="_blank" href="#">商家入驻 | </a>
				<a target="_blank" href="#">广告服务 </a>
			</div>
		</div>
</body>
</html>