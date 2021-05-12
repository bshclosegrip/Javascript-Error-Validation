<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scope_check</title>
</head>
<body>
<ul>
	<li><%=application.getAttribute("mid") %></li>
	<li><%=session.getAttribute("mid") %></li>
	<li><%=request.getAttribute("mid") %></li>
</ul>
</body>
</html>