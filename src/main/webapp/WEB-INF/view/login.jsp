<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${error}
<form action="login.do" method="post">
	<table>
		<tr><td colspan="2" align="center">账户登录</td><tr>
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="userName" value=""></td>
		</tr>
		<tr>
			<td>密码:</td>
			<td><input type="password" name="password" value=""></td>
		</tr>		
		<tr>
			<td colspan="2" align="center"><input type="submit" value="提交" /><input type="reset" value="重置"></td>
		</tr>	
	</table>
</form>
</body>
</html>