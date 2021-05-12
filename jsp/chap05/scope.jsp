<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name = 'viewport' content = 'width=device-width, initial-scal=1.0'>
<title>scope</title>
</head>
<body>
<div id = 'scope'>
<%
application.setAttribute("mid", "app hong");
session.setAttribute("mid", "session hong");
request.setAttribute("mid", "req hong");
%>
<input type = 'button' value = '60'
	onclick = "location.href='scope_check.jsp'">
</div>
</body>
</html>