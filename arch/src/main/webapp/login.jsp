<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function test(){
		alert(document.getElementById("myForm").getAttribute("action"));
	}
</script>
  </head>
  
  <body>
  	<form action="j_spring_security_check" id="myForm" method="post">
  		<table>
  			<tr>
  				<td>用户：</td>
  				<td><input type="text" name="j_username"/></td>
  			</tr>
  			<tr>
  				<td>密码：</td>
  				<td><input type="password" name="j_password"/></td>
  			</tr>
  			<tr>
  				<td><input name="reset" type="reset"/></td>
  				<td><input type="submit" onclick="test()" name="submit"/></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
