<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jd/cust/common/layui/css/layui.css" />
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>
<style type="text/css">
	* {
				margin: 0px;
				padding: 0px;
			}
			body{
			background-color: #f5f5f5;
			}
			li {
				list-style: none;
			}			
			.clear {
				clear: both;
			}			
			#shortcut {				
				height: 30px;
				width: 1349px;
				position: relative;
				background-color: #e3e4e5;
				border-bottom: solid 1px #ddd;
			}		
			#ww {
				width: 1210px;
				height: 30px;
				line-height: 30px;
				float: left;
				margin-left: 70px;
			}
			
			#f1 li {
				float: left;
				margin-left: 20px;
			}
			
			#f1 a {
				text-decoration: none;
				font: "新宋体";
				font-size: 14px;
				color: #666;
			}
			
			#location img
			 {
				width: 14px;
				height: 14px;
			}
			
			#f2 {
				float: right;
			}
			
			#f2 a {
				float: left;
				text-decoration: none;
				font: "新宋体";
				font-size: 12px;
				color: #666;
				margin-left: 10px;
			}
			.nav{
			width: 1349px;
			height: 82px;
			background-color: #e2231a;
			margin: 0 auto;
			}
			.w{
			width: 1210px;			
			margin: 0 auto;

			}
			.logo{
			width: 272px;
			height: 80px;
			float: left;
			}
			.fore11{
			float: left;
			
			}
			.forew{
			float: left;
			text-decoration: none;
			color: #fff;
			font-family: "Microsoft YaHei";
			margin-top: 18px;
			margin-left:5px;
			cursor: auto;
			}
			.fore3{
			float: left;
			text-decoration: none;
			border: 1px solid #ffb2b2;
			height: 18px;
			line-height: 18px;
			border-radius: 10px;
			font-size: 14px;
			color: #ffb2b2;
			margin-top: 10px;
			}
			.fore3:hover{
			background-color: #fff;
			}
			.items li{
			float: left;
			}
			.navitems{
			width:342px;
			height:80px;
			float: left;
			}
			.items{
			margin-left:20px;
			margin-top:28px;
			width:342px;
			height:36px;
			float: left;
			}
			.fore-1 a{
			text-decoration: none;
			margin-right: 38px;
			color: #fff;
			font-size: 14px;
			}
			.fore-2 a{
			text-decoration: none;
			margin-right: 35px;
			color: #fff;
			font-size: 14px;
			}
			.fore-3 a{
			text-decoration: none;
			margin-right: 35px;
			color: #fff;
			font-size: 14px;
			}
			.fore-4 a{
			text-decoration: none;
			margin-right: 25px;
			color: #fff;
			font-size: 14px;
			}
			.nav-r{
			float: right;
			width: 340px;
			height: 61px;

			}
			.search-2014{
			margin-top:25px;

			width: 186px;
			height: 36px;
			float: left;
			}
			.settleup-2014{
			margin-left:6px;
			margin-top:25px;
			width: 141px;
			height: 34px;
			float: left;
			background-color: #fff;
			
			}
			.settleup-2014 a{
			text-align: center;
			text-decoration: none;
			color: red;
			font-size: 14px;
			float: left;
			margin-left:10px;
			margin-top: 10px; 
			}
			.text{
			width:128px;
			height: 32px;
			float: left; 
			}
			.button{
			
			height: 32px;
			float: left;
			}
			.container{
			width: 1349px;
			height: 1390px;
			}
			.content{
			width: 1210px;
			height: 1390px;
			float: left;
			}
			.sub{
			margin-left:5px;
			width: 120px;
			height: 1370px;
			float: left;
			margin-top: 20px;
			}
			#main{
			margin-left:10px;
			margin-top: 20px;
			width: 1070px;
			float: left;
			}
			.for{
			margin-left:10px;
			margin-bottom: 5px;
			}
			.for dt{
			cursor:pointer;
			color: #333;
			height:28px;
			line-height:28px;
			font-size:14px;
			font-weight: 700;
		
			}
			.for dd{
			margin-top: 2px;
			cursor:pointer;
			color: #777;
			font-size: 12px;
			height:24px;
			line-height:24px;
			font-weight: 500;
			margin-left: 5px;
			}
			.for dd:hover{
			color: red;
			font-size: 13px;
			
			}
			.ss{
			width: 1070px;
			height: 58px;
			background-color: #fff;
			}
			.ss span{
			font-weight:700;
			float:left;
			color:#666;
			font-size: 14px;
			margin-top:20px;
			margin-left: 40px;
			}
			.mod-main{
			width: 1070px;
			float: left;
			background-color: #fff;
			margin-top: 20px;
			}
			.mt{
			width: 1070px;
			height: 50px;
			}
			.fore1{
			margin-top:12px;
			margin-left:27px;
			float: left;
			}
			.fore1 a{
			font-size:12px;
			color:#666;
			text-decoration:none;
			}
			
			.fore2{						
			margin-left:40px;
			margin-top:10px;
			float: left;
			}
			.fore2 a{
			font-size:14px;
			color:black;
			text-decoration:none;
			}
			.mc{
			width: 1000px;
			margin: 0 auto;
			}
			.order{
			width: 100%;
			border-collapse: collapse;
			display: table;
			border-color: grey;
			}
			.dealtime{
			float: left;
			margin-right: 30px;
			font-family:verdana;
			height: 18px;
			line-height: 18px;
			font-size: 14px;
			}
			.number{
			float: left;
			width: 226px;
			font-family:verdana;
			color: #333;
			height: 18px;
			line-height: 18px;
			font-size: 10px;
			}
			.operate{
				height: 18px;
			line-height: 18px;
			font-size:14px;
			float: left;
			}
			.p-img{
			float:left;
			width: 60px;
			height: 60px;
			}
			.goods-number{
			margin-left:20px;
			float: left;
			margin-top: 40px;
			font-size: 12px;
			color: #666;
			}
			.goods-repair{
			float: left;
			color:#666;
			font-size:14px;
			margin-left: 80px;
			margin-top: 40px;
			}
			.goods-items{
			width: 340px;
			height: 82px;
			margin-left:20px;
			margin-top:15px;
			float: left;
			}
			.sep-row{
			height: 20px;
			}
			thead{
			color:#666;
			background-color:#f5f5f5;
			height: 34px;
			line-height:34px;
			font-size:15px;
			display: table-header-group;
			border-color: inherit;
			border-collapse: collapse; 
			}
			tbody{
			border: 1px solid #eee;
			
			}
			.te-th{
			height: 31px;
			
			background-color: #f5f5f5;
			
			}
			.ordertime-cont{
			float: left;
			
			}
			.prder-detail{
			float: left;
			text-decoration: none;
			}
			.p-name{					
			margin-left: 20px;
			
			}
			.p-name a{
			color:#333;
			text-decoration:none;
			font-size: 14px;
			margin-left: 20px;
			}
			.p-name a:hover{
			color: red;
			}
			.extra{
			margin-top: 10px;
			}
			.extra a{
			margin-left: 20px;
			color:#333;
			font-size:14px;
			text-decoration:none;
			}
			.img{
			width: 60px;
			height: 60px;
			}
			.amount{
			margin-left: 25px;
			}
			.amount span{
			font-size:14px;
			color: #666;
			}
			.buy-button{
			margin-right:6px;
			text-align:center;
			margin-left: 10px;
			cursor: pointer;
			border: 1px solid #ddd;
			background-color: #f5f5f5;
			}
			.buy-button b{
			font-size:14px;
			color: #333;
			}
			.te-bd td{
			border-right: 1px solid #f5f5f5;
			}
			.consignee{
			margin-left: 20px;
			}
			.status{			
			margin-left: 20px;
			
			}
			.status span{
			font-size: 14px;
			color: #666;
			}
			.status a{
			font-size: 14px;
			color: #666;
			text-decoration: none;
			}
			.txt{
			font-size:12px;
			color: #666;
			}
			.delete{
			width: 20px;
			height: 20px;
			float: right;
			margin-right: 10px;
			background: url("photos/order-icons.png") no-repeat;
			background-position: -23px -132px ;
			margin-top: 5px;
			cursor: pointer;
			}
			.delete:hover{
			background: url("photos/order-icons.png") no-repeat;
			background-position: -0px -132px ;
			}
			.shop-text{
			float: left;
			}
			.kefu{
			width: 20px;
			height: 20px;
			float:left;
			margin-left:8px;
			background: url("photos/sprite-im.png") no-repeat;
			background-position: -26px 0;
			}
			.cartotals{
		text-align:center;
		margin-top:7px;
		margin-right:7px;
		float:right;
		color: #fff;
		height: 20px;
		width: 20px;
		font-family:monospace;
		font-size:18px;
		border-radius: 10px;
		background-color: #f30213;
		}
	</style>
</head>
<body>
<div id="shortcut">
			<div id="ww">
				<ul id="f1">
					<li id="bar">
						<i></i>
						<a href="/jd/cust/webpage/homepage.jsp" target="_blank">京东首页</a>
					</li>
					<li id="location">
						<img src="photos/location.png"/>
						<a href="index.html">北京</a>
					</li>
				</ul>
				<ul id="f2">
					<a href="/jd/cust/login.jsp" style="color:red;font-size: 14px;]">${user}</a>
					<a href="index.jsp">免费注册|</a>
					<a href="/jd/orderwebController/showOrder.do"" target="_blank">我的订单|</a>
					<a href="goods/main">我的京东|</a>
					<a href="index.jsp">京东会员|</a>
					<a href="index.jsp">企业采购|</a>
					<a href="index.jsp">客户服务|</a>
					<a href="index.jsp">网站导航|</a>
					<a href="index.jsp">手机京东|</a>
					<div class="clear"></div>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
    <div class="nav">   
    <div class="w">
    <div class="logo">
    <img alt="" src="photos/logo_2017.png" class="fore11"/>
    <a href="/jd/cust/webpage/homepage.jsp" target="_blank" class="forew">我的京东</a>
    <a href="/jd/cust/webpage/homepage.jsp" target="_blank" class="fore3">返回京东首页</a>
    </div>
    
    <div class="navitems">
    <ul class="items">
    <li class="fore-1"> <a href="/jd/cust/webpage/homepage.jsp">首页</a> </li>
    <li class="fore-2"> <a href="/jd/cust/webpage/homepage.jsp">账户设置</a> </li>
    <li class="fore-3"> <a href="/jd/cust/webpage/homepage.jsp">社区</a> </li>
    <li class="fore-4"> <a href="/jd/cust/webpage/homepage.jsp">消息</a> </li>
    </ul>    
    </div>
    <div class="nav-r">
    <div class="search-2014">
    <input type="text" class="text"/>
    <button class="button">搜索</button>
    </div>
    <div class="settleup-2014">
    <span></span>
    <a href="/jd/classController/cart.do" target="_blank">我的购物车</a>
    <span class="cartotals">${totals}</span>
    </div>
    </div>
    </div>
    </div>
<div class="container">
<div class="w">
<div class="content">
<div class="sub">
<div id="menu">
<dl class="for">
<dt>订单中心</dt>
<dd>我的订单</dd>
<dd>我的活动</dd>
<dd>评价晒单</dd>
<dd>我的常购商品</dd>
<dd>购买助手</dd>
</dl>
<dl class="for">
<dt>关注中心</dt>
<dd>关注的商品</dd>
<dd>关注的店铺</dd>
<dd>关注的店铺</dd>
<dd>关注的专辑</dd>
<dd>收藏的内容</dd>
<dd>关注的活动</dd>
<dd>浏览历史</dd>
</dl>
<dl class="for">
<dt>资产中心</dt>
<dd>小金库</dd>
<dd>京东白条</dd>
<dd>领货码</dd>
<dd>余额</dd>
<dd>优惠券</dd>
<dd>礼品卡</dd>
<dd>京豆</dd>
<dd>京东钢镚</dd>
</dl>
<dl class="for">
<dt>关注中心</dt>
<dd>关注的商品</dd>
<dd>关注的店铺</dd>
<dd>关注的店铺</dd>
<dd>关注的专辑</dd>
<dd>收藏的内容</dd>
<dd>关注的活动</dd>
<dd>浏览历史</dd>
</dl>

</div>

</div>
<div id="main"> 
<div class="ss">
<span>我的订单</span>
</div>
<div class="mod-main">
<div class="mt">
<ul class="extra-1">
<li class="fore1"><a href="//www.jd.com/" target="_blank">全部订单</a></li>
<li class="fore1"><a href="//www.jd.com/" target="_blank">待付款</a></li>
<li class="fore1"><a href="//www.jd.com/" target="_blank">待收货</a></li>
<li class="fore1"><a href="//www.jd.com/" target="_blank">待评价</a></li>
<li class="fore2"><a href="//www.jd.com/" target="_blank">我的常购商品</a></li>
<li class="fore2"><a href="//www.jd.com/" target="_blank">好货.清仓</a></li>
<li class="fore2"><a href="//www.jd.com/" target="_blank">订单回收</a></li>
</ul>
</div>

<div class="mc">
<table class="order">
<thead>
<tr>
<th>
<span class="ordertime-cont">近三个月订单</span>
<a href="" class="order-detail">订单详情</a>
</th>

<th>收货人</th>
<th>金额</th>
<th>全部状态</th>
<th>操作</th>
</tr>
</thead>
<tbody>
<tr class="sep-row">
<td colspan="5"></td>
</tr>
<script type="text/javascript">
console.log(${orders})
</script>

<c:forEach items="${orders}" var="order">
<tr class="te-th">
<td colspan="5">
<span class="dealtime" title="2018-12-19 19:36:21"></span>
<span class="number">订单号:${order.ordcode}</span>
<div class="operate">
<span class="shop-text">京东</span>
<span class="kefu"></span>
</div>
<span class="delete" data-number="${order.ordcode}" data-id="${order.id}"></span>
</td>
</tr>

<c:forEach items="${order.product}" var="product">
<tr class="te-bd">
<td>
<div class="goods-items">
<%-- <c:forEach items="${product.photo}" var="pho" begin="0" end="1"> --%>
<div class="p-img">
<img alt="" src="/imge/${product.imgname}" class="img"> 
</div>
<%-- </c:forEach> --%>
<div class="p-msg">
<div class="p-name">
<a href="">${product.proname}</a>
</div>
<div class="extra">
<span></span>
<a href="">类似商品</a>
</div>
</div>
</div>
<div class="goods-number">${order.mcount}</div>
<div class="goods-repair">
买了换钱
</div>
</td>
<td rowspan="1">
<div class="consignee">
<span class="txt">${order.cust.account}</span>
<b></b>
</div>
</td>
<td rowspan="1">
<div class="amount">
总额:
<span style="font-size: 15px;color: #e4393c;font-family: verdana;">${order.total}</span><br>
<span class="ftx-13">在线支付</span>
</div>
</td>
<td rowspan="1">
<div class="status">
<span>已取消</span><br>
<a href="//www.jd.com/" target="_blank">订单详情</a>
</div>
</td>
<td rowspan="1">
<div class="buy-button">
<span></span>
<b>正在派送</b>
</div>

</td>
</tr>
</c:forEach>

</c:forEach>



</tbody>


</table>

</div>

</div>




</div>

</div>

</div>

</div>
</body>
</html>