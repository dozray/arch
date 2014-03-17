<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="exception" value="${requestScope['javax.servlet.error.exception']}"/>


<!-- Stack trace -->
<jsp:scriptlet>
  exception.printStackTrace(new java.io.PrintWriter(out));
</jsp:scriptlet>

	<div align="center" style="margin-top:200px;">恭喜你!你来到了404页面....当前文件不存在....哈哈哈</div>
</body>
</html>