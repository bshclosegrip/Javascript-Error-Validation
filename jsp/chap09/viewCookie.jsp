<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeCookie</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	if(cookies != null && cookies.length>0){
		for(int i = 0; i < cookies.length; i++){
			String cName = cookies[i].getName();
			String cValue = URLDecoder.decode(cookies[i].getValue(), "utf-8");
			out.print("<li>" + cName + ": " + cValue);
		}
	}
	out.print("<li>cookie 유지시간 : " + cookies[0].getMaxAge());
%>
</body>
</html>