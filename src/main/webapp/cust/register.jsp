<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人注册</title>
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>
<style>
			.w {
				margin: auto;
				height: 100px;
				width: 1200px;
				border-bottom: solid 5px orange;
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
			
			#login {
				position: relative;
				width: 150px;
				margin: 50px 0 0 0;
				height: 60px;
				float: right;
			}
			
			.b {
				font-size: 40px;
				line-height: 150%;
				font-family: Arial, Verdana, 宋体;
			}
			
			.r {
				position: absolute;
				left: 450px;
				top: 120px;
				
				width: 500px;
				height: 500px;
			}
			
			
			
			.input-group {
				margin: 20px;
			}
			
			.number {
				margin-top: 22px;
				float: left;
			}
			
			#btn {
				position: relative;
				
				
				text-align: center;
			}
			
			.submit {
				background-color: #e2231a;
				border: none;
				width: 440px;
				height: 45px;
				
				color: #fff;
				font-size: 22px;
				font-weight: bold;
				letter-spacing: 8px;
				cursor: pointer;
			}
		</style>
		<script type="text/javascript">
		$().ready(function(){
			//bom编程
// 			if(self!=top){
// 			top.location=self.location;
// 			}
				
			$("#btn").click(function(){
			
			var name= $("[name=username]").val();
			if(name==""){
			showMes("不能为空");
			
			return false;	
			}
			var account= $("[name=account]").val();
			if(account==""){
			showMes("不能为空");
			
			return false;	
			}
			var password=$("[name=password]").val();
			if(password==""){
			
			showMes("密码不能为空");
			return false;	
			}
			var password1=$("#password1").val();	
			var password2=$("#password2").val();
			if(password1!=password2){
			
			showMes("两次输入密码不一致");
			}			
			});
			setTimeout(function(){
			 	$("#tishi").html("");	 	
			 	},3000);
			function showMes(mes){
			 	$("#mes").html(mes);
				setTimeout(function(){
			 	$("#mes").html("");	 	
			 	},3000);
			 	}
		});
		</script>
</head>
<body>
<div class="w">
			<div id="logo"><b class="b">欢迎注册</b></div>
			<div id="login">已有账号？
				<a target="_blank" href="/jd/cust/login.jsp">请登录</a>
			</div>
		</div>

		<div class="r">

			<form action="/jd/custController/register.do" method="post" >
				<div class="input-group input-group-lg"> <label class="input-group-addon">&nbsp;用&nbsp;户&nbsp;名</label><input type="text" class="form-control" name="username" placeholder="请输入用户名"></div>
				<div class="input-group input-group-lg"><span class="input-group-addon">&nbsp;&nbsp;账&nbsp;&nbsp;&nbsp;&nbsp;号&nbsp;</span> <input type="text" class="form-control" name="account" placeholder="请输入账号"></div>

				<div class="input-group input-group-lg"><label class="input-group-addon">&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;</label><input type="password" class="form-control" id="password1" name="password" placeholder="请输入密码"></div>

				<div class="input-group input-group-lg"><label class="input-group-addon">确认密码</label> <input type="password" class="form-control" id="password2" name="surepass" placeholder="请输入确认密码"></div>

				<div class="input-group input-group-lg" style="width: 300px;float: left;">
					<label class="input-group-addon">&nbsp;验&nbsp;证&nbsp;码</label><input type="text" class="form-control" name="authcode" placeholder="请输入验证码">
				</div>
				<div style="z-index: 10;position:absolute;margin-top:30px;left:350px;">
				<img alt="IMG" src="/jd/RandomServlet" onclick="this.src='/jd/RandomServlet?'+Math.random();" />
				</div>
				<div id="btn"><input class="submit" type="submit" value="注册" ></div>
				<input type = "hidden" name="manage" value="2">
			</form>
			<div id="tishi">${msg}</div>
   
    <div id="mes" ></div>

		</div>

</body>
</html>