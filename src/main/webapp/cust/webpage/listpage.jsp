<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
<link rel="stylesheet" href="/jd/cust/common/layui/css/layui.css" />
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript" src="/jd/cust/common/layui/layui.all.js"></script>
		<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="/jd/cust/common/js/common.js"></script>
<style>
			body {
				font: 12px/150% tahoma, arial, Microsoft YaHei, Hiragino Sans GB, "\u5b8b\u4f53", sans-serif;
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
				width: 406px;
/* 				height: 24px; */
				line-height: 24px;
				color: #999;
				padding: 4px;
				margin-bottom: 4px;
				border-width: 2px 0 2px 2px;
				border-color: #F30213;
				border-style: solid;
				outline: 0;
				font-size: 12px;
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
				width: 80px;
				height: 36px;
				font-family: tahoma, arial, Microsoft YaHei, Hiragino Sans GB, "\u5b8b\u4f53", sans-serif;
				background: #f30213;
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
/* 				width: 75px; */
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
				position: relative;
    			left: 380px;
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
				border-bottom: 2px solid #f30213;
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
				border-top: 1px solid #DDD;
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
				padding: 0 22px;
				text-align: center;
				text-decoration: none;
				font-size: 14px;
				line-height: 33px;
				color: #333;
			}
			
			.selector {
				border-top: 1px solid #DDD;
				background: #FFF;
				margin-bottom: 10px;
			}
			
			.selector .s-line {
				width: auto;
				height: auto;
			}
			
			.selector .s-line:after {
				content: ' ';
				display: block;
				clear: both;
				height: 0;
				visibility: hidden;
			}
			
			.selector .sl-wrap {
				position: relative;
				line-height: 34px;
				border-bottom: 1px solid #DDD;
				background: #f3f3f3;
			}
			
			.selector .sl-key {
				float: left;
				width: 100px;
				padding-left: 10px;
				white-space: nowrap;
				overflow: hidden;
			}
			
			.selector .sl-value {
				margin-left: 110px;
				padding-right: 130px;
				padding-left: 10px;
				overflow: hidden;
				zoom: 1;
				background: #fff;
			}
			
			.selector .sl-v-list {
				overflow: hidden;
				zoom: 1;
				padding-top: 4px;
			}
			
			.selector .sl-v-list ul {
				float: left;
				overflow: hidden;
				zoom: 1;
				position: relative;
				height: 30px;
			}
			
			.selector .sl-v-list li {
				float: left;
				margin-right: 50px;
				margin-bottom: 4px;
				height: 26px;
				line-height: 26px;
			}
			
			.selector .sl-v-list li a {
				float: left;
				white-space: nowrap;
				zoom: 1;
				color: #005aa0;
			}
			
			.g-main2 {
				margin-bottom: 10px;
			}
			
			.g-main2 .m-list {
				float: right;
				width: 100%;
			}
			
			.g-main2 .m-list .ml-wrap {
				position: relative;
				padding-bottom: 30px;
			}
			
			.goods-list-v2 {
				margin-bottom: 20px;
				height: auto;
				position: relative;
				z-index: 1;
			}
			
			@media screen and (max-width: 1410px) and (min-width: 1230px) .goods-list-v2 .gl-warp {
				width: 1040px;
				margin-right: -20px;
			}
			
			.clearfix:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.goods-list-v2.gl-type-3 .gl-item {
				height: 466px;
			}
			
			@media screen and (max-width: 1410px) and (min-width: 1230px) .goods-list-v2 .gl-item {
				margin-right: 20px;
			}
			
			.goods-list-v2 .gl-item {
				width: 240px;
				float: left;
				position: relative;
				z-index: 1;
				margin-right: 40px;
				margin-top: 10px;
			}
			
			.goods-list-v2.gl-type-3 .gl-item .gl-i-wrap {
				padding: 12px 9px;
			}
			
			.goods-list-v2 .gl-item .gl-i-wrap {
				width: 220px;
				position: absolute;
				z-index: 1;
				left: 0;
				top: 0;
				background: #fff;
				border: 1px solid #fff;
				transition: border-color .1s ease;
			}
			
			.goods-list-v2.gl-type-3 .gl-item .p-img {
				margin-bottom: 5px;
			}
			
			.goods-list-v2 .gl-item .p-img {
				height: 220px;
				padding: 0;
				position: relative;
			}
			
			.p-detail,
			.p-img,
			.p-market,
			.p-name,
			.p-price {
				overflow: hidden;
			}
			
			.goods-list-v2 .gl-item .p-img a {
				display: block;
				position: relative;
				overflow: hidden;
			}
			
			img {
				border: 0;
				vertical-align: middle;
			}
			
			.goods-list-v2 .gl-item .p-scroll {
				position: relative;
				z-index: 2;
				padding: 0;
				margin-bottom: 10px;
			}
			
			.goods-list-v2 .gl-item .p-scroll .ps-prev {
				left: 2px;
				top: 0;
			}
			
			.goods-list-v2 .gl-item .p-scroll .ps-next,
			.goods-list-v2 .gl-item .p-scroll .ps-prev {
				display: none;
				position: absolute;
				width: 20px;
				height: 29px;
				line-height: 29px;
				text-align: center;
				color: #aaa;
				font-size: 16px;
				font-family: "\5b8b\4f53";
				cursor: pointer;
			}
			
			.goods-list-v2 .gl-item .p-scroll .ps-wrap {
				height: 29px;
				overflow: hidden;
				zoom: 1;
			}
			
			.goods-list-v2 .gl-item .p-scroll ul li {
				float: left;
				width: 34px;
				height: 29px;
				text-align: left;
			}
			
			.goods-list-v2 .gl-item .p-scroll ul li a.curr {
				padding: 0;
				border-width: 2px;
				border-color: #e4393c;
			}
			
			.goods-list-v2 .gl-item .p-scroll ul li a {
				cursor: default;
				display: inline-block;
				width: 25px;
				height: 25px;
				border: 1px solid #ddd;
			}
			
			.goods-list-v2 .gl-item .p-price {
				position: relative;
				line-height: 22px;
				height: 22px;
				overflow: hidden;
				width: 100%;
				margin: 0 0 8px;
			}
			
			.goods-list-v2 .gl-item .p-price strong {
				float: left;
				margin-right: 10px;
				color: #e4393c;
				font-size: 20px;
			}
			
			.p-price strong {
				font-weight: 400;
				font-family: Verdana;
			}
			
			.goods-list-v2 .gl-item .p-price strong em {
				font-size: 16px;
			}
			
			.goods-list-v2.gl-type-3 .gl-item .p-name-type-2 {
				height: 40px;
			}
			
			.goods-list-v2.gl-type-3 .gl-item .p-name {
				line-height: 20px;
			}
			
			.goods-list-v2 .gl-item .p-name {
				margin-bottom: 8px;
				overflow: hidden;
			}
		</style>
		

</head>
<body>
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
						<div class="dt cw-icon">
							<i class="layui-icon layui-icon-username"></i>
							<a href="#" target="_blank">${sessionScope.cust.account}</a>
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
		<div class="w">
			<div id="logo-2018">
				<a href="/jd/cust/webpage/homepage.jsp" class="logo">京东</a>
				<div class="extra">
					<div id="channel"></div>
					<div id="categorys-mini">
						<div class="cw-icon">
							<h2 style = "margin-top: 6px">
							<a href="#none" >全部分类</a>
						</h2>
						</div>
					</div>
				</div>
			</div>
			<div id="search-2018">
				<ul id="shelper" class="hide" style="display: none;"></ul>
				<div class="form">
					<input type="text" autocomplete="off" id="key" accesskey="s" class="text" />
					<button id = "fff" class="button">搜索</button>
				</div>
			</div>
			<div id="settleup-2018" class="dorpdown">
				<div class="cw-icon">

					<i class="ci-left"></i>

					<i class="ci-right">></i>
					<i class="ci-count" id="shopping-amount">1</i>
					<a href="/jd/classController/cart.do" target="_blank">我的购物车</a>
				</div>
				<div class="dorpdown-layer"></div>
			</div>
			<div id="hotwords">
				<a href="#none" target="_blank">游戏手机</a>
				<a href="#none" target="_blank">荣耀</a>
				<a href="#none" target="_blank">华为</a>
				<a href="#none" target="_blank">oppo</a>
				<a href="#none" target="_blank">vivo</a>
				<a href="#none" target="_blank">锤子手机</a>
				<a href="#none" target="_blank">360手机</a>
				<a href="#none" target="_blank">小米</a>
			</div>
			<span class="clr"></span>
		</div>
		<div id="nav-2018">
			<div class="w">
				<div class="w-spacer"></div>
				<div id="categorys-2018" class="dorpdown" style="height: auto;left: 0px;position: absolute;">
					<div class="dt">
						<a href="#none">全部商品分类</a>
					</div>
				</div>
				<div id="navitems-2018" style="padding-left: 190px;">
					<ul id="navitems-group1">
						<li class="fore1">
							<a class="b" href="#none">京东时尚</a>
						</li>
						<li class="fore2">
							<a class="b" href="#none">美妆馆</a>
						</li>
						<li class="fore3">
							<a class="b" href="#none">超市</a>
						</li>
						<li class="fore4">
							<a class="b" href="#none">生鲜</a>
						</li>
					</ul>
					<div class="spacer"></div>
					<ul id="navitems-group2">
						<li class="fore1">
							<a class="b" href="#none">全球购</a>
						</li>
						<li class="fore2">
							<a class="b" href="#none">闪购</a>
						</li>
						<li class="fore3">
							<a class="b" href="#none">拍卖</a>
						</li>
					</ul>
					<div class="spacer"></div>
					<ul id="navitems-group3">
						<li class="fore1">
							<a class="b" href="#none">金融</a>
						</li>

					</ul>
				</div>
			</div>
		</div>
		<div id="J_searchWrap" class="w">
			<div id="J_container" class="container">
				<div id="J_selector" class="selector">
					<div class="J_selectorLine s-line">
						<div class="sl-wrap">
							<div class="sl-key">
								<span>机身内存：</span>
							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
										<li>
											<a href="#none">512GB</a>
										</li>
										<li>
											<a href="#none">256GB</a>
										</li>
										<li>
											<a href="#none">128GB</a>
										</li>
										<li>
											<a href="#none">64GB</a>
										</li>
										<li>
											<a href="#none">32GB</a>
										</li>
										<li>
											<a href="#none">16GB</a>
										</li>
										<li>
											<a href="#none">8GB</a>
										</li>
										<li>
											<a href="#none">8GB以下</a>
										</li>
										<li>
											<a href="#none">支持内存卡</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="J_selectorLine s-line">
						<div class="sl-wrap">
							<div class="sl-key">
								<span>电池容量：</span>
							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
										<li>
											<a href="#none">1200mAh以下</a>
										</li>
										<li>
											<a href="#none">1200mAh-1999mAh</a>
										</li>
										<li>
											<a href="#none">2000mAh-2999mAh</a>
										</li>
										<li>
											<a href="#none">3000mAh-3999mAh</a>
										</li>
										<li>
											<a href="#none">4000mAh-5999mAh</a>
										</li>
										<li>
											<a href="#none">6000mAh以上</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="J_selectorLine s-line">
						<div class="sl-wrap">
							<div class="sl-key">
								<span>分辨率：</span>
							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
										<li>
											<a href="#none">高清HD</a>
										</li>
										<li>
											<a href="#none">全高清FHD</a>
										</li>
										<li>
											<a href="#none">超清FHD以上</a>
										</li>
										<li>
											<a href="#none">标清SD</a>
										</li>
										<li>
											<a href="#none">其他</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="J_main" class="g-main2">
					<div class="m-list">
						<div class="ml-wrap">
							<div id="J_goodsList" class="goods-list-v2 gl-type-3 J-goods-list">
								
								<ul class="gl-warp clearfix">
								
								<c:forEach items="${products }" var="products">
									<li class="gl-item">
										<div class="gl-i-wrap">
											<div class="p-img">
												<a href="/jd/classController/searchByCode.do?procode=${products.procode}"><img alt="vivo" src="/imge/${products.imgname }" style="height: 220px;width: 220px;"></a>
												<div></div>
											</div>
											<div class="p-scroll">
												<span class="ps-prev"><</span>
												<span class="ps-next">></span>
												<div class="ps-wrap">
													<ul class="ps-main">
														<li class="ps-item">
															<a class="curr" href="#none"><img alt="vivo" src="/imge/${products.imgname}" style="height: 29px;width: 29px;"></a>
														</li>
													</ul>
												</div>
											</div>
											<div class="p-price">
												<strong>
												<em>¥</em>
												<i>${products.price}</i>
											</strong>
											</div>
											<div class="p-name p-name-type-2">
												<a target="_blank">${products.proname} ${products.descr }</a>
											</div>
										</div>
									</li>
								</c:forEach>
								
								</ul>

							</div>
							<div class="page clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">
$().ready(function(){
	var key1 = '<%=request.getParameter("proname")%>';
	console.log(key1)
	$("#key").val(key1);
// 	$("button").click(function(){
// 		var searchname = $("#key").val();
			$("#fff").click(function(){
			var searchname = $(".text").val();
			location.href = "/jd/classController/searchByName.do?proname="+searchname;
		});
})
// 	$("#fff").click();
// 	init()
// 	function init(){
// 		$("#fff").click();
// 	}
</script>
</body>
</html>