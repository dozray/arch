
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="zh"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="zh"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="zh"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="zh">
<!--<![endif]-->


<head>
<!-- General Metas -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit"> 
<meta name="force-rendering" content="webkit"> 
<!-- Force Latest IE rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="Web App Interface">
<meta name="author" content="Ying xian Liu">
<title>集团报表系统</title>

<link rel="stylesheet" type="text/css" href="../../static/css/style.css">
<link rel="stylesheet" type="text/css"
	href="../../static/layout/css/documentation.css">
<link rel="stylesheet" type="text/css"
	href="../../static/themes/redmond/jquery-ui.css">
<style type="text/css">
/* body {
    background: url("../../static/img/page_bg.jpg") repeat-x scroll left top #FFFFFF;
    font-family: Arial,Verdana,Tahoma,sans-serif;    
} */
#navigation {
	border-bottom: 0 none;
	background-color: #D0E5F5 !important;
	border-top: 1px solid #FFFFFF;
	padding: 2px 0px 2px 0px;
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
	cursor: pointer;
}

#accordion li:hover {
	background: #DFFFE7;
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

#logo {
	background-image: url("../../static/img/banner_may_main.png");
	/* background-repeat: no-repeat; */
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

#hd {
	position: absolute;
	top: 20px;
	font: 12px/1.5 arial, sans-serif;
	min-width: 700px;
	height: 1em;
	width: 100%;
	line-height: 1em;
	padding: 0 20px 0 0;
	text-align: right;
}
#hd a{
	text-decoration:none;
	color:#fff;
}
#hd a:hover{
color:#4CC011;
text-decoration:underline
}
#hd .hd-sep {
	margin: 0 7px;
	color: #eaeaea;
}
#fm {
	position: absolute;
	top: 30px;
	font: 12px/1.5 arial, sans-serif;	
	height: 2em;
	width: 50%;
	line-height: 2em;
	padding: 0 20px 0 0;
	text-align: right;
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
		$("#accordion").accordion();
		$( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});
	});
	/* $(document).ready(function(){
	    $(":input").click(function(){
	        alert($(this).attr("name"));
	    })
	}); */
	$(document).ready(function() {
		$("#accordion li").click(function() {
			var ap = $(this).attr("ap");
			$("#funcPg").attr("src", ap);
			
			/*
			$("#print").attr("href",ap);
			var da = ap.split("/");
			var tid=da[da.length-1];
			alert(tid);
			var st ="#"+tid;
			if($(st).html() != null){
				mtab.tabs('select',st);
			}
			else{
				mtab.tabs('add',st,"uuii");
				$(st,"#tabs").load(ap);
				 $.ajax({
					url:ap,
					type:"GET",
					complete:function(req,err){
						$(st,"#tabs").append(req.responseText);
						
					}
				}); 
			}*/
		});
		$("#dtQ").click(function(){
			$( "#dialog" ).dialog({
		      height: 200,
		      modal: true,
		      buttons: {
		          "确定": function() {
		            $( this ).dialog( "close" );
		          }
		        }
		    });
		});
		
	});
	
	function print(){		
		if (confirm('确定打印吗?')){
			alert("pirnting...");
			/* document.frames("frmPg").print();
	    	document.frames("frmPg").window.focus();
	        window.print(); */
			b = window.open();
		    b.document.open();
		    b.document.write(document.getElementById("funcPg").outerHTML);
		    b.document.execCommand('SaveAs', '123.html');
		    b.document.close();
	   }
	}
	function preview(){
		b = window.open();
	    b.document.open();
	    b.document.write(document.getElementById("funcPg").outerHTML);
	}
	
</script>

</head>
<body>
	<!-- <nav></nav>	 -->
		<div class="ui-layout-north">
			<div id="logo"
				style="height: 50px; color: #FFFFFF; padding: 2px; letter-spacing: 1px">
				<a href="http://www.lyweiye.cn/"> <img id="logoimg" border="0"
					alt="[公司首页]" src="../../static/img/banner_logo.png">
				</a>
			</div>
			<div id="hd">
				<a href="">您好admin</a> <span class="hd-sep">|</span> 
				<a href="#" target="_blank">导航</a> 
				<span class="hd-sep">|</span> 
				<a href="/logout" id="usr-logout" target="_top">注销&nbsp</a>
				
			</div>
			
			<div id="fm">
				<input type="button" value="查询" onclick="dtQuery();" id="dtQ"/>
				<input type="button" value="预览" onclick="preview();"></input>
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
			<!-- Tabs pane 
			<div id="tabs">
				<ul><li><a href="#tabs-1">Home</a></li></ul>
				<div id="tabs-1" style="font-size: 12px;">
					Event and much more... <br />
				</div>
			</div>
			-->
			<iframe id="funcPg" name="frmPg" src="/hm.htm"
				frameborder="0"  width="100%" height="100%"></iframe>

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
						<li ap="/fund/plan/">资金计划执行情况表</li>
						<li ap="/fund/balance/">资金余额表</li>
						<li ap="/fund/cap/">资金收支汇总表</li>
						<li ap="/fund/capd/">资金收支明细表</li>
						<li ap="/fund/bulkTrade/">大额收支明细表</li>						
					</ul>
				</div>
				<h3>分析图表</h3>
				<div>
					<ul>
						<li ap="/fund/fundDistrib/">集团资金分布</li>
						<li ap="/fund/cashDistrib/">现金分布</li>
						<li ap="/fund/bankDistrib/">银行存款分布</li>
						<!-- <li ap="/fund/acceptanceDistrib/">承兑分布</li> -->
					</ul>
				</div>
				<h3>系统设置</h3>
				<div>
					<ul>
						<li ap="/user/list/">用户设置</li>
						<li ap="">账套设置</li>
						<li ap="/upload/show/">报表上传</li>
						
					</ul>
				</div>
			</div>
		</div> <!-- end of content -->
	<div id="body-wrap"></div> <!-- end body-wrap -->
	<div id="dialog" title="查询窗口">
  		<p>输入查询日期</p>
  		<p>查询日期: <input type="text" id="datepicker"></p>
  		
	</div>
	
</body>
</html>