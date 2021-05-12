<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name = 'viewport' content = 'width=device-width, initial-scal=1.0'>
<title>dynamic_sub</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	out.print("<li>name : " + name);
	out.print("<li>age : " + age);
%>
</body>
</html>