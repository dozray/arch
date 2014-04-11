<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<sf:form method="post" modelAttribute="user" >
	编&nbsp;&nbsp;号:<sf:input path="code"/><sf:errors path="code" /><br/>
	用户名:<sf:input path="userName"/><sf:errors path="userName"/><br/>
	密&nbsp;&nbsp;码:<sf:password path="password"/><sf:errors path="password"/><br/>
	电&nbsp;&nbsp;话:<sf:input path="phone"/><sf:errors path="phone"/><br/>
	备&nbsp;&nbsp;注:<sf:input path="remark"/><sf:errors path="remark"/><br/>
	<input type="submit" value="添加"> 
</sf:form>
</body>
</html>