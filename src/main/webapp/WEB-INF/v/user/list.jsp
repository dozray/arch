<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="add">添加</a><br/>
<%-- <table>  
    <tr><th>second</th>  
    <th>second</th></tr>  
    <c:forEach var="i" begin="1" end="20" step="1">  
    <tr><td><c:out value="${i}"/></td></tr>  
   </c:forEach>  
</table>  --%>

<table border="1">
	<tr>		
		<th>用户编号</th>
		<th>用户名称</th>
		<th>电话</th>
		<th>备注</th>
	</tr>
	<c:forEach items="${users}" var="um">
		<tr>			
			<td>${um.value.id}</td>
			<td>${um.value.userName}</td>
			<td>${um.value.phone}</td>
			<td>${um.value.remark}</td>
		</tr>	
	</c:forEach>	
</table>
</body>
</html>