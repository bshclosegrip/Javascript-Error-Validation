<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	int a; //서블릿 클래스의 필드 a가 선언된 것임. //a는 전역형
	public void output(HttpServletResponse rep, String s){
		PrintWriter out = rep.getWriter();
		out.print(s);
		
	}
%>
<%
	a = 100;
	output(response, "박원기");
%>
</body>
</html>
