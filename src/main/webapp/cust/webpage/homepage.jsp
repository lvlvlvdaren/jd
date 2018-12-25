<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<link rel="stylesheet" href="/jd/cust/common/layui/css/layui.css" />
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>
<style>
		* {
				margin: 0;
				padding: 0;
			}
				body {
					
					background-color: #F2F2F2;
					font: 12px/1.5 Microsoft YaHei, tahoma, arial, Hiragino Sans GB, \\5b8b\4f53, sans-serif;
					color: #666;
				}
			
		
			.joytop {
				position: relative;
				z-index: 30;
				transition: opacity 0.35s linear;
			}
			
			.joytop_inner {
				position: relative;
			}
			
			.grid_c1 {
				margin: 0 auto;
				width: 1190px;
			}
			
			font: 12px/150% tahoma,
			arial,
			Microsoft YaHei,
			Hiragino Sans GB,
			"\u5b8b\u4f53",
			sans-serif;
			-webkit-font-smoothing: antialiased;
			background: #fff;
		}
		div {
			display: block;
			margin: 0;
			padding: 0;
		}
		#shortcut-2018 {
			width: 100%;
			height: 30px;
			line-height: 30px;
			background: #e3e4e5;
			border-bottom: solid 1px #ddd;
		}
		#shortcut-2018 li {
			float: left;
			height: 30px;
			padding: 0 2px;
		}
		li {
			text-align: -webkit-match-parent;
			font-size: 12px;
			margin: 0 5px;
		}
		a {
			cursor: pointer;		
		}
		
		ul {
			list-style: none;
			display: block;
		}
		#shortcut-2018 a {
			color: #999;
		}
		.w {
			width: 1210px;
			margin: 0 auto;
		}
		.fr {
			float: right;
		}
		#shortcut-2018 li.spacer {
			width: 1px;
			height: 12px;
			margin-top: 9px;
			padding: 0;
			background: #ccc;
			overflow: hidden;
		}
		#logo-2018 {
			position: relative;
			z-index: 12;
			float: left;
			width: 362px;
			height: 60px;
			padding: 20px 0;
		}
		#logo-2018 .logo {
			display: block;
			width: 270px;
			height: 60px;
			font-size: 40px;
			color: #e4393c;
		}
		a {
			color: #666;
			text-decoration: none;
		}
		#logo-2018 .extra {
			position: absolute;
			top: 15px;
			left: 168px;
			width: 180px;
			height: 70px;
			padding-left: 10px;
			background: #fff;
		}
		#channel {
			float: left;
			margin-right: 10px;
			cursor: default;
			font-size: 20px;
			line-height: 70px;
			font-weight: 400;
			color: #333;
		}
		#categorys-mini {
			float: left;
			color: #666;
			font-size: 12px;
			font-weight: 400;
			position: relative;
			padding-top: 22px;
			height: 27px;
			font-family: simsun;
		}
		#categorys-mini .cw-icon {
			color: #ccc;
			position: relative;
			width: 63px;
			height: 25px;
			border: 1px solid #ccc;
			line-height: 25px;
			z-index: 1;
			background: #fff;
			padding: 0 5px;
		}
		.cw-icon {
			cursor: default;
		}
		#categorys-mini .cw-icon h2 {
			font-family: "Microsoft YaHei";
			color: #666;
			font-size: 12px;
			font-weight: 400;
		}
		#search-2018 {
			width: auto;
		}
		#search-2018 {
			position: relative;
			z-index: 11;
			float: left;
			margin-top: 25px;
		}
		#shelper {
			overflow: hidden;
			position: absolute;
			top: 36px;
			left: 0;
			width: 455px;
			border: 1px solid #CCC;
			background: #fff;
		}
		#search-2018 .form {
			width: auto;
			height: 36px;
		}
		#search-2018 .text {
			float: left;
			width: 450px;
/* 			height: 25px; */
			line-height: 25px;
			color: #999;
			padding: 4px 44px 4px 4px;
			margin-bottom: 4px;
			border-width: 2px 0 2px 2px;
			border: 1px solid transparent;
			border-style: solid;
			outline: 0;
			font-size: 14px;
		}
		input,
		textarea,
		select,
		button {
			text-rendering: auto;
			color: initial;
			letter-spacing: normal;
			word-spacing: normal;
			text-transform: none;
			text-indent: 0px;
			text-shadow: none;
			display: inline-block;
			text-align: start;
			margin: 0em;
			font: 400 13.3333px Arial;
		}
		#search-2018 .button {
			width: auto;
			padding: 0 8px;
			font: 12px simsun;
			overflow: visible;
		}
		#search-2018 .button {
			float: left;
			width: 50px;
			height: 35px;
			font-family: tahoma, arial, Microsoft YaHei, Hiragino Sans GB, "\u5b8b\u4f53", sans-serif;
			background: #f10215;
			border: none;
			border-radius: 0;
			line-height: 1;
			color: #fff;
			font-size: 16px;
			cursor: pointer;
			text-align: center;
		}
		#settleup-2018 {
			float: right;
			z-index: 11;
			height: 36px;
			margin-right: 65px;
			margin-top: 25px;
		}
		.dorpdown {
			position: relative;
		}
		#settleup-2018 .cw-icon {
/* 			width: 75px; */
			height: 34px;
			border: 1px solid #DFDFDF;
			padding: 0 28px 0 36px;
			background: #F9F9F9;
			text-align: center;
			line-height: 34px;
		}
		#settleup-2018 .ci-left {
			top: 9px;
			left: 18px;
			width: 18px;
			height: 16px;
		}
		.dorpdown .cw-icon i {
			display: block;
			position: absolute;
			overflow: hidden;
		}
		#settleup-2018 .ci-right {
			top: 11px;
			right: 10px;
			width: 7px;
			height: 13px;
			overflow: hidden;
			font: 400 13px/13px simsun;
			color: #999;
		}
		#settleup-2018 .ci-count {
			position: absolute;
			top: -4px;
			left: 104px;
			display: inline-block;
			padding: 1px 2px;
			font-size: 12px;
			line-height: 12px;
			color: #fff;
			background-color: #c81623;
			border-radius: 7px 7px 7px 0;
			min-width: 12px;
			text-align: center;
		}
		.dorpdown-layer {
			display: none;
			position: absolute;
		}
		#hotwords {
		left: 355px;
    	position: relative;
			float: left;
			width: 518px;
			height: 20px;
			line-height: 20px;
			overflow: hidden;
		}
		#hotwords a {
			margin-right: 10px;
		}
		.clear,
		.clr {
			display: block;
			overflow: hidden;
			clear: both;
			height: 0;
			line-height: 0;
			font-size: 0;
		}
		#nav-2018 {
			margin-top: 10px;
			height: 33px;
			
		}
		#nav-2018 .w {
			position: relative;
			z-index: 9;
		}
		#nav-2018 .w-spacer {
			position: absolute;
			top: -1px;
			z-index: 1;
			width: 100%;
			height: 44px;
			
		}
		#categorys-2018 {
			float: left;
			z-index: 10;
			width: 190px;
			line-height: 33px;
			background: #f30213;
			overflow: visible;
		}
		#categorys-2018 .dt {
			padding: 0 10px;
			font-size: 14px;
			position: relative;
			bottom: 0;
			color: #fff;
		}
		#categorys-2018 .dt a {
			display: block;
			height: 33px;
			background: #f30213;
			color: #fff;
			text-decoration: none;
			text-align: center;
		}
		#navitems-2018 {
			float: left;
			position: absolute;
			z-index: 2;
		}
		#navitems-2018 .spacer,
		#navitems-2018 a,
		#navitems-2018 li,
		#navitems-2018 ul {
			float: left;
		}
		ol,
		ul {
			list-style: none;
		}
		
		#navitems-2018 a {
			height: 33px;
			padding: 0 10px;
			text-align: center;
			text-decoration: none;
			font-size: 14px;
			line-height: 33px;
			color: #333;
			
		}
		.fs {
    z-index: 9;
    margin-bottom: 30px;
}
.fs_inner {
    z-index: 1;
    height: 480px;
    background-color: #f0f3ef;
}
.fs, .fs_inner {
    position: relative;
}
.grid_c1 {
    margin: 0 auto;
    width: 1190px;
}
.fs_col1, .fs_col2 {
    float: left;
    height: 480px;
    margin-right: 10px;
}
.fs_col1 {
    width: 190px;
}
.cate {
    position: relative;
    z-index: 2;
}
.cate18 .cate_menu {
    padding: 6px 0;
    height: 468px;
}
.cate_menu {
    overflow: hidden;
   
    background-color: #fefefe;
    color: #636363;
}
.cate18 .cate_menu_item {
    height: 26px;
    line-height: 26px;
}
.cate_menu_item {
    overflow: hidden;
    padding-left: 18px;
    
    font-size: 0;
    transition: background-color .2s ease;
}
.cate_menu_lk {
    font-size: 14px;
    color: #626262;
    
    transition: color .2s ease;
}
a {
  
    text-decoration: none;
}
.cate18 .cate_menu_item {

    line-height: 26px;
}
.cate_menu_line {
    padding: 0 2px;
    font-size: 12px;
}
.fs_col2 {
    width: 590px;
}
.focus, .focus_item, .focus_main {
    height: 470px;
}
.focus_main{
	width: 590px;
}
.focus {
    position: relative;
    float: left;
    width: 590px;
    margin-top: 10px;
    overflow: hidden;
}
.focus_list {
    overflow: hidden;
    width: 100%;
    height: 100%;
}
.focus .slider_control_prev {
    left: 3px;
}
.focus .slider_control {
    position: absolute;
    z-index: 1;
    top: 50%;
    margin-top: -20px;
    width: 24px;
    height: 40px;
    
    background-color: rgba(0,0,0,.2);

    color: hsla(0,0%,100%,.4);
    line-height: 40px;
    text-align: center;
}
.slider_control{
	border-radius: 0;
	border: none;
	outline: none;
	transition: background-color .2s ease;
}
element.style {
    overflow: hidden;
}
button,input{
 
    cursor: pointer;
    }
element.style {
    float: left;
    position: relative;
    transition: opacity 500ms ease-in-out;
    width: 590px;
    left: 0px;
    opacity: 0;
    z-index: 0;
}
.focus_item {
    height: 470px;
    background-color: #fff;
}
.focus .slider_control_next {
    right: 0;
}
.focus .slider_indicators {
    z-index: 1;
    margin-left: 0!important;
    left: 46px;
    bottom: 20px;
}
.slider_indicators {
    position: absolute;
    
    /*font-size: 0;*/
    text-align: center;
}

.slider_indicators_btn:after {
    content: "";
    display: block;
    position: absolute;
    left: 3px;
    top: 3px;
    width: 6px;
    height: 6px;
    
    border-radius: 50%;
    border: 2px solid #b9beba;
    
    transition: all .2s ease;
}
.slider_indicators_btn {
				position: relative;
				display: inline-block;
				width: 16px;
				height: 16px;
				margin-right: 1px;
				/*border-radius: 50%;*/
				transition: background .2s ease
			}
.cate_pop {
    left: 191px;
    background-color: #fff;
}
.cate_pop {
    position: absolute;
   
    width: 998px;
    min-height: 478px;
    border: 1px solid #f7f7f7;
    background-color: #fff;
 
    box-shadow: 2px 0 5px rgba(0,0,0,.3);
    transition: top .25s ease;
}
.cate_part {
    display: none;
    padding: 20px 0 10px;
}
.clearfix:after {
    visibility: hidden;
    clear: both;
    display: block;
    content: ".";
    height: 0;
}
.cate_channel{
	text-align: center;
	font-weight: 900;
	font-size: 60px;
}
.cate_menu_item_color{
	background-color:#D3D3D3 ;
}
.slider_indicators_btn_active {
				background: #fdd9dd;
				border-radius: 50%;
		left:-2px;
    border-color: hsla(0,0%,100%,4);
			}
			.fs_col3 {
				float: left;
			}
			
			.fs_col3,
			.fs_col4 {
				width: 190px;
				height: 480px
			}
			.fs_col4 {
				float: right
			}
			.user_inner {
    position: relative;
    padding-top: 62px;
    height: 78px;
}
.user_show {
    padding: 0 10px;
    text-align: center;
}
			.rec_item {
				margin-top: 10px;
			}
			.mod_loading {
				background-repeat: no-repeat;
				background-position: 50% 50%
			}
			a:hover{
			color:#f10215;
        }
		</style>
		<script type="text/javascript">
			$(document).ready(function(){
				$(".cate_menu_item").mouseenter(function(){
					$(this).addClass("cate_menu_item_color").siblings().removeClass("cate_menu_item_color");
					$(".JS_popCtn").show();
					$(".JS_popCtn").children(".cate_part").eq($(this).index()).show().siblings().hide();
				});
				$(".fs_col1").mouseleave(function(){
					$(this).find(".cate_menu_item").removeClass("cate_menu_item_color");
					
					$(".JS_popCtn").stop().hide();
				});
				
				var sli = $(".slider_wrapper  li");
				var ssi = $(".slider_indicators .slider_indicators_btn");
				sli.hide();
				sli.first().show();
				var index = 0;
				var timer = setInterval(change,2000);
				sli.hover(function(){
					clearInterval(timer);
				},function(){
					clearInterval(timer);
					timer = setInterval(change,2000);
				});
				
				function change(){
					sli.hide();
					index++;
					if(index == sli.length){
						index=0;
					}
					select();
				}
				function select(){
					sli.fadeOut(1000);
					sli.eq(index).fadeIn(1000);
					ssi.removeClass("slider_indicators_btn_active");
					ssi.eq(index).addClass("slider_indicators_btn_active");
				}
				ssi.click(function(){
					index = $(this).index();
					select();
					clearInterval(timer);
					timer=setInterval(change,2000);
				})
				$(".slider_control_prev").click(function(){
					clearInterval(timer);
					index--;
					if(index<0){
						index = sli.length;
					}
					select();
					timer = setInterval(change,2000);
				})
				$(".slider_control_next").click(function(){
					clearInterval(timer);
					index++;
					if(index>sli.length-1){
						index=0;
					}
					select();
					timer = setInterval(change,2000);
				})
				var sname = $("#sename").text();
				 var html = "";
				 console.log(sname)
				if(sname !=""){
					html += "<i class='layui-icon layui-icon-username'></i>"
					
					+"<a href='/jd/cust/login.jsp' target='_blank'>欢迎您:"+sname+"</a>&nbsp;&nbsp;"
					+"<a></a>"
				}else{
					html +="<i class='layui-icon layui-icon-username'></i>"
					+"<a href='/jd/cust/login.jsp' target='_blank'>用户名</a>&nbsp;&nbsp;"
					+"<a href='/jd/cust/register.jsp' target='_blank'>免费注册</a>"
				}
				$("#sessions").html(html);
				
				$(".button").click(function(){
				var searchname = $("#key").val();
			
// 				$("#fff").click(function(){
// 				var searchname = $(".text").val();
					location.href = "/jd/classController/searchByName.do?proname="+searchname;
				});
			})
			
			
		</script>
</head>
<body>
<div class="mod_container" id="app">
			<div>
				<div class="joytop" style="background-color: rgb(212,2,13);">
					<div class="grid_c1 joytop_inner">
						<a style="background-image:url(/jd/cust/common/img/jdtop.png) ;"><img alt="top" src="/jd/cust/common/img/jdtop.png"></a>
					</div>
				</div>
			</div>
			<div id="shortcut-2018">
				<div class="w">
					<ul class="f1">
						<li id="ttbar-home">
							<i class="layui-icon layui-icon-home"></i>
							<a href="/jd/cust/webpage/homepage.jsp" target="_blank">商城首页</a>
						</li>
						<li id="ttbar-mycity">
							<div class="cw-icon">
								<i class="layui-icon layui-icon-location"></i>
								<span class="ui-arear-text">北京</span>
							</div>
						</li>
					</ul>
					<ul class="fr">
						<li id="ttbar-login">
							<div id = "sessions" class="dt cw-icon">
								
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore2">
							<div class="dt">
								<a href="/jd/orderwebController/showOrder.do"" target="_blank">我的订单</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore3">
							<div class="dt">
								<a href="#" target="_blank">我的京东</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore4">
							<div class="dt">
								<a href="#" target="_blank">京东会员</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore5">
							<div class="dt">
								<a href="#" target="_blank">企业采购</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore2">
							<div class="dt">
								<a href="#" target="_blank">客户服务</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore2">
							<div class="dt">
								<a href="#" target="_blank">网站导航</a>
							</div>
						</li>
						<li class="spacer">|</li>
						<li class="fore2">
							<div class="dt">
								<a href="#" target="_blank">手机京东 </a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="w" style="background-color:;">
				<div id="logo-2018">
					<a href="/jd/cust/webpage/homepage.jsp" class="logo">京东</a>
				</div>
				<div id="search-2018">
					<ul id="shelper" class="hide" style="display: none;"></ul>
					<div class="form">
						<input type="text" autocomplete="off" id="key" accesskey="s" class="text" />
						<button class="button cw-icon"><i style="font-size: 30px;" class="layui-icon layui-icon-search" ></i></button>
					</div>
				</div>
				<div id="settleup-2018" class="dorpdown">
					<div class="cw-icon">

						<i class="ci-left"></i>

						<i class="ci-right">></i>
						<i class="ci-count" id="shopping-amount">${totals}</i>
						<a href="/jd/classController/cart.do" target="_blank">我的购物车</a>
					</div>
					<div class="dorpdown-layer"></div>
				</div>
				<div id="hotwords">
					<a href="#none" target="_blank">手机5折</a>
					<a href="#none" target="_blank">满减优惠</a>
					<a href="#none" target="_blank">5折家电</a>
					<a href="#none" target="_blank">8.8折券</a>
					<a href="#none" target="_blank">每400-50</a>
					<a href="#none" target="_blank">299-150</a>
					<a href="#none" target="_blank">直降百元</a>
					<a href="#none" target="_blank">旅游出行</a>
				</div>
				<span class="clr"></span>
			</div>
			<div id="nav-2018">
				<div class="w">
					<div class="w-spacer"></div>
					<div id="navitems-2018" style="padding-left: 190px;">
						<ul id="navitems-group1">
							<li class="fore1">
								<a class="b" href="#none">秒杀</a>
							</li>
							<li class="fore2">
								<a class="b" href="#none">优惠券</a>
							</li>
							<li class="fore3">
								<a class="b" href="#none">PLUS会员</a>
							</li>
							<li class="fore4">
								<a class="b" href="#none">闪购</a>
							</li>
						</ul>
						<div class="spacer"></div>
						<ul id="navitems-group2">
							<li class="fore1">
								<a class="b" href="#none">拍卖</a>
							</li>
							<li class="fore2">
								<a class="b" href="#none">京东时尚</a>
							</li>
							<li class="fore3">
								<a class="b" href="#none">京东超市</a>
							</li>
							<li class="fore4">
								<a class="b" href="#none">京东生鲜</a>
							</li>
						</ul>
						<div class="spacer"></div>
						<ul id="navitems-group3">
							<li class="fore1">
								<a class="b" href="#none">全球购</a>
							</li>
							<li class="fore2">
								<a class="b" href="#none">京东金融</a>
							</li>

						</ul>
					</div>
				</div>
			</div>
		<div class="fs" style="z-index: 9;">
			
			<div class="grid_c1 fs_inner">
				<div class="fs_col1">
					<div id = "J_cate" class="cate J_cate cate18">
						<ul class="JS_navCtn cate_menu">
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">家用电器</a>
							</li>
							<c:forEach items = "${listf}" var = "fir">
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">${fir.classname }</a>
								
<!-- 								<span class="cate_menu_line">/</span> -->
<%-- 								<a target="_blank" class="cate_menu_lk">${fir.scode}</a> --%>
<!-- 								<span class="cate_menu_line">/</span> -->
<!-- 								<a target="_blank" class="cate_menu_lk">数码</a> -->
							</li>
							</c:forEach>
							
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">电脑</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">办公</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">家具</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">家居</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">家装</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">厨具</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">男装</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">女装</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">童装</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">内衣</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">美妆</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">个护清洁</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">宠物</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">女鞋</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">箱包</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">钟表</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">珠宝</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">男鞋</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">运动</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">户外</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">房产</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">汽车</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">汽车用品</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">母婴</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">玩具乐器</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">食品</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">酒类</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">生鲜</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">特产</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">艺术</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">礼品鲜花</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">农资绿植</a>
								
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">医药</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">保健</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">计生</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">图书</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">文娱</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">电子书</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">机票</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">酒店</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">旅游</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">生活</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">理财</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">众筹</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">保险</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">白条</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">安装</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">维修</a>
								<span class="cate_menu_line">/</span>
								<a target="_blank" class="cate_menu_lk">清洗保养</a>
							</li>
							<li class="cate_menu_item" >
								<a target="_blank" class="cate_menu_lk">工业品</a>
							</li>
						</ul>
					<div id="J_popCtn" class="JS_popCtn cate_pop" style="top: 0px;display: none;">
						<div class="cate_part clearfix" id="cate_item1" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
											<a href="https://jiadian.jd.com/" class="cate_channel_lk" target="_blank">家电馆<i class="iconfont cate_channel_arrow"></i></a>
											<a href="https://xzzmd.jd.com/" class="cate_channel_lk"  target="_blank">乡镇专卖店<i class="iconfont cate_channel_arrow"></i></a>
											<a href="https://sale.jd.com/act/xX0wHto8F7a2j.html" class="cate_channel_lk" target="_blank">家电服务<i class="iconfont cate_channel_arrow"></i></a>
											<a href="https://jdqc.jd.com/" class="cate_channel_lk"  target="_blank">家电企业购<i class="iconfont cate_channel_arrow"></i></a>
											<a href="https://coll.jd.com/list.html?sub=21445" class="cate_channel_lk" target="_blank">商用电器<i class="iconfont cate_channel_arrow"></i></a>
								</div>
							</div>
						</div>
								<c:forEach items="${listf}" var="first">
						<div class="cate_part clearfix" id="cate_item2" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
								<c:forEach items="${lists}" var="sec">
								    <c:if test="${sec.parentcode==first.scode}">
									<a target="blank" href="/jd/classController/searchByName.do?proclass2=${sec.scode}"> ${sec.classname}</a>
									</c:if>
								</c:forEach>
								</div>
							</div>
						</div>
								</c:forEach>
						<div class="cate_part clearfix" id="cate_item3"  style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 电器</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item4" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#">家装</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item5" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 羽绒服</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item6" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 口红</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item7" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 手拉箱</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item8" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 运动鞋</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item9" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 法拉利</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item10" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 奶粉</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item11" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 剑南春</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item12" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 玫瑰</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item13"  style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 药品</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item14" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> java编程思想</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item15" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 飞机</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item16"  style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 炒股</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item17" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 安装</a>
								</div>
							</div>
						</div>
						<div class="cate_part clearfix" id="cate_item18" style="display: none;" >
							<div class="cate_part_col1">
								<div class="cate_channel">
									<a target="_blank" href="#"> 调客</a>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
				<div class="fs_col2">
					<div id = "J_focus" class="J_focus focus">
						<div class="J_focus_main focus_main">
							<div class="slider focus_list J_focus_list">
								<button class="slider_control slider_control_prev">
									<i class="layui-icon layui-icon-left"></i>
								</button>
								<div class="slider_list">
									<div class="slider_wrapper" style="opacity: 1;width: 590px; transform: translate3d(0px,0px,0px);">
										<ul>
										<li class="slider_item focus_item" style="">
											<img alt="action" src="/jd/cust/common/img/huo.jpg"/>
										</li>
										<li class="slider_item focus_item"  style="">
											<img alt="action" src="/jd/cust/common/img/ipad.jpg"/>
										</li>
										<li class="slider_item focus_item" style="">
											<img alt="action" src="/jd/cust/common/img/kuang.jpg"/>
										</li>
										<li class="slider_item focus_item" style="">
											<img alt="action" src="/jd/cust/common/img/shang.jpg"/>
										</li>
										<li class="slider_item focus_item" style="">
											<img alt="action" src="/jd/cust/common/img/yan.jpg"/>
										</li>
										<li class="slider_item focus_item" style="">
											<img alt="action" src="/jd/cust/common/img/yue.jpg"/>
										</li>
										</ul>
									</div>
								</div>
								<button class="slider_control slider_control_next">
									<i class="layui-icon layui-icon-right"></i>
								</button>
								<div class="slider_indicators" style="margin-left: -76px;">
									<i class="slider_indicators_btn" ></i>
									<i class="slider_indicators_btn" ></i>
									<i class="slider_indicators_btn" ></i>
									<i class="slider_indicators_btn" ></i>
									<i class="slider_indicators_btn" ></i>
									<i class="slider_indicators_btn" ></i>
								</div>
							</div>
								
						</div>
					</div>
				</div>
				<div class="fs_col3">
						<div id="J_rec" class="J_rec rec">
							<div class="rec_inner">
								<div class="rec_item">
									<a class="rec_lk mod_loading" href="" target="_blank" >
										<img src="/jd/cust/common/img/DY8.png">
									</a>
								</div>
								<div class="rec_item">
									<a class="rec_lk mod_loading" href="" target="_blank" >
										<img src="/jd/cust/common/img/H41OP.jpg" class="lazyimg_img">
									</a>
								</div>
								<div class="rec_item">
									<a class="rec_lk mod_loading" href="" target="_blank" >
										<img src="/jd/cust/common/img/NH3V.jpg" class="lazyimg_img">
									</a>
								</div>
							</div>
						</div>
					</div>
				<div id="J_fs_col4" class="fs_col4">
					<div class="user_inner userlevel1 user_plus0">
						<div class="user_show">
							<p>Hi &nbsp; <a id = "sename">${sessionScope.cust.account}</a></p>
							<p><a href="/jd/cust/login.jsp" class="user_log">登录</a><a href="/jd/cust/register.jsp"  class="user_reg">注册</a></p>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
		</div>
		<script type="text/javascript">
 		$().ready(function(){
 			
 			
//  		if(!window.name){
// 			function init(){
// 			window.onload = "/jd/classController/searchClass.do";
// 		}
//  		}
// 		$.ajax({
// 			url:'/jd/classController/searchClass.do',
// 			data:{},
// 			dataType:'text',
// 			type:'post',
// 			success:function(data){
//  				window.location.href = "/jd/classController/searchClass.do";
// 				location.reload();
// 			}
				
// 		})
		
		
		})
		
		</script>
</body>
</html>