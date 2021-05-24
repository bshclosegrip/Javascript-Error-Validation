<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>submit_result</title>
</head>
<body>
<div id='submit_result'>
<h2>submit_result</h2>
<%
	/* form 태그로부터 전달 받은 파라메터를 변수에 저장 */
	request.setCharacterEncoding("utf-8");

	String mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	String register = request.getParameter("register");
	//db
%>
<ul>
	<li>아이디 : <%=mid %> </li>
	<li>암호 : <%=pwd %> </li>
	<li>회원 : <%=register %> </li>
</ul>

</div>
</body>
</html>





