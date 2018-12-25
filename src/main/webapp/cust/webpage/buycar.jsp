<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
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
				width: 990px;
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
				float: left;
				position: relative;
				width: 277px;
				padding: 0;
				height: 50px;
				margin: 15px 0 22px;
			}
			
			.clearfix:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			#logo-2018 .link2 {
				width: 100px;
				height: 40px;
				font-size: 30px;
			}
			
			b {
				font-weight: 100;
				font-size: 20px;
				font-style: inherit;
			}
			
			.cart-search {
				float: right;
				border: 2px solid #c91623;
				background: #c91623;
				height: 24px;
				margin-top: 30px;
				overflow: hidden;
			}
			
			.cart-search .itxt {
				border: 0;
				height: 18px;
				line-height: 18px;
				width: 260px;
				padding: 3px 5px;
				outline: 0;
			}
			
			.form .itxt {
				float: none;
			}
			
			input {
				text-rendering: auto;
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
			
			.cart-search .button {
				display: inline-block;
				vertical-align: top;
				width: 48px;
/* 				height: 24px; */
				background: #c91623;
				text-align: center;
				color: #fff;
				font-weight: 700;
				-webkit-appearance: none;
			}
			
			.button {
				margin: 0;
				padding: 0;
				border: 0;
				cursor: pointer;
			}
			
			.cart-filter-bar {
				margin-top: 20px;
				position: relative;
				height: 37px;
			}
			
			.switch-cart {
				position: relative;
				float: left;
				height: 26px;
				overflow: hidden;
			}
			
			.switch-cart li {
				position: relative;
				float: left;
				font-weight: 700;
				font-size: 16px;
				height: 26px;
				line-height: 26px;
				text-align: center;
				padding: 0 0 10px;
				cursor: pointer;
				margin: 5px 30px 0 0;
			}
			
			.cart-filter-bar .cart-store {
				float: right;
			}
			
			.cart-store {
				position: relative;
				display: block;
				margin-bottom: 10px;
				padding-left: 122px;
			}
			
			.cart-store .label {
				float: left;
				line-height: 26px;
			}
			
			#jdarea {
				position: relative;
				float: left;
				height: 26px;
				cursor: default;
				margin: 0;
			}
			
			.ui-area-wrap .ui-area-text-wrap {
				float: left;
				position: relative;
				top: 0;
				height: 23px;
				background: #fff;
				border: 1px solid #CECBCE;
				padding: 0 24px 0 4px;
				line-height: 23px;
				overflow: hidden;
			}
			
			.curr span {
				color: #e4393c;
			}
			
			.cart-warp {
				background: #fff;
				margin-bottom: 20px;
			}
			
			.cart-main .cart-thead {
				display: block;
				height: 32px;
				line-height: 32px;
				margin: 0 0 10px;
				padding: 5px 0;
				background: #f3f3f3;
				border: 1px solid #e9e9e9;
				border-top: 0;
				position: relative;
			}
			
			.cart-main .cart-thead:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.cart-main .cart-thead .t-checkbox {
				height: 18px;
				line-height: 18px;
				padding-top: 7px;
				width: 122px;
				padding-left: 11px;
			}
			
			.cart-main .cart-thead .column {
				float: left;
			}
			
			.cart-main-new .cart-thead .t-goods {
				width: 208px;
			}
			
			.cart-main-new .cart-thead .t-props {
				width: 140px;
			}
			
			.cart-main .cart-thead .t-props {
				height: 32px;
				padding: 0 10px 0 20px;
			}
			
			.cart-main .cart-thead .t-price {
				width: 120px;
				padding-right: 40px;
				text-align: right;
			}
			
			.cart-main .cart-thead .t-quantity {
				width: 80px;
				text-align: center;
			}
			
			.cart-main .cart-thead .t-sum {
				width: 100px;
				padding-right: 40px;
				text-align: right;
			}
			
			.cart-main .cart-thead .t-action {
				width: 75px;
			}
			
			.cart-item-list {
				margin-bottom: 20px;
			}
			
			.cart-tbody {
				font-family: "Microsoft YaHei", SimSun, verdana;
			}
			
			.item-list {
				border-style: solid;
				border-width: 2px 1px 1px;
				border-color: #aaa #f1f1f1 #f1f1f1;
				background: #fff;
			}
			
			.cart-tbody .item-selected {
				background: #fff4e8;
			}
			
			.cart-tbody .item-item {
				position: relative;
				padding: 0 0 1px 40px;
				line-height: 20px;
			}
			
			.cart-tbody .item-item .item-form {
				display: block;
			}
			
			.cart-tbody .item-item .item-form:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.cart-tbody .item-item .p-checkbox {
				position: absolute;
				z-index: 3;
				left: 10px;
				top: 0;
				width: 30px;
				min-height: 10px;
			}
			
			.cart-tbody .item-item .cell {
				float: left;
				padding: 15px 0 10px;
			}
			
			.cart-checkbox {
				position: relative;
				z-index: 3;
				float: left;
				margin-right: 5px;
			}
			
			.cart-main .jdcheckbox {
				float: none;
				position: relative;
				z-index: 5;
				vertical-align: middle;
				margin: 0 3px 0 0;
				padding: 0;
			}
			
			.cart-main-new .cart-tbody .item-item .p-goods {
				width: 300px;
			}
			
			.cart-tbody .item-item .cell {
				float: left;
				padding: 15px 0 10px;
			}
			
			.cart-tbody .item-item .goods-item {
				display: block;
			}
			
			.cart-tbody .item-item .goods-item:after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}
			
			.cart-tbody .item-item .goods-item .p-img {
				float: left;
				width: 80px;
				height: 80px;
				border: 1px solid #eee;
				margin-right: 10px;
				background: #fff;
				padding: 0;
				text-align: center;
				overflow: hidden;
			}
			
			.cart-tbody .item-item .goods-item .p-name {
				height: 40px;
				line-height: 20px;
				overflow: hidden;
			}
			
			.cart-main-new .cart-tbody .item-item .p-props,
			.cart-main-new .cart-tbody .item-item .p-props-new {
				width: 130px;
				padding-right: 0;
			}
			
			.cart-tbody .item-item .p-props-new {
				line-height: 20px;
				overflow: hidden;
				padding: 15px 0 0 20px;
			}
			
			.cart-tbody .item-item .p-props-new .props-txt {
				width: 130px;
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
				cursor: default;
			}
			
			.cart-tbody .item-item .p-price-new {
				width: 150px;
			}
			
			.cart-tbody .item-item .p-price {
				padding-right: 40px;
				font-family: verdana;
				text-align: right;
			}
			
			.p-price {
				overflow: hidden;
			}
			
			.cart-tbody .item-item .p-price {
				font-family: verdana;
				text-align: right;
			}
			
			.clr {
				display: block;
				overflow: hidden;
				clear: both;
				height: 0;
				line-height: 0;
				font-size: 0;
			}
			
			.mt5 {
				margin-top: 5px;
			}
			
			.cart-tbody .item-item .p-price-new .pro-tiny-tip {
				color: #e4393c;
				border: 1px solid #f9d2d3;
				padding: 1px 2px;
				cursor: pointer;
			}
			
			.cart-tbody .item-item .p-quantity {
				width: 80px;
			}
			
			.cart-tbody .item-item .p-quantity .quantity-form {
				position: relative;
				overflow: hidden;
				height: 22px;
				width: 80px;
			}
			
			.cart-tbody .item-item .p-quantity .decrement.disabled,
			.cart-tbody .item-item .p-quantity .increment.disabled {
				cursor: default;
				color: #e9e9e9;
			}
			
			.cart-tbody .item-item .p-quantity .decrement {
				float: left;
			}
			
			.cart-tbody .item-item .p-quantity .decrement,
			.cart-tbody .item-item .p-quantity .increment {
				border: 1px solid #cacbcb;
				border-right: 0;
				height: 18px;
				line-height: 18px;
				padding: 1px 0;
				width: 16px;
				text-align: center;
				margin: 0;
				background: #fff;
			}
			
			.cart-tbody .item-item .p-quantity .itxt {
				position: absolute;
				left: 17px;
				top: 0;
				border: 1px solid #cacbcb;
				width: 42px;
				height: 18px;
				line-height: 18px;
				text-align: center;
				padding: 1px;
				margin: 0;
				font-size: 12px;
				font-family: verdana;
				color: #333;
				-webkit-appearance: none;
			}
			
			.cart-tbody .item-item .p-quantity .increment {
				float: right;
				border: 1px solid #cacbcb;
				border-left: 0;
				color: #666;
			}
			
			.cart-tbody .item-item .p-quantity .quantity-txt {
				position: relative;
			}
			
			.ftx-03,
			.ftx03,
			.gray,
			.grey {
				color: #aaa;
			}
			
			.ac {
				text-align: center;
			}
			
			.cart-tbody .item-item .p-sum {
				width: 100px;
				padding-right: 40px;
				text-align: right;
				font-family: verdana;
			}
			
			.cart-tbody .item-item .p-sum strong {
				color: #333;
				font-weight: 700;
				display: block;
			}
			
			.cart-tbody .item-item .p-ops {
				width: 75px;
			}
			
			.cart-tbody .item-item .p-ops a {
				color: #666;
				display: block;
			}
			
			.cart-tbody .item-extra {
				position: relative;
			}
			
			.mb10 {
				margin-bottom: 10px;
			}
			
			.cart-tbody .item-item .gift-items-new {
				padding-bottom: 0;
			}
			
			.cart-tbody .item-item .gift-items {
				color: #999;
			}
			
			.cart-tbody .item-item .gift-items .gift-item {
				display: block;
				height: 20px;
				line-height: 20px;
			}
			
			.cart-tbody .item-item .gift-items .gift-item a.gift-info {
				float: left;
				color: #999;
				width: 310px;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
			}
			
			.cart-tbody .item-item .gift-items .gift-item a.gift-info+span.num {
				float: left;
			}
			
			.cart-tbody .item-item .gift-items .gift-item .num {
				margin: 0 5px;
			}
			
			.cart-tbody .item-item .gift-items .gift-item .gift-stock-state {
				float: left;
				color: #e4393c;
				padding: 0 10px 0 5px;
			}
			
			.cart-tbody .item-item .gift-items .gift-item .gift-price {
				margin-left: 10px;
				color: #333;
			}
			
			#cart-floatbar {
				position: relative;
			}
			
			.cart-toolbar {
				border: 1px solid #f0f0f0;
				background: #fff;
				position: relative;
			}
			
			.toolbar-wrap {
				position: relative;
				width: 988px;
				margin: 0 auto;
			}
			
			.toolbar-wrap .selected-item-list {
				position: absolute;
				z-index: 10;
				top: -122px;
				left: 0;
				height: 122px;
			}
			
			.toolbar-wrap .options-box {
				position: relative;
				height: 50px;
			}
			
			.toolbar-wrap .select-all {
				float: left;
				height: 18px;
				line-height: 18px;
				padding: 16px 0 16px 9px;
				white-space: nowrap;
			}
			
			.toolbar-wrap .operation {
				float: left;
				height: 50px;
				width: 310px;
				line-height: 50px;
			}
			
			.toolbar-wrap .operation a {
				float: left;
				margin-left: 10px;
				color: #666;
			}
			
			.toolbar-wrap .operation .cleaner-opt {
				font-weight: 700;
				position: relative;
			}
			
			.toolbar-wrap .toolbar-right {
				position: absolute;
				height: 52px;
				right: 0;
				top: -1px;
				width: 610px;
			}
			
			.toolbar-wrap .toolbar-right .normal {
				height: 52px;
			}
			
			.toolbar-wrap .toolbar-right .normal .comm-right {
				float: right;
				width: 650px;
			}
			
			.toolbar-wrap .btn-area {
				float: right;
			}
			
			.toolbar-wrap .btn-area .submit-btn {
				display: block;
				position: relative;
				width: 96px;
				height: 52px;
				line-height: 52px;
				color: #fff;
				text-align: center;
				font-size: 18px;
				font-family: "Microsoft YaHei";
				background: #e54346;
				overflow: hidden;
			}
			
			.toolbar-wrap .price-sum {
				float: right;
				height: 43px;
				line-height: 20px;
				margin: 7px 20px 0 10px;
				color: #666;
				width: auto;
				position: relative;
			}
			
			.toolbar-wrap .price-sum div {
				white-space: nowrap;
			}
			
			.toolbar-wrap .price-sum .txt-new {
				width: 50px;
			}
			
			.toolbar-wrap .price-sum .txt {
				float: left;
				text-align: right;
				color: #999;
			}
			
			.toolbar-wrap .price-sum .price {
				display: inline-block;
				text-align: right;
				font-family: verdana;
			}
			
			.toolbar-wrap .price-sum .price {
				font-size: 16px;
				color: #e4393c;
				font-weight: 700;
			}
			
			.toolbar-wrap .price-sum .txt {
				float: left;
				width: 50px;
				text-align: right;
				color: #999;
			}
			
			.toolbar-wrap .price-sum .price {
				display: inline-block;
				text-align: right;
				font-family: verdana;
			}
			.amount-sum {
    float: right;
    color: #999;
    height: 44px;
    line-height: 20px;
    margin: 7px 0 0;
    cursor: pointer;
}
.nums {
    color: #E2231A;
    font-family: verdana;
    font-weight: 700;
    margin: 0 3px;
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
							<a href="#" target="_blank">${user}</a>
						</div>
					</li>
					<li class="spacer">|</li>
					<li class="fore2">
						<div class="dt">
							<a href="/jd/orderwebController/showOrder.do" target="_blank">我的订单</a>
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
		<div class="w w1 header clearfix">
			<div id="logo-2018">
				<a href="/jd/cust/webpage/homepage.jsp class="link2">京东</a>
				<a href="#none"><b>购物车</b></a>
			</div>
			<div class="cart-search">
				<div class="form">
					<input class="itxt" type="text" style="color: rgb(153,153,153);" placeholder="自营" />
					<input type="button" class="button" value="搜索" onclick="javascript:void(0);" />
				</div>
			</div>
		</div>
		<div id="container" class="cart">
			<div class="w">
				<div class="cart-filter-bar">
					<ul class="switch-cart">
						<li class="switch-cart-item curr">
							<a href="#none"><span>全部商品</span><span class="number">2</span></a>
						</li>
						<li class="switch-cart-item ui-switchable-selected">
							<a class href="#none">
								<span>京东大药房</span>
							</a>
						</li>
					</ul>
					<div class="cart-store">
						<input id="hiddenLocationId" type="hidden" />
						<input id="hiddenLocation" type="hidden" />
						<span class="label">配送至：</span>
						<div id="jdarea">
							<div class="ui-area-wrap">
								<div class="ui-area-text-wrap">北京朝阳区三环以内</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="cart-warp">
				<div class="w">
					<div id="jd-cart">
						<div class="cart-main cart-main-new">
							<div class="cart-thead">
								<div class="column t-checkbox">
									<div class="cart-checkbox">
										<input type="checkbox" class="jdcheckbox" id="toggle-checkboxes_up" name="toggle-checkboxes" /> 全选
									</div>
								</div>
								
								<div class="column t-goods">商品</div>
								<div class="column t-props"></div>
								<div class="column t-price">价格</div>
								<div class="column t-quantity">数量</div>
								<div class="column t-sum">小计</div>
								<div class="column t-action">操作</div>

							</div>
							<div class="cart-list">
								<div class="cart-item-list" id="cart-item-list-01">
									<div class="cart-tbody" id="vender_8888">
										<div class="item-list" style="z-index: auto;">
										
											<c:forEach items="${cars}" var="car">
											<div class="item-single item-item item-select">
												<div class="item-form">
													<div class="cell p-checkbox">
														<div class="cart-checkbox">
															<!--单品-->
															<input type="checkbox" name="checkItem" data-id = "${car.id}" value="" class="jdcheckbox" />
															<span class="line-circle"></span>
														</div>
													</div>
													<div class="cell p-goods">
														<div class="goods-item">
															<div class="p-img">
																<a href="#none" target="_blank">
																	<img alt="vivo X23星芒版 ${car.product.descr }" src="/imge/${car.product.imgname}" style="width: 80px;height: 80px;"/>
																</a>
															</div>
															<div class="item-msg">
																<div class="p-name">
																	<a href="#none" target="_blank">
																		${car.product.descr }水滴屏全面屏 游戏手机 移动联通电信全网通4G手机 双卡双待
																	</a>
																</div>
															</div>
														</div>
													</div>
													<div class="cell p-props p-props-new">
														<div class="props-txt" title="星芒">颜色:星芒</div>
														<div class="props-tex" title="8GB+128GB">尺码:8GB+128GB</div>
													</div>
													<div class="cell p-price p-price-new">
														<p class="plus-switch">
															<strong>${car.product.price }</strong>
														</p>
														<div>
															<div class="clr"></div>
														</div>
														<p class="mt5" >

														</p>
														<p class="mt5" >
															<span class="pro-tiny-tip">白条12期免息</span>
														</p>
													</div>
													<div class="cell p-quantity">
														<div class="quantity-form" data-number="${car.count}">
															<a href="#none" class="decrement disable" data-id = "${car.id}">-</a>
															<input type="text" class="itxt" value="${car.count}" />
															<a href="#none" class="increment" data-id = "${car.id}">+</a>
														</div>
														<div class="ac ftx-03 quantity-txt">有货</div>
													</div>
													<div class="cell p-sum">
														<strong class = "p-total">${car.total }</strong>
														<span class="weight" data="0.54" num="1" afterprice="3498.00">0.54kg</span>
													</div>
													<div class="cell p-ops">
														<a href="#none" class="cart-remove" data-id = "${car.product.procode}">删除</a>
														<a href="javascript:void(0);" class="cart-follow">移到我的关注</a>
														<a href="javascript:void(0);" class="add-follow">加到我的关注</a>
													</div>

												</div>
												<div class="item-extra mb10">
													<div class="gift-items gift-items-new">
														<div class="gift-item">
															<a class="gift-info">【赠品】乐心智能手环</a>
															<span class="num">x1</span>
															<span class="gift-stock-state"></span>
															<a href="#neno" class="gift-price">查看价格</a>
														</div>
													</div>
												</div>
												<div class="item-line"></div>
											</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="cart-floatbar">
						<div class="ui-ceilinglamp-1" style="width: 990px;height: 52px;">
							<div class="cart-toolbar" style="width: 988px;height: 50px;">
								<div class="toolbar-wrap">
									<div class="selected-item-list hide" style="display: none;">

									</div>
									<div class="options-box">
										<div class="select-all">
											<div class="cart-checkbox">
												<input type="checkbox" id="toggle-checkboxes_down" name="toggle-checkboxes" class="jdcheckbox" /> 全选
											</div>
										</div>
										<div class="operation">
											<a href="#none" class="remove-batch">选中删除的商品</a>
											<a href="#none" class="follow-batch" style="">移到我的关注</a>
											<a href="#none" class="cleaner-opt J_clr_all">清理购物车</a>
										</div>
										<div class="clr"></div>
										<div class="toolbar-right">
											<div class="normal">
												<div class="comm-right">
													<div class="btn-area">
														<a href="javascript:void(0);" onclick="return false;" class="submit-btn"><b>去结算</b></a>
													<div class="tishi"></div>
													</div>
													<div class="price-sum">
														<div>
															<span class="txt txt-new">总价:</span>
															<span class="price sumPrice"><em>0</em></span>
														
														</div>
													</div>
													<div>
										
															<span class="amount-sum">已选择<em class="nums"></em>件商品</span>
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
		<script type="text/javascript">
$().ready(function(){
	$("[name=toggle-checkboxes]").click(function(){
		
	if($(this).prop("checked")==true){
		$("[name=checkItem]").prop("checked",true);
	}else{
		$("[name=checkItem]").prop("checked",false);
	}
		show();
	});
	$("[name=checkItem]").click(function(){
		if($(this).prop("checked")==false){
			$("[name=toggle-checkboxes]").prop("checked",false);
		}else{
			var flag=true;
			$("[name=checkItem]").each(function(){
				
				if($(this).prop("checked")==false){
					flag=false;
					return false;
				}
			})
			if(flag){
				$("[name=toggle-checkboxes]").prop("checked",true)
			}
		}
		show();
	})
	$(".cart-remove").click(function(){
		var cid = $(".cart-remove").data("id");
		var type = confirm("是否删除物品")
		if(type){
			location.href = "/jd/classController/deleteCart.do?procode="+cid;
		}
	})
	
	

	function show(){
		var total = 0;
		var zongshu = 0;
		$("[name=checkItem]").each(function(index,element){
			if($(this).prop("checked")==true){
				total =total+parseInt($(this).parent().parent().siblings(".p-sum").children(".p-total").html());
				zongshu = zongshu + parseInt($(this).parent().parent().siblings(".p-quantity").find(".itxt").val());
				$(this).parent().parent().parent().parent().css("background-color","#FFECF5");
			}else{
				$(this).parent().parent().parent().parent().css("background-color","#FFF");
			}
		})
		$(".sumPrice").html("￥"+total);	
		$(".nums").html(zongshu);
	}
	
$(".increment").click(function(){
	var buynum = parseInt($(this).siblings(".itxt").val());
		if(buynum<99){
			buynum++;
		}
		$(this).siblings(".itxt").val(buynum);
		var carId=$(this).data("id");
		var Total = $(this).parent().parent().siblings(".p-sum").children(".p-total");
		$.ajax({
			url:"/jd/classController/updateTotalIncart.do",
			type:'post',
		data:{
			id:carId,
			count:buynum
		},
		dataType:"text",
		success:function(data){
			Total.html(data);
			show();
		}
		})
		
	})
	
	
	$(".decrement").click(function(){
		var buynum =parseInt($(this).siblings(".itxt").val());
		buynum--;
		if(buynum<1){
			buynum=1;
		}
		$(this).siblings(".itxt").val(buynum); 
		var carId=$(this).data("id");
		var Total = $(this).parent().parent().siblings(".p-sum").children(".p-total");
		$.ajax({
			url:"/jd/classController/updateTotalIncart.do",
			type:'post',
		data:{
			id:carId,
			count:buynum
		},
		dataType:"text",
		success:function(data){
			Total.html(data);
			show();
		}
		})
	})
	$(".itxt").keyup(function(){
		setTimeout(setnum(),1000);
	})
	function setnum(){
		if(parseInt($(".itxt").val())<1||parseInt($(".itxt").val())>99){
			$(".itxt").val(1);
		}
	}
	$(".submit-btn").click(function(){
		var array = new Array();
		$("[name=checkItem]").each(function(index,element){
			if($(this).prop("checked")==true){
				var carid = $(this).data("id");
				var num = parseInt($(this).parent().parent().siblings(".p-quantity").find(".itxt").val());
				var obj = new Object();
				obj.id = carid;
				obj.count = num;
				array.push(obj);
			}
		});
		var msg="";
		var list = JSON.stringify(array);
		if(array.length<1){
			msg="至少选择一件商品";
			$(".tishi").html(msg);
			setTimeout(function(){
				$(".tishi").html("");
			},3000)
		}else{
			$.ajax({
				url:"/jd/orderwebController/addOrder.do",
				data:list,
				dataType:"text",
				type:"post",
				contentType:"application/json",
				success:function(data){
				window.location.href="/jd/orderwebController/showOrder.do";	
				}
			})
		}
		
	})
})
</script>
</body>
</html>