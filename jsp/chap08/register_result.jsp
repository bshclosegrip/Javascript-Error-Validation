<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<html lang = 'ko'>
<html>
<head>
<meta charset="UTF-8">
<meta name = 'viewport' content = 'width=device-width, initial-scal=1.0'>
<title>register_result</title>
</head>
<body>
<div id = 'register_result'>
<%
request.setCharacterEncoding("utf-8");
String pCode = request.getParameter("pCode");
String pName = request.getParameter("pName");
int ea = Integer.parseInt(request.getParameter("ea"));
String custom = request.getParameter("custom");
String price = request.getParameter("price");
int phone = Integer.parseInt(request.getParameter("phone"));
String manager = request.getParameter("manager");
%>
<ul>
	<li>제품 코드 : <%=pCode %></li>
	<li>제품 : <%=pName %></li>
	<li>수량 : <%=ea %></li>
	<li>거래처  : <%=custom %></li>
	<li>단가  : <%=price %></li>
	<li>연락처  : <%=phone %></li>
	<li>담당자  : <%=manager %></li>
</ul>
<hr/>
<jsp:useBean id = "p" class = "chap08.Product" scope = "request"/>
<jsp:setProperty property="*" name="p"/>

<ul>
	<li>제품코드 : <%=p.getpCode() %> </li>
	<li>제품명 : <%=p.getpName() %> </li>
	<li>제품수량 : <%=p.getEa()%> </li>
	<li>거래처 : <%=p.getCustom()%>  </li>
	<li>단가 : <%=p.getPrice()%></li>	
	<li>거래처연락처 : <%=p.getPhone()%></li>	
	<li>담당자 : <%=p.getManager()%></li>	
</ul>
</div>
</body>
</html>