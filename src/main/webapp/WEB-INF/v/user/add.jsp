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
	ID:<sf:input path="id"/><sf:errors path="id" /><br/>
	UserName:<sf:input path="name"/><sf:errors path="name"/><br/>
	Password:<sf:input path="password"/><sf:errors path="password"/><br/>
	<input type="submit" value="添加"> 
</sf:form>
</body>
</html>