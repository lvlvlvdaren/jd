<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>详情页</title>
<link rel="stylesheet" href="/jd/cust/common/layui/css/layui.css" />
<link rel="stylesheet" href="/jd/cust/common/js/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<script type="text/javascript" src="/jd/cust/common/js/jquery-3.3.1.js"></script>

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
				width: 446px;
/* 				height: 24px; */
				line-height: 24px;
				color: #666;
				padding: 4px;
				margin-bottom: 4px;
				border-width: 2px 0 2px 2px;
				border-color: #B61D1D;
				border-style: solid;
				outline: 0;
				font-size: 14px;
				font-family: "microsoft yahei";
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
				height: 36px;
				background: #B61D1D;
				border: none;
				border-radius: 0;
				color: #fff;
				cursor: pointer;
			}
			
			#search-2018 .button01 {
				background: #474e5c;
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
			position:relative;
			left:400px;
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
			
			.user-june .abs {
				position: absolute;
			}
			
			.user-june .nav {
				margin-left: -465px;
			}
			
			.user_zhijiang:hover {
				color: #fff;
			}
			
			.user_zhijiang {
				display: inline-block;
				width: 100px;
				height: 40px;
				color: #f81501;
				font-weight: bolder;
				font: 14px/40px '微软雅黑';
			}
			
			.user_vivo:hover {
				height: 40px;
				color: #fff!important;
				background: #0095da!important;
			}
			
			.sh-head-menu-922476 a {
				text-decoration: none;
			}
			
			.user_vivo {
				display: inline-block;
				width: 105px;
				height: 38px;
				line-height: 40px;
				color: #fff!important;
				font: 14px/40px '微软雅黑';
				text-decoration: none;
				letter-spacing: 0px;
				top: -1px;
				left: -3px;
			}
			
			.crumb-wrap {
				z-index: 5;
			}
			
			.crumb-wrap {
				background: #f2f2f2;
				clear: both;
			}
			
			.crumb-wrap {
				position: relative;
				z-index: 5;
			}
			
			.crumb-wrap .w {
				width: 1210px;
				margin: 0 auto;
			}
			
			.crumb {
				padding: 13px 0 9px;
			}
			
			.crumb {
				position: relative;
				z-index: 5;
			}
			
			.fl {
				float: left;
			}
			
			.clearfix:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.crumb .item {
				float: left;
			}
			
			.product-intro {
				position: relative;
				margin-top: 10px;
				margin-bottom: 10px;
			}
			
			.clearfix:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.product-intro .preview-wrap {
				width: 452px;
				float: left;
				padding-bottom: 15px;
			}
			
			.preview .jqzoom {
				position: relative;
				padding: 0;
			}
			
			.preview .main-img {
				border: 1px solid #eee;
				margin-bottom: 20px;
			}
			
			img {
				border: 0;
				vertical-align: middle;
				width: 450px;
			}
			
			.product-intro .itemInfo-wrap {
				width: 738px;
				float: right;
			}
			
			.itemInfo-wrap .sku-name {
				font: 700 16px Arial, "microsoft yahei";
				color: #666;
				padding-top: 10px;
				line-height: 28px;
				margin-bottom: 5px;
			}
			
			.itemInfo-wrap .summary {
				position: relative;
				padding-bottom: 5px;
			}
			
			.itemInfo-wrap .summary-price-wrap {
				padding: 10px 0 0;
				background: #f3f3f3;
			}
			
			.itemInfo-wrap .summary-price-wrap .summary-price {
				position: relative;
				margin-bottom: 5px;
			}
			
			.itemInfo-wrap .summary-price-wrap .summary-price .dt {
				line-height: 22px;
			}
			
			.itemInfo-wrap .dt {
				float: left;
				padding-left: 10px;
				font-family: simsun;
				color: #999;
			}
			
			.itemInfo-wrap .dd {
				margin-left: 70px;
			}
			
			.itemInfo-wrap .summary-price-wrap .summary-price .p-price {
				color: #E4393C;
				font-family: "microsoft yahei";
				margin-right: 10px;
			}
			
			.p-price {
				overflow: hidden;
			}
			
			.itemInfo-wrap .summary-price-wrap .summary-price .p-price .price {
				font-size: 22px;
				font-family: "microsoft yahei";
			}
			
			.p-price .price {
				color: #e4393c;
			}
			
			.lli {
				margin-bottom: 3px;
				line-height: 32px;
				display: block;
			}
			
			.lli:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.itemInfo-wrap .dt {
				float: left;
				padding-left: 10px;
				font-family: simsun;
				color: #999;
			}
			
			.itemInfo-wrap .dd {
				margin-left: 70px;
			}
			
			#choose-attr-1 {
				line-height: 40px;
			}
			
			.itemInfo-wrap .dt {
				float: left;
				padding-left: 10px;
				font-family: simsun;
				color: #999;
			}
			
			#choose-attr-1 .item {
				background-color: #F7F7F7;
			}
			
			.lli .item {
				float: left;
				color: #666;
				margin-right: 7px;
				margin-bottom: 4px;
			}
			
			.lli .item {
				position: relative;
			}
			
			#choose-attr-1 .item a {
				padding: 0;
			}
			
			.lli .item a {
				border: 1px solid #ccc;
				display: block;
				white-space: nowrap;
			}
			
			.choose-btns {
				margin-top: 10px;
				margin-bottom: 20px;
				padding: 0 10px;
			}
			
			.choose-btns .choose-amount {
				width: 58px;
				height: 44px;
				overflow: hidden;
				border: 1px solid #ccc;
				position: relative;
				margin-right: 10px;
				float: left;
			}
			
			.choose-btns .choose-amount input {
				display: block;
				width: 43px;
				height: 42px;
				line-height: 42px;
				position: absolute;
				top: 1px;
				left: 0;
				border: 0;
				text-align: center;
			}
			
			.choose-btns .choose-amount a.btn-reduce {
				bottom: -1px;
			}
			
			.choose-btns .choose-amount {
				color: #ccc;	
			}
			
			.choose-btns .choose-amount a {
				display: block;
				width: 15px;
				text-align: center;
				height: 22px;
				line-height: 22px;
				overflow: hidden;
				color: #666;
				background: #f1f1f1;
				position: absolute;
				right: -1px;
				border: 1px solid #ccc;
			}
			
			.choose-btns .choose-amount a.btn-add {
				top: -1px;
			}
			
			.choose-btns .btn-lg {
				margin-right: 10px;
				float: left;
			}
			
			.btn-lg {
				height: 46px;
				line-height: 46px;
				padding: 0 26px;
				font-size: 18px;
				font-family: "microsoft yahei";
			}
			
			.btn-special1,
			.btn-special2 {
				font-weight: 700;
			}
			
			.btn-special1 {
				background-color: #df3033;
				color: #fff;
			}
			
			.btn-special1,
			.btn-special2 {
				display: inline-block;
				text-align: center;
				vertical-align: middle;
				cursor: pointer;
			}
			
			.btn-special2 {
				background-color: #85c360;
				color: #fff;
			}
		</style>


</script>
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
							<a href="/jd/cust/login.jsp" target="_blank">${sessionScope.cust.account}</a>
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
							<h2 style="margin-top: 8px">
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
					<button class="button cw-icon">搜全站</button>
					<button type="button" class="button button01">搜本店</button>
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
		<div id="shop-head">
			<div class="J_layoutBg">
				<div class="J_LayoutWrap d-layout-wrap layout-auto  d-enable " id="127265105" prototypeid="20" area="" remark="" layout_name="insertLayout">
					<div class="d-layout-row d-clearfix">
						<div class="J_LayoutArea d-layout d-layout-auto">
							<div class="fn-clear  sh-head-menu-922476" style="margin-bottom:0px;;margin-bottom: 0px" origin="0">
								<div class="mc" style=";">
									<div style="height: 40px;overflow: hidden;">
										<div class="j-module">
											<div class="userDefinedArea" style="width: 990px; margin: 0px auto;">
												<div class="user-june" style="background:#000;height:40px;">
													<div class="nav abs" style="background:#000;width:1920px;height:40px;z-index:7;">
														<div class="jcb abs a1KGF-oQg3" style="left:480px;top:1px;width:105px;height:39px;text-align:center;overflow:hidden;z-index:1;">
															<a class="abs user_vivo" style="width:80px;" href="#none" target="_blank">首页</a>
														</div>
														<div class="jcb abs a1KGF-jygv" style="text-align:center;width:105px;height:39px;top:1px;left:610px;z-index:2;">
															<a class="abs user_vivo " style="color:#ed145b;margin-left:-35px;" href="#none" target="_blank"><span class="user_zhijiang ">Z3 火爆抢购</span></a>
														</div>
														<div class="jcb abs a1KGF-jygv" data-appid="a1KGF-jygv" style="text-align:center;width:105px;height:39px;top:1px;left:750px;z-index:2;">
															<a class="abs user_vivo " style="color:#f60539;margin-left:-35px;" href="#none" target="_blank">X23 星芒版上市</a>
														</div>
														<div class="jcb abs a1KGF-jygv" data-appid="a1KGF-jygv" style="text-align:center;width:105px;height:39px;top:1px;left:860px;z-index:2;">
															<a class="abs user_vivo " style="color:#0095da;" href="#none" target="_blank">NEX直降400</a>

														</div>
														<div class="jcb abs a1KGF-VrPy" data-appid="a1KGF-VrPy" style="text-align:center;width:105px;height:39px;top:1px;left:760px;z-index:1;">
															<a class="abs user_vivo" style="color:#f60539;margin-left:230px;" href="#none" target="_blank">Z1 直降100</a>

														</div>
														<div class="jcb abs a1KGF-jygv" data-appid="a1KGF-jygv" style="text-align:center;width:105px;height:39px;top:1px;left:1110px;z-index:2;">
															<a class="abs user_vivo" href="#none" target="_blank"><span>X21 优惠300</span></a>
														</div>
														<div class="jcb abs a1KGF-5ljv" data-appid="a1KGF-5ljv" style="text-align:center;width:105px;height:39px;top:1px;left:1220px;z-index:2;">
															<a class="abs user_vivo" href="#none" style="margin-left:0px;" clstag="pageclick|keycount|shop_link_79015066_11|1000004123">Y 系列</a>
														</div>
														<div class="jcb abs a1KGF-5ljv" style="left:1330px;top:1px;width:105px;height:39px;text-align:center;z-index:2;" data-appid="a1KGF-5ljv">
															<a class="abs user_vivo" href="#none">品牌服务</a>
														</div>
														<div class="jcb abs a1KGF-5ljv" style="left:1450px;top:1px;width:105px;height:39px;text-align:center;z-index:2;" data-appid="a1KGF-5ljv">
															<a class="abs user_vivo" href="#none" target="_blank">活动名单公示</a>
														</div>
														<div class="jcb abs a1KGF-MU1x" style="left:365px;top:1px;width:105px;height:39px;text-align:center;z-index:2;" data-appid="a1KGF-MU1x">
															<a class="abs user_vivo" href="#none">全部分类</a>
															<div class="pop" style="margin-left:-2px;">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="crumb-wrap" id="crumb-wrap">
			<div class="w">
				<div class="crumb fl clearfix">
					<div class="item first">
						<a href="#none">手机</a>
					</div>
					<div class="item sep">&gt;</div>
					<div class="item">
						<a href="#none">手机同讯</a>
					</div>
					<div class="item sep">&gt;</div>
					<div class="item">
						<a href="#none">手机</a>
					</div>
					<div class="item sep">&gt;</div>
					<div class="item">
						<div class="J-crumb-br crumb-br EDropdown">
							<div class="inner border">
								<div class="head" data-drop="head">
									<a href="#none">vivo</a>
									<span class="arrow arr-close"></span>
								</div>

							</div>
						</div>
					</div>
					<div class="item sep">&gt;</div>
					<div class="item ellipsis" title="vivoX23">vivoX23</div>
				</div>
				<!-- .crumb -->
				<div class="contact fr clearfix">
				</div>
				<!-- .contact -->

				<div class="clr"></div>
			</div>
		</div>
		
		<div class="w">
			<div class="product-intro clearfix">
				<div class="preview-wrap">
					<div class="priview" id="priview">
<%-- 						<c:forEach items="p" var = "pro"> --%>
						<div id="spec-n1" class="jqzoom main-img" data-code = ${p.procode }>
							<a><img alt="vivo X23星芒版" src="/imge/${p.imgname}" /> </a>
						</div>
<%-- 						</c:forEach> --%>
					</div>
				</div>
				<div class="itemInfo-wrap">
					<div class="sku-name">
						星芒版 ${p.descr} 水滴屏全面屏 游戏手机 移动联通电信全网通4G手机 双卡双待
					</div>
					<div class="summary summary-first">
						<div class="summary-price-wrap">
							<div class="summary-price J-summary-price">
								<div class="dt">京东价</div>
								<div class="dd">
									<span class="p-price">
								<span>￥</span>
									<span class="price">${p.price}</span>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="summary p-choose-wrap">
						<div id="summary-weight" class="lli">
							<div class="dt">重 量</div>
							<div class="dd">0.54kg</div>
							<div class="summary-line"></div>
						</div>
						<div id="choose-attrs">
							<div id="choose-attr-1" class="lli p-choose">
								<div class="dt">选择颜色</div>
								<div class="dd">
									<div class="item">
										<a href="#none">魅影紫</a>
									</div>
									<div class="item">
										<a href="#none">幻夜蓝</a>
									</div>
									<div class="item">
										<a href="#none">幻影红</a>
									</div>
									<div class="item selected">
										<a href="#none">星芒</a>
									</div>
								</div>
							</div>
							<div id="choose-attr-3" class="lli p-choose">
								<div class="dt">选择版本</div>
								<div class="dd">
									<div class="item selected">
										<a href="#none">官方标配</a>
									</div>
									<div class="item">
										<a href="#none">保险套装</a>
									</div>
								</div>
							</div>
						</div>
						<div id="choose-btns" class="choose-btns clearfix">
							<div class="choose-amount" style="visibility: visible;margin-right: 10px;">
								<div class="wrap-input">
									<input type="text" class="text buy-num" id="buy-num" value="1" />
									<a class="btn-reduce disabled" href="#none">-</a>
									<a class="btn-add " href="#none">+</a>
								</div>
							</div>
							<a href="#none" id="InitCartUrl" class="btn-special1 btn-lg">加入购物车</a>
							<a href="#none" id="onkeybuy" class="btn-special2 btn-lg">一键购</a>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
	<script type="text/javascript">
	
	$(function(){
		$("#InitCartUrl").click(function(){
			var price = $(".price").html();
			var count = $("#buy-num").val();
			var procode = $("#spec-n1").data("code");
			window.location.href = 
				"/jd/classController/addCart.do?product.price="+price+"&count="+count+"&product.procode="+procode;
		});
	}); 
</script>
<script type="text/javascript">
$(".btn-add").click(function(){
	var buynum = parseInt($("#buy-num").val());
		if(buynum<99){
			buynum++;
		}
		$("#buy-num").val(buynum);
	})
	$(".btn-reduce").click(function(){
		var buynum =parseInt( $("#buy-num").val());
		buynum--;
		if(buynum<1){
			buynum=1;
		}
		$("#buy-num").val(buynum);
		if(parseInt($("#buy-num").val())==1){
		}
	})

	$("#buy-num").keyup(function(){
		setTimeout(setnum(),1000);
	})
	function setnum(){
		if(parseInt($("#buy-num").val())<1||parseInt($("#buy-num").val())>99){
			$("#buy-num").val(1);
		}
	}
</script>

</body>
</html>