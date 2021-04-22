<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>hap_result</title>
<body>
<div id = 'hap_result'>
<h2>hap_result</h2>
<%
	int pwd1 = Integer.parseInt(request.getParameter("pwd1"));
	int pwd2 = Integer.parseInt(request.getParameter("pwd2"));
	int hap = pwd1 + pwd2;
	// db connect
%>
<ul>
	<li>수1 : <%=pwd1 %></li>
	<li>수2 : <%=pwd2 %></li>
	<li>합계 : <%=hap %></li>
	
</ul>
</div>
</body>
</html>
