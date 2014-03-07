<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>App Login Entry</title>
 <link rel="stylesheet" href="static/login/base.css">
</head>
<body>
	${error}
	<div>
	<form action="/svc/login.do" method="post">
		<table>
			<tr>
				<td colspan="2" align="center">账户登录</td>
			<tr>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="userName" value=""></td>
			</tr>
			<tr>
				<td>密    码:</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交" /><input
					type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="about">
			<p class="about-links">
      			<a href="" target="_parent" title="升级IE到IE9+" >IE版本过低</a>      		
      			<a href="static/ChromeframeEnterprise.msi" target="_parent" title="安装IE插件">插件安装</a> 
    		</p>
			<p class="about-author">
      			&copy; 2014&ndash;2015 <a href="http://www.lyweiye.com" target="_blank">中伟业控股(集团)有限公司</a> -
      		<a href="http://www.lyweiye.com/license" target="_blank">License</a><br>
      		Original Dev by <a href="" target="_blank">Liu Yingxian</a>
    		</p>
	</div>
</body>
</html>