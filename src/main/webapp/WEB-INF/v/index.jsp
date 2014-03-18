<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html" charset="utf-8" http-equiv="Content-Type">
<title>Web App</title>

<link rel="stylesheet" type="text/css" href="../../static/css/style.css">
<link rel="stylesheet" type="text/css" href="../../static/layout/css/documentation.css">
<link rel="stylesheet" type="text/css" href="../../static/themes/redmond/jquery-ui.css">
<style type="text/css">
#navigation {
	border-bottom: 0 none;
	background-color: #D0E5F5 !important;
	border-top: 1px solid #FFFFFF;
	padding: 5px 5px 4px 3em;
}

#accordionHeader {
	background-color: #D0E5F5 !important;
}

#accordion li {
	font-family: monospace;
	color: black;
	clear: both;
	line-height: 18px;
	background: #DDEDFB;
	border: 1px solid #09C;
	border-radius: 6px;
	white-space: pre-wrap;
	margin: 5px 0;
	padding: 5px 20px;
}

.ray-nav {
	
}

.ray-nav ul {	
	border: 1px solid #000;
	margin: 0px, auto, 0px, auto;
}

.ray-nav ul li {
	float: left;
}

.ray-nav ul li a {
	width: 80px;
	height: 28px;
	line-height: 28px; /*  设置行距28 让文字在每行的中间 */
	background: red;
	color: #FFF; /*文字color*/
	margin: 5px, 10px;
	font-size: 12px;
	display: block; /* a 本是inline元素，不具有宽高，变为块元素后前面设置的宽高才管用 */
	text-align: center; /* 文字居中 */
	text-decoration: none; /* 去掉下划线 */
}

.ray-nav ul li a:haver {
	width: 78px;
	height: 26px;
	line-height: 28px;
	border: 1px solid red;
	color: red;
	background: #FFF
}

div.logo {
	background-image: url("../../static/img/banner_may_main.jpg");
	background-repeat: no-repeat;
	border-style: none none solid;
	height: 135px;
	width: 100%;
	left: 0;
	text-align: left;
	top: 0;	
	-moz-background-size: 100% 100%;	
	-webkit-background-size: 100% 100%;
	-o-background-size: 100% 100%;
	background-size: 100% 100%;	
}

div.func {
	border-style: none;
	color: #FFFFFF;
	/* height: 1.8em; */
	left: 0;
	margin: 0;
	padding: 0;
	position: absolute;
	top: 25px;
	width: 100%;
}

ul.titletab {
    display: inline;
    float: right;
    margin-bottom: 0;
    margin-top: 5px;
    padding-bottom: 0;
    padding-right: 0;
}

ul.titletab li.activetab {
    display: inline;
    font-weight: bold;
    list-style: none outside none;
}
ul.titletab li {
    display: inline;
    list-style: none outside none;
    margin-bottom: 0;
    margin-left: 0;
    margin-right: 0;
    padding: 0 3px;
}

/*Splitter style */
#LeftPane {
	/* optional, initial splitbar position */
	overflow: auto;
}
/*
 * Right-side element of the splitter.
*/
#RightPane {
	padding: 2px;
	overflow: auto;
	hight: 100%;
}

.ui-tabs-nav li {
	position: relative;
}

.ui-tabs-selected a span {
	padding-right: 10px;
}

.ui-tabs-close {
	display: none;
	position: absolute;
	top: 3px;
	right: 0px;
	z-index: 800;
	width: 16px;
	height: 14px;
	font-size: 10px;
	font-style: normal;
	cursor: pointer;
}

.ui-tabs-selected .ui-tabs-close {
	display: block;
}

.ui-layout-west .ui-jqgrid tr.jqgrow td {
	border-bottom: 0px none;
}

.ui-datepicker {
	z-index: 1200;
}

.rotate {
	/* for Safari */
	-webkit-transform: rotate(-90deg);
	/* for Firefox */
	-moz-transform: rotate(-90deg);
	/* for Internet Explorer */
	filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
}
</style>
<!-- REQUIRED scripts for layout widget -->
<script type="text/javascript" src="../../static/js/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="../../static/js/jquery-ui-1.10.4.min.js"></script>
<script type="text/javascript"
	src="../../static/layout/jquery.layout.js"></script>

<script type="text/javascript">
	var pageLayout;

	$(document).ready(function() {
		// create page layout
		pageLayout = $('body').layout({
			defaults : {},
			north : {
				size : "auto",
				spacing_open : 0,
				closable : false,
				resizable : false
			},
			west : {
				size : 250,
				spacing_closed : 22,
				togglerLength_closed : 140,
				togglerAlign_closed : "top",
				togglerContent_closed : "中<BR>伟<BR>业<BR>集<BR>团"/* "C<BR>o<BR>n<BR>t<BR>e<BR>n<BR>t<BR>s" */
				,
				togglerTip_closed : "Open & Pin Contents",
				sliderTip : "Slide Open Contents",
				slideTrigger_open : "mouseover"
			}
		});
	});

	$(function() {
		$("#accordion").accordion();
		var mtab = jQuery('#tabs', '#RightPane').tabs({
							add : function(e, ui) {
								// append close thingy
								$(ui.tab).parents('li:first')
										.append(
												'<span class="ui-tabs-close ui-icon ui-icon-close" title="Close Tab"></span>')
										.find('span.ui-tabs-close')
										.show()
										.click(
												function() {
													matab
															.tabs(
																	'remove',
																	$('li',
																			maintab)
																			.index(
																					$(
																							this)
																							.parents(
																									'li:first')[0]));
												});
								// select just added tab
								mtab.tabs('select', '#' + ui.panel.id);
							}
						});
	});
</script>

</head>
<body>

	<div class="ui-layout-north">
		<div id="logo" style="height:66px; color: #FFFFFF; padding: 2px; letter-spacing: 1px">		
			<a href="http://www.lyweiye.cn/"> <img id="logoimg" border="0" alt="[公司首页]"
				src="../../static/img/banner_logo.png">
			</a>
		</div>
		<div class="func">
			<ul class="titletab">
				<li  class="activetab"><a href="1">${user}</a></li>
				<li  class="activetab"><a href="2">|</a></li>
				<li  class="activetab"><a href="a">安全</a></li>
				<li  class="activetab"><a href="b">|</a></li>
				<li  class="activetab"><a href="c">退出</a></li>
			</ul>
		</div>
		<div id="navigation">
			<!-- 
		<A href="index.cfm">HOME</A>
		<A href="demos.cfm">DEMOS</A>
		<A href="downloads.cfm">DOWNLOADS</A>
		<A href="documentation.cfm" class="current">DOCUMENTATION</A>
		<A href="tips.cfm">TIPS</A>
		<A href="plugin.cfm">PLUGIN</A>
		<A href="issues.cfm">ISSUES</A>
		<A target="_blank" href="http://groups.google.com/group/jquery-ui-layout">DISCUSSION</A>
		 -->
		</div>
	</div>

	<div id="RightPane" class="ui-layout-center content">
		<!-- Tabs pane -->
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">Home</a></li>
			</ul>

			<div id="tabs-1" style="font-size: 12px;">
				Event and much more... <br />
			</div>
		</div>

		<!-- 
	<iframe id="funcPage" name="main"  src="" frameborder="0" scrolling="no"   width="100%" height="100%" ></iframe>
	 -->
	</div>
	<!--  end of RightPane -->

	<!--
	=======================
	*	TABLE OF CONTENTS  *
	=======================
-->
	<div class="ui-layout-west" style="display: none;">
		<div id="accordionHeader" class="header">业务与功能</div>
		<div id="accordion" class="ui-layout-content" style="overflow: auto;">
			<h3>集团数据报表</h3>
			<div>
				<ul>
					<li><a href="/fund/balance">余额表</a></li>
					<li><a href="/fund/cap">发生额度</a></li>
					<li><a href="/fund/capd">发生额度明细</a></li>
					<li><a href="/fund/innerBulk">大额交易</a></li>
				</ul>
			</div>
			<h3>分析图表</h3>
			<div>
				<ul>
					<li><a href="/fund/fundDistrib">集团资金分布</a></li>
					<li><a href="/fund/cashDistrib">现金分布</a></li>
					<li><a href="/fund/bankDistrib">银行存款分布</a></li>
					<li><a href="/fund/acceptance">承兑分布</a></li>
				</ul>
			</div>
			<h3>系统设置</h3>
			<div>
				<ul>
					<li><a href="">用户设置</a></li>
					<li><a href="#Drop-Downs">账套设置</a></li>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>