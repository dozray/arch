<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ok</title>
<link type="text/css" rel="sytlesheet" href="../../static/css/layout-default.css"/>
<link type="text/css" rel="stylesheet" href="../../static/css/ztree/ztree.css"/>
<style type="text/css">	// for layout style
	html,body{
		background:	#666;
		widht:			100%;
		height:		100%;
		padding:		0;
		margin:		0;
		overflow:		auto;/* when page gets to small */
	}
	#container{
		background:	#999;
		height:		100%;
		margin:		0 auto;
		width:			100%;
		max-width:		900px;
		min-width:		700px; 
	}
	.pan{
		display:		none; /* will appear when layout inits */
	}
</style>

<script type="text/javascript" src="../../static/js/jquery-1.9.js"></script>
<script type="text/javascript" src="../../static/js/jquery-ui.js"></script>
<script type="text/javascript" src="../../static/js/layout/jquery.layout.js"></script>
<script type="text/javascript" src="../../static/js/ztree/jquery.ztree.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$('#container').layout();
	});

</script>


 
</head>
<body>
<div id="container">
	
	<div class="pane ui-layout-north">
		<span>Portal</span>
	</div>
	<div class="pane ui-layout-west" >
		<h1>asdlkfasdfkasdlfasd</h1>
	</div>
	<div class="pane ui-layout-center">
	<h1>Center</h1>	
	</div>
</div>

<div><h1>lsdfklasdflkjasdflkjsadfklj;asdfojiwertwfgwerfg98w2rtjdfsdfgsdfg</h1></div>
</body>
</html>