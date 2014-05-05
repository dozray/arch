<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
<link rel="stylesheet" type="text/css"
	href="../../../static/themes/redmond/jquery-ui.css">
<script type="text/javascript" src="../../../static/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../../static/js/jquery-ui-1.10.4.min.js"></script>
<script type = "text/javascript">
	$(document).ready(function() {		
        var yestoday = new Date(new Date().valueOf()-86400000);
        var dt = yestoday.toJSON().substring(0,10);
		$('#datepicker').val(dt);
		$('#datepicker' ).datepicker({dateFormat: 'yy-mm-dd'});
	});
</script>
</head>
<body>
<h2> 请选择上传文件</h2>
	<form method="post" action="/upload/to" enctype="multipart/form-data">
		<input type="text" name="name" value="" id="datepicker"/>
		<input type="file" name="file"/>
		<input type="submit"/>
	</form>
</body>
</html>